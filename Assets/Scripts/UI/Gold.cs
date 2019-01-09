using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


public class Gold : MonoBehaviour {
	public Text gold;

	static Gold instance;
	public static Gold Instance
	{
		get { return instance; }
	}
	private void Awake()
	{
		instance = this;
	}

	void Start(){	
		//GetGold (9999999);	
		UpdateGold();
	}
		
	public void GetGold (int number){
		StartCoroutine (GoldAdd(number));
	}

	IEnumerator GoldAdd(int number){
		int curGold = PlayerPrefs.GetInt ("gold", 0);
		int targetGold = curGold + number;
		PlayerPrefs.SetInt ("gold", targetGold);
		yield return new WaitForSeconds (1);
		while (true) {			
			curGold +=number/30;
			if (curGold > targetGold) {				
				gold.text = "$ "+ PlayerPrefs.GetInt ("gold", 0);;
				yield break;
			}
			gold.text = "$ "+curGold;
			yield return null;
		}
	}

	//使用金币，更新UI及存储，不够则弹出提示,返回购买状态
	public bool UseGold(int number){
		int curGold = PlayerPrefs.GetInt ("gold", 0);
		if (curGold >= number) {
			curGold -= number;
			gold.text = "$ "+curGold;
			PlayerPrefs.SetInt ("gold", curGold);
			return true;
		} else {
			TipPop.GenerateTip ("Not enough Gold", 1f);
			return false;
		}
	}

	//刷新钻石信息
	public void UpdateGold(){
		int curGold = PlayerPrefs.GetInt ("gold", 0);
		gold.text = "$ "+ curGold;
	}
}
