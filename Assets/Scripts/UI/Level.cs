using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Level : MonoBehaviour {
	public Text levelUp;
	public Text levelDown;
	public Text upPower;
	public Text upEarnnings;
	public Text downPower;
	public Text downEarnning;

	// Use this for initialization
	void OnEnable () {
		int curLevel = PlayerPrefs.GetInt ("level", 1);
		levelUp.text = curLevel.ToString ();
		levelDown.text = (curLevel+1).ToString ();
		upPower.text = "+" + (curLevel - 1) * 3 + "% POWER";
		upEarnnings.text = "+" + (curLevel - 1) * 3 + "% $EARNNINGS";
		downPower.text = "+" + (curLevel) * 3 + "% POWER";
		downEarnning.text = "+" + (curLevel) * 3 + "% $EARNNINGS";
	}

	public void OnBackBtn(){
		transform.parent.gameObject.SetActive (false);
	}

}
