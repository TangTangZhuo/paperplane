using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Diamond3D : MonoBehaviour {
	DiamondGenerate diamond;
	// Use this for initialization
	void Start () {
		diamond = GameObject.Find ("DiamondGenerate").GetComponent<DiamondGenerate> ();
	}

	void OnTriggerEnter(Collider coll){
		if (coll.name == "plane") {
			diamond.GetDiamond ();
			Destroy (gameObject);
		}
	}
}
