using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using UnityEngine.UI;

public class FlyDiamond1 : MonoBehaviour {
	public Transform flyGold;
	public Transform generatePos;
	public Transform targetPos;
	public Transform goldText;

	static FlyDiamond1 instance;
	public static FlyDiamond1 Instance{
		get { return instance; }
	}   
	private void Awake()
	{
		instance = this;
	}

	public void FlyGoldGenerate(Transform tarPos){
		for (int numr = 0; numr < 1; numr++) {
			Vector3 goldPostion = generatePos.position;
			GenerateFlyGoldWithPos (goldPostion,Random.Range(-6,-4),tarPos);
		}

//		for (int numl = 0; numl < 1; numl++) {
//			Vector3 goldPostion = generatePos.position+new Vector3(Random.Range(-200,-100),Random.Range(-200,200),0);
//			GenerateFlyGoldWithPos (goldPostion,Random.Range(4,6),tarPos);
//		}
	}


	void GenerateFlyGoldWithPos(Vector3 goldPo,float offsetV3X,Transform tarPos){
		Vector3 goldPostion = goldPo;

		float offsetV3Y = Random.Range(-35,-25);
		float offsetTime = Random.Range(0.1f,1);
		Vector3 goldRotation = flyGold.rotation.eulerAngles+new Vector3(0,0,Random.Range(0,360));

		Transform flygold = Transform.Instantiate (flyGold, goldPostion, Quaternion.Euler (goldRotation),transform);
		Vector3 targetV3 = tarPos.position - goldPostion;
		Vector3 offsetV3 = new Vector3 (offsetV3X, offsetV3Y, 0);

		flyGold.DORotate (transform.eulerAngles, Random.Range (1.0f, 1.5f),RotateMode.Fast).OnComplete (()=>{
			goldText.DOScale(1.5f,0.2f).OnComplete(()=>{
				goldText.DOScale(1.3f,0.1f);
			});
		});
		flygold.DOBlendableMoveBy (targetV3-offsetV3, Random.Range(1.5f,2.5f)).OnComplete (() => {			
			Destroy(flygold.gameObject);
		}).SetEase(Ease.InOutQuart);
		flygold.GetComponent<Image> ().DOColor (new Color(1,1,1,0), 1.5f).SetDelay(1);
		flygold.DOBlendableMoveBy (offsetV3, offsetTime);

	}

	public void SettleFinish(){		
		FlyGoldGenerate (targetPos);
	}

}
