using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Together;

public class TZ_TGSDK : MonoBehaviour {
	#if UNITY_IOS
	public static string doubleID = "6ambeszqFzzs72MUbbi";
	string appID = "zB32A5JjJ8o8YX19B7L9";

	#elif UNITY_ANDROID
	public static string doubleID = "";
	public static string reviveID = "";
	public static string turnTableID = "";
	public static string turnAgainID = "";
	string appID = "";

	#endif
	static TZ_TGSDK instance;
	public static TZ_TGSDK Instance{
		get{return instance;}
	}

	void Awake(){
		instance = this;

		TGSDK.Initialize (appID);
		TGSDK.PreloadAd ();
		TGSDK.PreloadAdFailedCallback = (string obj) => {
			TGSDK.PreloadAd ();
		};
	}		

}
