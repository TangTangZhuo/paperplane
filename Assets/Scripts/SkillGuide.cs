using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class SkillGuide : MonoBehaviour {
	public GameObject power;

	void OnEnable(){
		GameObject go = Instantiate (power, transform);
		go.transform.GetComponent<Button> ().onClick.AddListener (()=>{
			gameObject.SetActive(false);
			PlayerPrefs.SetInt("SkillGuide",1);
		});
	}

}
