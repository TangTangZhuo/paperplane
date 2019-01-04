using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GuideBack : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}

	public void OnBackBtn(){
		transform.parent.gameObject.SetActive (false);
		Time.timeScale = 1;
	}
}
