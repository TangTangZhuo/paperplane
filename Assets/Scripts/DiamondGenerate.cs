using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DiamondGenerate : MonoBehaviour {
	public Transform plane;
	public GameObject diamond;
	public PlaneController planeCon;
	public GameObject diamondPS;
	public Rigidbody planeRig;

	void Start () {
		planeCon = PlaneController.Instance;
		StartCoroutine (GenerateDiamond ());
	}
	
	void Update () {
		
	}

	public void GetDiamond(){
		GameObject go = Instantiate (diamondPS, plane.position, Quaternion.identity);
		Destroy (go, 1);
		Diamond.Instance.GetDiamond (1);
		FlyDiamond1.Instance.SettleFinish ();
	}


	IEnumerator GenerateDiamond(){
		while (true) {
			if (planeCon.start) {
				yield return new WaitForSeconds (Random.Range (3f, 5f));

				if (planeCon.findDiamond) {
					Instantiate (diamond, plane.position + new Vector3 (0, 0, Random.Range (-10f, -20f)),diamond.transform.rotation,transform);	
				} else {
					Instantiate (diamond, plane.position + new Vector3 (0, planeRig.velocity.y/2-0.3f, -20),diamond.transform.rotation,transform);
				}
			}
			yield return null;
		}
	}
}
