using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using DG.Tweening;

public class Shop : MonoBehaviour {
	public GameObject skill;
	public GameObject shop;
	public GameObject shop_camera;
	public GameObject transition;
	public Material personMat;

	public Texture2D[] textures_black;
	public Texture2D[] textures_yellow;
	public Texture2D[] textures_write;
	//根据解锁情况设置按钮可点击状态
	public Button[] cloths_btn;
	//皮肤图片，区别于解锁未解锁
	Image[] cloths_image;
	//购买皮肤按钮
	Button[] puraches_btn;
	//皮肤价格
	Text[] price_text;
	int[] price_int;
	//解锁状态
	bool[] unlockState;
	//装已解锁的皮肤，随机使用
	List<int> unlockSkin;

	int skinCount = 0;
	void Start () {		
		skinCount = textures_black.Length;
		InitAll ();
		unlockSkin = new List<int> ();
	}

	/// <summary>
	/// 初始化数组
	/// </summary>
	void InitClothImage(){
		cloths_image = new Image[skinCount];
		for(int i=0;i<skinCount;i++){
			cloths_image [i] = cloths_btn [i].transform.Find("Image").GetComponent<Image> ();
		}
	}

	void InitPurachesBtn(){
		puraches_btn = new Button[skinCount];
		for (int i = 1; i < skinCount; i++) {
			puraches_btn [i] = cloths_btn [i].transform.Find ("Button").GetComponent<Button>();
		}
	}

	void InitPrice(){
		price_text = new Text[skinCount];
		for (int i = 1; i < skinCount; i++) {
			price_text [i] = puraches_btn [i].transform.Find ("Text").GetComponent<Text> ();
		}
	}

	void InitLock(){
		unlockState = new bool[skinCount];
		PlayerPrefs.SetInt ("unlockcloth0", 1);
		for (int i = 0; i < skinCount; i++) {
			unlockState [i] = (PlayerPrefs.GetInt ("unlockcloth" + i, 0) == 1);
		}
	}

	void InitSelect(){
		int skinIndex = PlayerPrefs.GetInt ("skinIndex", 0);
		cloths_btn [skinIndex].GetComponent<Image> ().color = new Color (1, 1, 1, 1);
	}
		
	void InitPriceInt(){
		price_int = new int[] {
			50,
			50,
			100,
			100,
			100,//5
			100,
			150,
			150,
			150,
			150,//10
			200,
			200,
			200,
			200,
			250,//15
			250,
			250
		};
	}

	void InitAll(){
		InitClothImage ();
		InitPurachesBtn ();
		InitPrice ();
		InitPriceInt ();
		InitLock ();
		InitSelect ();
	}

	/// <summary>
	/// 更新UI信息
	/// </summary>
	void UpdateClothBtn(){
		for (int i = 0; i < skinCount; i++) {			
			cloths_btn [i].interactable = unlockState [i];
		}
	}

	void UpdateClothImage(){
		for (int i = 0; i < skinCount; i++) {
			if (unlockState [i]) {
				cloths_image [i].color = new Color (1, 1, 1, 1);
				unlockSkin.Add (i);
			} else {
				cloths_image [i].color = new Color (1, 1, 1, 0.5f);
			}
		}
	}

	void UpdatePrice(){
		for (int i = 1; i < skinCount; i++) {
			price_text [i].text = price_int [i].ToString ();
		}
	}

	void UpdatePurchaseBtn(){
		int diamond = PlayerPrefs.GetInt ("diamond", 0);
		for (int i = 1; i < skinCount; i++) {
			if (unlockState [i]) {
				puraches_btn [i].gameObject.SetActive (false);
			} else {				
				puraches_btn[i].interactable = diamond >= price_int [i];
			}
		}
	}


	public void UpdateUI(){
		UpdateClothBtn ();
		UpdateClothImage ();
		UpdatePrice ();
		UpdatePurchaseBtn ();
	}

	/// <summary>
	/// 按钮点击处理
	/// </summary>
	public void OnRandomBtn(){
		int skinIndex = PlayerPrefs.GetInt ("skinIndex", 0);
		cloths_btn [skinIndex].GetComponent<Image> ().color = new Color (1, 1, 1, 0);
		int i = Random.Range(0,3);
		Texture2D[] textures_temp;
		if (i == 0) {
			textures_temp = textures_black;
		}if (i == 1) {
			textures_temp = textures_write;
		} else {
			textures_temp = textures_yellow;
		}
		int tempIndex = unlockSkin [(Random.Range (0, unlockSkin.Count))];
		personMat.SetTexture ("_MainTex", textures_temp [tempIndex]);
		PlayerPrefs.SetInt ("skinIndex", skinIndex);

	}

	public void OnClothBtn(int index){
		int skinIndex = PlayerPrefs.GetInt ("skinIndex", 0);
		cloths_btn [skinIndex].GetComponent<Image> ().color = new Color (1, 1, 1, 0);
		personMat.SetTexture ("_MainTex", textures_write [index]);
		cloths_btn [index].GetComponent<Image> ().color = new Color (1, 1, 1, 1);
		PlayerPrefs.SetInt ("skinIndex", index);
	}

	public void OnPurchaseBtn(int index){
		bool success = Diamond.Instance.UseDiamond (price_int [index]);
		if (success) {
			int skinIndex = PlayerPrefs.GetInt ("skinIndex", 0);
			cloths_btn [skinIndex].GetComponent<Image> ().color = new Color (1, 1, 1, 0);
			PlayerPrefs.SetInt ("unlockcloth"+index, 1);
			InitAll ();
			UpdateUI ();
			OnClothBtn (index);
			PlayerPrefs.SetInt ("skinIndex", index);
		}
	}

	public void OnChangeColorBtn(int color){
		int skinIndex = PlayerPrefs.GetInt ("skinIndex", 0);
		if (color == 1) {
			personMat.SetTexture ("_MainTex", textures_black [skinIndex]);
		} else if (color == 2) {
			personMat.SetTexture ("_MainTex", textures_yellow [skinIndex]);
		} else {
			personMat.SetTexture ("_MainTex", textures_write [skinIndex]);
		}
	}

	/// <summary>
	/// 场景切换
	/// </summary>
	public void OnShopBtn(){
		skill.SetActive (false);
		shop.SetActive (true);
		shop_camera.SetActive (true);
		Transition ();
		UpdateUI ();
	}

	public void OnBackBtn(){
		skill.SetActive (true);
		shop.SetActive (false);
		shop_camera.SetActive (false);
		Transition ();
	}

	void Transition(){
		transition.SetActive (true);
		Image transitionImage = transition.GetComponent<Image> ();
		transitionImage.DOColor (new Color (1, 1, 1, 0), 0.5f).OnComplete (()=>{
			transitionImage.color = Color.white;
			transition.SetActive(false);
		});
	}
}
