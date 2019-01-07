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
			
			yield return new WaitForSeconds (Random.Range (1f, 3f));
			if (planeCon.start) {
				if (planeCon.findDiamond) {					
					Instantiate (diamond, plane.position + new Vector3 (0, 0, Random.Range (-10f, -20f)), diamond.transform.rotation, transform);
					yield return new WaitForSeconds (0.5f);
					Instantiate (diamond, plane.position + new Vector3 (Random.Range(-5,5), 0, Random.Range (-10f, -20f)), diamond.transform.rotation, transform);	
					yield return new WaitForSeconds (0.5f);
					Instantiate (diamond, plane.position + new Vector3 (Random.Range(-5,5), 0, Random.Range (-10f, -20f)), diamond.transform.rotation, transform);	

				} else {	
					float offset = 0;
					if (planeCon.flipDiamond) {
						offset = 0.5f;
					} else {
						offset = 0;
					}
					Instantiate (diamond, plane.position + new Vector3 (0, planeRig.velocity.y / 2 - 0.3f+offset, -20), diamond.transform.rotation, transform);
					yield return new WaitForSeconds (0.5f);
					Instantiate (diamond, plane.position + new Vector3 (Random.Range(-5,5), planeRig.velocity.y / 2 - 0.3f+offset, -20), diamond.transform.rotation, transform);
					yield return new WaitForSeconds (0.5f);
					Instantiate (diamond, plane.position + new Vector3 (Random.Range(-5,5), planeRig.velocity.y / 2 - 0.3f+offset, -20), diamond.transform.rotation, transform);
				}
			}
			yield return null;
		}
	}
}
