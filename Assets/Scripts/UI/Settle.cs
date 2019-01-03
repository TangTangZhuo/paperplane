using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Together;

public class Settle : MonoBehaviour {
	public Text gold;
	public Button doublegold;

	PlaneController plane;

	void OnEnable () {
		plane = PlaneController.Instance;
		UpdateText ();
	}
	
	void UpdateText(){
		gold.text = "$" + plane.goldClaim;
		UpdateButton ();
	}

	void UpdateButton(){
		if (TGSDK.CouldShowAd (TZ_TGSDK.doubleID)) {
			doublegold.interactable = true;
		} else {
			doublegold.interactable = false;
		}
	}

	public void OnClaimBtn(){
		FlyDiamond.Instance.SettleFinish ();
		Gold.Instance.GetGold (plane.goldClaim);
		plane.skill.UpdateText ();
		gameObject.SetActive (false);
	}

	public void OnDoubleBtn(){
		if (TGSDK.CouldShowAd (TZ_TGSDK.doubleID)) {
			bool reward = false;
			TGSDK.ShowAd (TZ_TGSDK.doubleID);
			TGSDK.AdCloseCallback = (string obj) => {
				if(reward){
					FlyDiamond.Instance.SettleFinish ();
					Gold.Instance.GetGold (plane.goldClaim * 2);
					plane.skill.UpdateText ();
					gameObject.SetActive (false);
				}
			};
			TGSDK.AdRewardSuccessCallback = (string obj) => {
				reward = true;
			};
		}

	}
}
