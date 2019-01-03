using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using DG.Tweening;

public class DistancePoint : MonoBehaviour {
	public Text meter;
	// Use this for initialization
	void OnEnable () {	
		transform.DOPunchPosition (Vector3.down * 100, 1, 5, 1, false);
		transform.position = Camera.main.WorldToScreenPoint (PlaneController.Instance.transform.position)+new Vector3(200,100,0);
		meter.text = ((int)(PlaneController.Instance.curDistance)).ToString();
	}

}
