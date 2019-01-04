using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using UnityEngine.UI;

public class Pointer : MonoBehaviour {
	bool onStartClick = false;
	Image image;
	IEnumerator PointerRorate(){
		while (true) {
			if (onStartClick) {				
				yield break;
			}
//			Vector3 euler = transform.eulerAngles;
//			transform.DORotate (new Vector3 (euler.x, 89, euler.z), 1, RotateMode.Fast).OnComplete (()=>{
//				transform.DORotate (new Vector3 (euler.x, -89, euler.z), 1, RotateMode.Fast).SetEase(Ease.Linear);
//			}).SetEase(Ease.Linear);
			image = GetComponent<Image>();
			image.DOFillAmount (1, 1).OnComplete (()=>{
				image.DOFillAmount (0, 1).SetEase(Ease.Linear);
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
		PlaneController.Instance.shootForce = image.fillAmount;
		transform.DOKill (false);

	}

	void OnEnable(){
		StartCoroutine (PointerRorate ());
	} 
}
