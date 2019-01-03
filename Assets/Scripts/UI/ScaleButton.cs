using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using UnityEngine.UI;

public class ScaleButton : MonoBehaviour {

	void Start(){
		GetComponent<Button> ().onClick.AddListener (OnButtonClick);
	}

	public void OnButtonClick(){
		MultiHaptic.HapticMedium ();
		transform.DOScale (1.1f, 0.15f).OnComplete (()=>{
			transform.DOScale (1f, 0.15f);
		}).SetEase(Ease.InBack);
	}
}
