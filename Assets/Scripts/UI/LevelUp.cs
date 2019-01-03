using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class LevelUp : MonoBehaviour {
	public Text level;
	public Text power;
	public Text earnnings;

	void OnEnable () {
		int curlevel = PlayerPrefs.GetInt ("level", 1);
		level.text = curlevel.ToString ();
		power.text = "+" + (curlevel - 1) * 3 + "% POWER";
		earnnings.text = "+" + (curlevel - 1) * 3 + "% $EARNNINGS";
	}
	
	public void OnConfirmBtn(){
		gameObject.SetActive (false);
	}
}
