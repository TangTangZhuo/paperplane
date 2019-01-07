using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Skill : MonoBehaviour {
	public Text power_Price_text;
	public Text power_Level_text;
	int power_price;
	int power_level;
	public Text flip_price_text;
	public Text flip_Level_text;
	int flip_price;
	int flip_level;
	public Text offline_price_text;
	public Text offline_Level_text;
	int offline_price;
	int offline_level;

	int gold;

	public Button powerBtn;
	public Button flipBtn;
	public Button offlineBtn;

	Gold gold_C;

	// Use this for initialization
	void Start () {
		UpdateText ();
		gold_C = Gold.Instance;
	}

	public void OnPowerBtn(){
		gold_C.UseGold (power_price*3);
		gold -= power_price*3;
		PlayerPrefs.SetInt ("gold", gold);
		power_level++;
		power_price = (int)(power_price*1.05f);
		PlayerPrefs.SetInt ("power_level", power_level);
		PlayerPrefs.SetInt ("power_price", power_price);
		power_Level_text.text = (power_level).ToString ();
		power_Price_text.text = (power_price*3).ToString ();
		UpdateButton ();
	}

	public void OnFlipBth(){
		gold_C.UseGold (flip_price*3);
		gold -= flip_price*3;
		PlayerPrefs.SetInt ("gold", gold);
		flip_level++;
		flip_price = (int)(flip_price*1.05f);
		PlayerPrefs.SetInt ("flip_level", flip_level);
		PlayerPrefs.SetInt ("flip_price", flip_price);
		flip_Level_text.text = (flip_level).ToString ();
		flip_price_text.text = (flip_price*3).ToString ();
		UpdateButton ();
	}

	public void OnOfflineBtn(){
		gold_C.UseGold (offline_price*3);
		gold -= offline_price*3;
		PlayerPrefs.SetInt ("gold", gold);
		offline_level++;
		offline_price = (int)(offline_price*1.05f);
		PlayerPrefs.SetInt ("offline_level", offline_level);
		PlayerPrefs.SetInt ("offline_price", offline_price);
		offline_Level_text.text = (offline_level).ToString ();
		offline_price_text.text = (offline_price*3).ToString ();
		UpdateButton ();
	}

	public void UpdateText(){
		flip_price = PlayerPrefs.GetInt ("flip_price", 314);
		offline_price = PlayerPrefs.GetInt ("offline_price", 200);
		power_price = PlayerPrefs.GetInt ("power_price", 281);
		flip_level = PlayerPrefs.GetInt ("flip_level", 1);
		offline_level = PlayerPrefs.GetInt ("offline_level", 1);
		power_level = PlayerPrefs.GetInt ("power_level", 1);
		flip_Level_text.text = flip_level.ToString ();
		flip_price_text.text = (flip_price*3).ToString ();
		offline_Level_text.text = offline_level.ToString ();
		offline_price_text.text = (offline_price*3).ToString ();
		power_Level_text.text = power_level.ToString ();
		power_Price_text.text = (power_price*3).ToString ();
		UpdateButton ();
	}

	public void UpdateButton(){
		gold = PlayerPrefs.GetInt ("gold", 0);
		flipBtn.interactable = (gold >= flip_price*3);
		powerBtn.interactable = (gold >= power_price*3);
		offlineBtn.interactable = (gold >= offline_price*3);
	}
}
