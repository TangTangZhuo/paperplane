using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class Pointer : MonoBehaviour {

	IEnumerator ien;

	bool onStartClick = false;
	// Use this for initialization
	void Start () {
		ien = PointerRorate ();
	}
	
	IEnumerator PointerRorate(){
		while (true) {
			if (onStartClick) {
				yield break;
			}
			transform.DORotate (new Vector3 (0, 89, 0), 1, RotateMode.Fast).OnComplete (()=>{
				transform.DORotate (new Vector3 (0, -89, 0), 1, RotateMode.Fast).SetEase(Ease.Linear);
			}).SetEase(Ease.Linear);
			yield return new WaitForSeconds(2);
		}
	}

	public void StartPoint(){
		onStartClick = false;
		StartCoroutine (ien);
	}

	public void StopPoint(){
		onStartClick = true;
		transform.DOKill (false);
	}
}
