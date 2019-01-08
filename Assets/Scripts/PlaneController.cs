using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class PlaneController : MonoBehaviour {
	Rigidbody rig;

	public float force;
	public float gravity;
	float perfectAdd = 0;
	Vector3 initPos;
	Vector3 initScenePos;
	public GameObject scene1;
	public GameObject scene2;
	[HideInInspector]
	public bool start = false;
	bool addPlaneSpeedSwitch = false;
	bool onAir = true;
	bool endPlane = false;
	bool correctionPlane = false;
	[HideInInspector]
	public bool findDiamond = false;
	[HideInInspector]
	public bool flipDiamond = false;
	bool useFlip = false;
	Quaternion initRotation;
	[HideInInspector]
	public float curDistance;
	[HideInInspector]
	public int goldClaim = 0;
	[HideInInspector]
	public float shootForce = 0;
	public float planeOffset = 0;
	string[] perfectWords;
	string[] goodWords;
	string[] badWords;

	public GameObject settle;
	public GameObject distancePoint;
	public GameObject perfectPS;
	public GameObject maxPS;
	public GameObject normalPS;
	public GameObject perfectTril;
	public GameObject flipTril;
	public GameObject flipGuide;
	public Transform diamondParent;
	public Transform personPlane;
	public Transform realPlane;
	public Animator personAnimator;
	public RuntimeAnimatorController idel;
	public RuntimeAnimatorController throwPlane;
	public Avatar avatar;
	public Material skyMat;
	Animator animator;

	public Top top;
	public Skill skill;
	public Pointer pointer;

	static PlaneController instance;
	public static PlaneController Instance
	{
		get { return instance; }
	}
	private void Awake()
	{
		instance = this;
	}

	// Use this for initialization
	void Start () {	
		rig = GetComponent<Rigidbody> ();
		animator = realPlane.GetComponent<Animator> ();
		initPos = transform.position;
		initRotation = transform.rotation;
		initScenePos = scene1.transform.position;
		Physics.gravity = new Vector3 (0, gravity, 0);
		curDistance = 0;
		pointer.StartPoint ();
		perfectWords = new string[]{"Perfect","Pretty","Beautiful","Brilliant"};
		goodWords = new string[]{ "Nice", "Good", "Well", "Fine" };
		//badWords = new string[]{ "Pity", "Sad", "Bad", "Almost" };
	}
	
	// Update is called once per frame
	void Update () {		
		if (start) {	
			curDistance = -(transform.position.z - 200f) * 4;
			//翻转飞机
			AnimatorStateInfo animatorInfo = animator.GetCurrentAnimatorStateInfo (0);
			if (animatorInfo.IsName ("idle")) {
				if (useFlip) {
					if (Input.GetKeyDown (KeyCode.W)) {	
						Physics.gravity = new Vector3 (0, 0, 0);
						useFlip = false;
						animator.SetTrigger ("rotate");
						StartCoroutine (CameraRotate.Instance.ChangeOffsetY (-1));
					}
				}
			}						
			//检测翻转是否完成
			if ((animatorInfo.normalizedTime > 0.98f) && (animatorInfo.IsName("PlaneRotate")))//normalizedTime: 范围0 -- 1,  0是动作开始，1是动作结束
			{
				if (!addPlaneSpeedSwitch) {
					addPlaneSpeedSwitch = true;
					StartCoroutine (AddPlaneSpeed());
					StartCoroutine (CameraRotate.Instance.ChangeOffsetY (-0.35f));
				}
			}
			//左右移动飞机
			Vector3 targetEuler = Vector3.zero;
//			if (correctionPlane) {
//				targetEuler = new Vector3 (rig.velocity.y, 0, 0);
//			}else {
//				targetEuler = new Vector3 (rig.velocity.y, transform.eulerAngles.y, transform.eulerAngles.z);
//			}
			targetEuler = new Vector3 (rig.velocity.y, 0, 0);
			if (onAir) {
				if (Input.GetKey (KeyCode.A)||(Input.touchCount > 0 && Input.GetTouch(0).phase == TouchPhase.Moved&&Input.GetTouch(0).deltaPosition.x<-5)) {					
					
					rig.AddForce (Vector3.left * -300, ForceMode.Force);
					targetEuler += new Vector3 (0, -20, -30);
					if (rig.velocity.x >= 15) {
						rig.velocity = new Vector3 (15, rig.velocity.y, rig.velocity.z);
					}
				}
				else if (Input.GetKey (KeyCode.D)||(Input.touchCount > 0 && Input.GetTouch(0).phase == TouchPhase.Moved&&Input.GetTouch(0).deltaPosition.x>5)) {
					
					rig.AddForce (Vector3.left * 300, ForceMode.Force);
					targetEuler += new Vector3 (0, 20, 30);
					if (rig.velocity.x <= -15) {
						rig.velocity = new Vector3 (-15, rig.velocity.y, rig.velocity.z);
					}
				} else {
					rig.velocity = Vector3.Lerp(rig.velocity,new Vector3 (0, rig.velocity.y, rig.velocity.z),Time.deltaTime);
				}
			}
			transform.rotation = Quaternion.Lerp (transform.rotation,Quaternion.Euler (targetEuler), Time.deltaTime*3);
			if (transform.position.x <= 600) {						
				transform.position = new Vector3(600,transform.position.y,transform.position.z);
			}
			if (transform.position.x >= 800) {
				transform.position = new Vector3(800,transform.position.y,transform.position.z);
			}
			if (transform.position.y < planeOffset) {
				transform.position = new Vector3 (transform.position.x, planeOffset, transform.position.z);
				//transform.position = Vector3.Lerp (transform.position, new Vector3 (transform.position.x,planeOffset, transform.position.z),Time.deltaTime);
				realPlane.position = Vector3.Lerp(realPlane.position, transform.position,Time.deltaTime);
			}
		} else {
			
		}

		if (Input.GetKeyDown (KeyCode.P)) {
			OnStartBtn ();
		}
		if (Input.GetKeyDown (KeyCode.R)) {
			ReGame ();
		}
		if (Input.GetKeyDown (KeyCode.O)) {
			PlayerPrefs.DeleteAll ();
		}	
	}

	IEnumerator ChangeTimescale(float targetScale){
		while (true) {
			Time.timeScale = Mathf.Lerp (Time.timeScale, targetScale, Time.deltaTime*5);
			if (Mathf.Abs( Time.timeScale - targetScale) < 0.3f) {
				Time.timeScale = targetScale;
				yield break;
			}
			yield return null;
		}
	}

	IEnumerator StopTimeScale(float time){
		yield return new WaitForSeconds (time);
		while (true) {
			Time.timeScale = Mathf.Lerp (Time.timeScale, 1, Time.unscaledDeltaTime);
			//print (Time.timeScale);
			if (Mathf.Abs( Time.timeScale - 1) < 0.1f) {
				Time.timeScale = 1;
				yield break;
			}
			yield return null;
		}
	}

	public void OnStartBtn(){
		skill.gameObject.SetActive (false);
		personAnimator.avatar = null;
		onAir = true;
		personAnimator.runtimeAnimatorController = throwPlane;
		//Invoke ("Shootplane", (5/6f/1.7f));
		float levelAddtion = 1 + ((PlayerPrefs.GetInt ("level", 1) - 1) * 3) / 100f;
		StartCoroutine (CheckVelociy ());
		StartCoroutine (CorrectionPlane());
		MultiHaptic.HapticHeavy ();
		pointer.StopPoint ();
		//transform.eulerAngles = new Vector3 (10, shootRotation, 0);
		if (shootForce >= 0.88f) {
			TipPop.GenerateTip (perfectWords [Random.Range (0, 4)], 0.5f);
			StartCoroutine (PerfectShoot ());
			Invoke ("Shootplane", (5/6f/1.8f));
			perfectAdd = 1.5f;
		} else {
			if (shootForce <= 0.4f) {
				//TipPop.GenerateTip (badWords [Random.Range (0, 4)], 0.5f);
				perfectAdd = -0.5f;
			} else {
				TipPop.GenerateTip (goodWords [Random.Range (0, 4)], 0.5f);
			}
			Invoke ("Shootplane", (5/6f/1.7f));
			//StartCoroutine (NormalParticle ());
			//personPlane.DOPunchScale(personPlane.localScale*2,0.5f,10,1);
		}

		float perfectTime = (PlayerPrefs.GetInt ("power_level", 0)) * 0.6f *3 * levelAddtion;
		if (shootForce <= 0.43f) {
			perfectTime *= shootForce / 0.43f * 0.5f + 0.5f;
		} else {
			perfectTime *= (shootForce-0.43f) / (1 - 0.43f) * 0.5f + 1;
		}
		StartCoroutine (GravityVary (0.4f+perfectTime+perfectAdd));
		StartCoroutine (StopTimeScale ((0.4f + perfectTime + perfectAdd) * 0.8f));
		Invoke ("CameraStartRotate", 2);
	}

	void CameraStartRotate(){
		CameraRotate.Instance.startRotate = true;
	}

	void Shootplane(){
		transform.position = personPlane.position;
		personPlane.gameObject.SetActive (false);
		realPlane.gameObject.SetActive (true);
		realPlane.DOScale (1, 0.5f);
		rig.constraints = RigidbodyConstraints.None;	
		rig.AddForce (transform.forward * -force, ForceMode.Acceleration);
		start = true;
		StartCoroutine (ChangeCameraSpeed ());
		if (shootForce >= 0.88f) {			
			perfectTril.SetActive (true);
			StartCoroutine(ChangeTimescale (4));
		}else{
			StartCoroutine(ChangeTimescale (2.5f));
		}
	}

	IEnumerator PerfectShoot(){
		//perfectAdd = 2;
		Time.timeScale = 0.4f;
		StartCoroutine (PerfectParticle ());
		yield return new WaitForSeconds (0.5f);
		Time.timeScale = 1;
	}


	IEnumerator PerfectParticle(){
		int i = 0;
		while(i<5){
			GameObject go = Instantiate (perfectPS,personPlane.position,Quaternion.identity,personPlane);
			//go.transform.position += new Vector3 (0, 0, 1);
			Destroy (go, 1);
			i++;
			yield return new WaitForSecondsRealtime (0.2f);
		}
	}

	IEnumerator NormalParticle(){
		int i = 0;
		while(i<5){
			GameObject go = Instantiate (normalPS,personPlane.position,Quaternion.identity,personPlane);
			Destroy (go, 1);
			i++;
			yield return new WaitForSecondsRealtime (0.2f);
		}
	}

	public void MaxParticle(Transform trans){
		GameObject go = Instantiate (maxPS, Camera.main.ScreenToWorldPoint(trans.position)+new Vector3(0,1,0), Quaternion.identity);
		Destroy (go, 2);
	}


	//飞机提前发射一段距离
	IEnumerator ChangeCameraSpeed(){
		yield return new WaitForSeconds (0.5f);
		float curTime = 0;
		while (true) {
			if (CameraRotate.Instance.zoomDampening >= 12) {
				yield break;
			}
			curTime += Time.deltaTime/10;
			CameraRotate.Instance.zoomDampening = Mathf.Lerp (CameraRotate.Instance.zoomDampening, 13, curTime);
			yield return null;
		}
	}
		
	//飞机旋转
	IEnumerator AddPlaneSpeed(){	
		if (onAir) {				
			MultiHaptic.HapticHeavy ();
			transform.DORotate (new Vector3 (12, transform.eulerAngles.y, transform.eulerAngles.z), 1f, RotateMode.Fast);
			flipDiamond = true;
			while (true) {			
				rig.velocity = Vector3.Lerp (rig.velocity, new Vector3 (rig.velocity.x, 2, rig.velocity.z), Time.deltaTime * 8);
				if (Vector3.Distance (rig.velocity, new Vector3 (rig.velocity.x, 2, rig.velocity.z)) < 0.5f) {
					rig.velocity = new Vector3 (rig.velocity.x, 0, rig.velocity.z);
					float flipTime = 1;
					if (shootForce <= 0.43f) {
						flipTime *= shootForce / 0.43f * 0.5f + 0.5f;
					} else {
						flipTime *= (shootForce-0.43f) / (1 - 0.43f) * 0.5f + 1;
					}
					yield return new WaitForSeconds ((PlayerPrefs.GetInt ("flip_level", 0))*0.4f*3*flipTime+perfectAdd);
					flipDiamond = false;
					break;
				}
				yield return null;
			}
		}
		Physics.gravity = new Vector3 (0, -3, 0);
		addPlaneSpeedSwitch = false;

	}

	IEnumerator CorrectionPlane(){
		correctionPlane = false;
		yield return new WaitForSeconds (2);
		correctionPlane = true;
	}

	//重开游戏
	public void ReGame(){
		scene1.transform.position = initScenePos;
		scene2.transform.position = initScenePos;	
		start = false;
		onAir = false;
		isOver = false;
		//animator.enabled = false;
		animator.enabled = true;
		personPlane.gameObject.SetActive (true);
		transform.position = initPos;
		transform.rotation = initRotation;
		realPlane.position = initPos;
		realPlane.localRotation = Quaternion.Euler (Vector3.zero);
		rig.velocity = Vector3.zero;
		rig.constraints = RigidbodyConstraints.FreezeAll;
		CameraRotate.Instance.ReGame ();
		CameraRotate.Instance.zoomDampening = 3;
		CameraRotate.Instance.transform.position = transform.position;
		CameraRotate.Instance.yDeg = 9;
		CameraRotate.Instance.targetOffset.y = -0.35f;
		CameraRotate.Instance.target = transform;
		CameraRotate.Instance.startRotate = false;
		realPlane.localScale = new Vector3(0.3f,0.3f,0.3f);
		realPlane.gameObject.SetActive (false);
		personAnimator.runtimeAnimatorController = idel;
		personAnimator.avatar = avatar;
		curDistance = 0;
		top.EndUpdate ();
		Physics.gravity = new Vector3 (0, gravity, 0);
		rig.drag = 0;
		endPlane = false;
		perfectAdd = 0;
		skill.gameObject.SetActive (true);
		pointer.StartPoint ();
		flipTril.SetActive (false);
		perfectTril.SetActive (false);
		ClearDiamond ();
		flipDiamond = false;
		ChangeSkyColor ();
		Time.timeScale = 1;
	}

	void Settle(){		
		float levelAddtion = 1 + ((PlayerPrefs.GetInt ("level", 1) - 1) * 3) / 100f;	
		goldClaim = (int)(curDistance / 1.9f / 2 * levelAddtion);
		settle.SetActive (true);
		isOver = false;
	}

	void OnCollisionEnter(Collision coll){
		StartCoroutine (StopPerfectTril ());
		useFlip = false;
		onAir = false;
		if (!settle.activeSelf) {
			isOver = true;
		}
		EndPlane ();
		//rig.constraints = RigidbodyConstraints.FreezeAll;
		//Physics.gravity = new Vector3 (0, -2, 0);
		MultiHaptic.HapticHeavy ();
		CameraRotate.Instance.target = realPlane;
		StartCoroutine (CheckGameover ());
	}

	void OnTriggerEnter(Collider coll){
		if (coll.name == "scene1") {
			if (scene1.transform.position != scene2.transform.position) {
				scene2.transform.position += new Vector3 (0, 0, -3317.8f);
			}
		}if (coll.name == "scene2") {
			scene1.transform.position += new Vector3 (0, 0, -3317.8f);
		}
	}

	bool isOver = false;
	IEnumerator CheckGameover(){
		yield return new WaitForSeconds (3);
		if (isOver) {
			isOver = false;
			GameObject go = Instantiate (distancePoint, GameObject.Find ("Canvas").transform);
			yield return new WaitForSeconds (1);
			Destroy (go);
			Settle ();
		}
	}

	IEnumerator StopPerfectTril(){
		//yield return new WaitForSeconds (2);
		//perfectTril.GetComponent<ParticleSystem> ().Stop ();
		yield return null;
	}
		
	void EndPlane(){
		if (!endPlane) {
			animator.enabled = false;
			endPlane = true;
			rig.angularDrag = 1f;
			rig.drag = 1f;
			rig.AddTorque (new Vector3 (Random.Range (0, 360), Random.Range (0, 360), Random.Range (0, 360)));
			StartCoroutine (StopPlane());
		}
	}

	IEnumerator StopPlane(){
		while(true){
			rig.velocity = Vector3.Lerp (rig.velocity,new Vector3(0,0,0), Time.deltaTime);
			if (rig.velocity.magnitude <= 0.3f) {
				yield break;
			} 
			yield return null;
		}
	}
		
	IEnumerator GravityVary(float time){
		yield return new WaitForSeconds (1f);
		Physics.gravity = new Vector3 (0, 0, 0);
		//flipDiamond = true;
		while (true) {	
			if (Vector3.Distance (rig.velocity, new Vector3 (rig.velocity.x, 0, rig.velocity.z)) > 3.5f) {	
				rig.velocity = Vector3.Lerp (rig.velocity, new Vector3 (rig.velocity.x, 0, rig.velocity.z), Time.deltaTime / 2);
			} else {
				rig.velocity = Vector3.Lerp (rig.velocity, new Vector3 (rig.velocity.x, 0, rig.velocity.z), Time.deltaTime * 5);
			}

			if (Vector3.Distance (rig.velocity, new Vector3 (rig.velocity.x, 0, rig.velocity.z)) < 0.3f) {	
				print ("ShootFinish");
				rig.velocity = new Vector3 (rig.velocity.x, 0, rig.velocity.z);
				findDiamond = true;
				//flipDiamond = false;
				break;
			}
			yield return null;
		}
		yield return new WaitForSeconds (time);
		findDiamond = false;
		Physics.gravity = new Vector3 (0, -3, 0);
		StartCoroutine (StopPerfectTril ());
		useFlip = true;
		if (PlayerPrefs.GetInt ("flip_level", 0) != 0)
			Invoke ("OnWClick", 1.3f);
		flipTril.SetActive (true);
//		yield return new WaitForSeconds (0.5f);
//		if (PlayerPrefs.GetInt ("flipguide", 0) == 1) {
//			flipGuide.SetActive (true);
//			PlayerPrefs.SetInt ("flipguide", 2);
//			Time.timeScale = 0;
//		}
//		if (PlayerPrefs.GetInt ("flipguide", 0) == 0) {
//			PlayerPrefs.SetInt ("flipguide", 1);
//		}
	}

	void OnWClick(){
		//Physics.gravity = new Vector3 (0, 0, 0);
		useFlip = false;
		animator.SetTrigger ("rotate");
		StartCoroutine (CameraRotate.Instance.ChangeOffsetY (-1));
	}

	IEnumerator CheckVelociy(){
		yield return new WaitForSeconds(1f);
		while (true) {
			if (rig.velocity.magnitude <= 0.3f) {
				//ReGame ();
				if (isOver) {
					isOver = false;
					GameObject go = Instantiate (distancePoint, GameObject.Find ("Canvas").transform);
					yield return new WaitForSeconds (1);
					Destroy (go);
					Settle ();
				}
				yield break;
			}
			yield return null;
		}
	}

	void ClearDiamond(){
		for (int i = 0; i < diamondParent.childCount; i++) {
			Destroy (diamondParent.GetChild(i).gameObject);
		}
	}
		
	void ChangeSkyColor(){
		//skyMat.SetColor ("_TintColor", new Color (Random.Range (0, 1f), Random.Range (0, 1f), Random.Range (0, 1f)));
	}
}
