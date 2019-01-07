using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class LevelUp : MonoBehaviour {
	public Text level;
	public Text power;
	public Text earnnings;
	public GameObject levelUpPs;

	void OnEnable () {
		int curlevel = PlayerPrefs.GetInt ("level", 1);
		level.text = curlevel.ToString ();
		power.text = "+" + (curlevel - 1) * 3 + "% POWER";
		earnnings.text = "+" + (curlevel - 1) * 3 + "% $EARNNINGS";
		Invoke ("ShowPs", 0.8f);
		Invoke ("HidePs", 2);
	}

	void ShowPs(){
		levelUpPs.SetActive (true);
	}

	void HidePs(){
		levelUpPs.SetActive (false);
	}
	
	public void OnConfirmBtn(){
		levelUpPs.SetActive (false);
		gameObject.SetActive (false);
	}
}
