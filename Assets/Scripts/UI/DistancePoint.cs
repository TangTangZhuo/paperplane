using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using DG.Tweening;

public class DistancePoint : MonoBehaviour {
	public Text meter;
	public GameObject maxIcon;
	// Use this for initialization
	void OnEnable () {	
		transform.DOPunchPosition (Vector3.down * 100, 1, 5, 1, false);
		transform.position = Camera.main.WorldToScreenPoint (PlaneController.Instance.realPlane.transform.position)+new Vector3(200,100,0);
		meter.text = ((int)(PlaneController.Instance.curDistance)).ToString();
		int max = PlayerPrefs.GetInt ("max", 0);
		if (PlaneController.Instance.curDistance > max) {
			PlaneController.Instance.MaxParticle (transform);
			maxIcon.SetActive (true);
		}
	}

}
