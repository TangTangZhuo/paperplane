using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Top : MonoBehaviour {
	public Text level_text;
	int level;
	public Text target_text;
	int target;
	public Text cur_text;
	int cur;
	public Text max_Text;
	int max;
	public Slider slider;

	public GameObject levelAddition;
	public GameObject levelUp;

	PlaneController planeController;

	// Use this for initialization
	void Start () {
		planeController = PlaneController.Instance;
		UpdateText ();
	}

	void Update(){
		UpdateCurDistance ();
	}
	
	void UpdateText(){
		level = PlayerPrefs.GetInt ("level", 1);
		target = PlayerPrefs.GetInt ("target", 1000);
		max = PlayerPrefs.GetInt ("max", 0);
		cur = PlayerPrefs.GetInt ("cur", 0);
		level_text.text = level.ToString ();
		cur_text.text = cur.ToString ();
		max_Text.text = max.ToString ();
		target_text.text = target.ToString ();
		if (max == 0) {
			max_Text.transform.parent.gameObject.SetActive (false);
		} else {
			max_Text.transform.parent.gameObject.SetActive (true);
		}
		InitSlider ();
	}

	void UpdateCurDistance(){
		slider.value = planeController.curDistance;
		cur = (int)planeController.curDistance;
		cur_text.text = cur.ToString ();
	}

	public void InitSlider(){
		slider.minValue = 0;
		slider.maxValue = target;
		slider.value = max;
		max_Text.transform.parent.position = cur_text.transform.parent.position;
		slider.value = 0;
	}

	public void EndUpdate(){
		if (cur >= max) {
			max = cur;
			PlayerPrefs.SetInt ("max", max);
		}
		if (cur >= target) {
			PlayerPrefs.SetInt ("level", PlayerPrefs.GetInt ("level", 1) + 1);
			int outLvl = (int)((cur - target + 1000) / 1000); 
			target += 1000 * outLvl;
			PlayerPrefs.SetInt ("target", target);
			levelUp.SetActive (true);
		}

		UpdateText ();
	}

	public void OnLevelBtn(){
		levelAddition.SetActive (true);
	}
}
