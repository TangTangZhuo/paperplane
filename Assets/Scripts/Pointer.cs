using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class Pointer : MonoBehaviour {
	bool onStartClick = false;
	
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
		StartCoroutine (PointerRorate());
	}

	public void StopPoint(){
		onStartClick = true;
		transform.DOKill (false);
		if (transform.eulerAngles.y > 180) {
			PlaneController.Instance.shootRotation = ((transform.eulerAngles.y - 360) * 2 / 9);
		} else {
			PlaneController.Instance.shootRotation = (transform.eulerAngles.y * 2 / 9);
		}

	}
}
