using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class PlaneController : MonoBehaviour {
	Rigidbody rig;

	public float force;
	public float gravity;
	Vector3 initPos;
	bool start = false;
	bool addPlaneSpeedSwitch = false;
	bool onAir = true;
	bool endPlane = false;
	Quaternion initRotation;
	[HideInInspector]
	public float curDistance;
	[HideInInspector]
	public int goldClaim = 0;

	public GameObject settle;
	public Transform personPlane;
	public Animator personAnimator;
	public RuntimeAnimatorController idel;
	public RuntimeAnimatorController throwPlane;
	public Avatar avatar;
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
		animator = transform.Find("plane").GetComponent<Animator> ();
		initPos = transform.position;
		initRotation = transform.rotation;
		Physics.gravity = new Vector3 (0, gravity, 0);
		curDistance = 0;
		pointer.StartPoint ();
	}
	
	// Update is called once per frame
	void Update () {		
		if (start) {	
			curDistance = -(transform.position.z - 200f) * 4;
			//翻转飞机
			AnimatorStateInfo animatorInfo = animator.GetCurrentAnimatorStateInfo (0);
			if (animatorInfo.IsName ("idle")) {
				if (Input.GetKeyDown (KeyCode.W)) {					
					animator.SetTrigger ("rotate");
					StartCoroutine (CameraRotate.Instance.ChangeOffsetY (-1));
				}
			}						
			//检测翻转是否完成
			if ((animatorInfo.normalizedTime > 0.98f) && (animatorInfo.IsName("PlaneRotate")))//normalizedTime: 范围0 -- 1,  0是动作开始，1是动作结束
			{
				if (!addPlaneSpeedSwitch) {
					addPlaneSpeedSwitch = true;
					StartCoroutine (AddPlaneSpeed());
					StartCoroutine (CameraRotate.Instance.ChangeOffsetY (0));
				}
			}
			//左右移动飞机
			Vector3 targetEuler = Vector3.zero;
			targetEuler = new Vector3 (rig.velocity.y, 0, 0);
			if (onAir) {
				if (Input.GetKey (KeyCode.A)) {
					rig.AddForce (Vector3.left * -100, ForceMode.Force);
					targetEuler += new Vector3 (0, -20, -30);
				}
				if (Input.GetKey (KeyCode.D)) {
					rig.AddForce (Vector3.left * 100, ForceMode.Force);
					targetEuler += new Vector3 (0, 20, 30);
				}
			}
			transform.rotation = Quaternion.Lerp (transform.rotation,Quaternion.Euler (targetEuler), Time.deltaTime);

			if (transform.position.y < -0.5f) {
				transform.position = new Vector3 (transform.position.x, -0.5f, transform.position.z);
				transform.Find ("plane").position = transform.position;
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

	public void OnStartBtn(){
		personAnimator.avatar = null;
		onAir = true;
		personAnimator.runtimeAnimatorController = throwPlane;
		Invoke ("Shootplane", (5/6f));
		StartCoroutine (GravityVary (0.4f+PlayerPrefs.GetInt ("power_level", 1)*0.2f));
		StartCoroutine (CheckVelociy ());
		MultiHaptic.HapticHeavy ();
		pointer.StopPoint ();
	}

	void Shootplane(){
		transform.position = personPlane.position;
		personPlane.gameObject.SetActive (false);
		transform.Find ("plane").gameObject.SetActive (true);
		transform.Find ("plane").DOScale (1, 0.5f);
		rig.constraints = RigidbodyConstraints.None;	
		rig.AddForce (transform.forward * -force, ForceMode.Acceleration);
		start = true;
		StartCoroutine (ChangeCameraSpeed ());
	}

	//飞机提前发射一段距离
	IEnumerator ChangeCameraSpeed(){
		yield return new WaitForSeconds (0.5f);
		float curTime = 0;
		while (true) {
			if (CameraRotate.Instance.zoomDampening >= 20) {
				yield break;
			}
			curTime += Time.deltaTime/10;
			CameraRotate.Instance.zoomDampening = Mathf.Lerp (CameraRotate.Instance.zoomDampening, 22, curTime);
			yield return null;
		}
	}
		
	//飞机旋转
	IEnumerator AddPlaneSpeed(){	
		
		Physics.gravity = new Vector3 (0, 0, 0);
		MultiHaptic.HapticHeavy ();
		transform.DORotate (new Vector3 (12, transform.eulerAngles.y, transform.eulerAngles.z), 1f, RotateMode.Fast);
		while (true) {			
			rig.velocity = Vector3.Lerp (rig.velocity, new Vector3 (rig.velocity.x, 2, rig.velocity.z), Time.deltaTime * (10 / PlayerPrefs.GetInt ("flip_level", 1)));
			if (Vector3.Distance (rig.velocity, new Vector3 (rig.velocity.x, 2, rig.velocity.z)) < 0.1f) {
				break;
			}
			yield return null;
		}
		Physics.gravity = new Vector3 (0, -2, 0);

		addPlaneSpeedSwitch = false;

	}

	//重开游戏
	public void ReGame(){
		Settle ();
		start = false;
		onAir = false;
		//animator.enabled = false;
		animator.enabled = true;
		personPlane.gameObject.SetActive (true);
		transform.position = initPos;
		transform.rotation = initRotation;
		transform.Find ("plane").localRotation = Quaternion.Euler (Vector3.zero);
		rig.velocity = Vector3.zero;
		rig.constraints = RigidbodyConstraints.FreezeAll;
		CameraRotate.Instance.ReGame ();
		CameraRotate.Instance.zoomDampening = 3;
		CameraRotate.Instance.transform.position = transform.position;
		CameraRotate.Instance.yDeg = 9;
		CameraRotate.Instance.targetOffset.y = -0.35f;
		transform.Find ("plane").localScale = new Vector3(0.3f,0.3f,0.3f);
		transform.Find ("plane").gameObject.SetActive (false);
		personAnimator.runtimeAnimatorController = idel;
		personAnimator.avatar = avatar;
		curDistance = 0;
		top.EndUpdate ();
		Physics.gravity = new Vector3 (0, gravity, 0);
		rig.drag = 0;
		endPlane = false;
	}

	void Settle(){				
		goldClaim = (int)(curDistance / 1.9f);
		settle.SetActive (true);
	}

	void OnCollisionEnter(Collision coll){
		onAir = false;
		EndPlane ();
		MultiHaptic.HapticHeavy ();
		if (coll.transform.tag == "trashcan") {			
			StartCoroutine (CameraRotate.Instance.IntoTrash_Camera ());

		}else if(coll.transform.tag == "start"){
			
		} 
		else {			
			
		}
	}
		
	void EndPlane(){
		if (!endPlane) {
			animator.enabled = false;
			endPlane = true;
			rig.angularDrag = 1f;
			rig.AddTorque (new Vector3 (Random.Range (0, 360), Random.Range (0, 360), Random.Range (0, 360)));
			StartCoroutine (StopPlane());
		}
	}

	IEnumerator StopPlane(){
		while(true){
			rig.velocity = Vector3.Lerp (rig.velocity, Vector3.zero, Time.deltaTime);
			if (rig.velocity.magnitude <= 0.2f) {
				yield break;
			}
			yield return null;
		}
	}
		
	IEnumerator GravityVary(float time){
		yield return new WaitForSeconds (1f);
		Physics.gravity = new Vector3 (0, 0, 0);
		while (true) {			
			rig.velocity = Vector3.Lerp (rig.velocity, new Vector3 (rig.velocity.x, 0, rig.velocity.z), Time.deltaTime*10);
			if (Vector3.Distance (rig.velocity, new Vector3 (rig.velocity.x, 0, rig.velocity.z)) < 0.1f) {
				break;
			}
			yield return null;
		}
		yield return new WaitForSeconds (time);
		Physics.gravity = new Vector3 (0, -3, 0);
	}

	IEnumerator CheckVelociy(){
		yield return new WaitForSeconds(1f);
		while (true) {
			if (rig.velocity.magnitude <= 0.2f) {
				ReGame ();
				yield break;
			}
			yield return null;
		}
	}

}
