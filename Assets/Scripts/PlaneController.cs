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
	Quaternion initRotation;

	public GameObject startText;
	Animator animator;

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
	}
	
	// Update is called once per frame
	void Update () {
		if (start) {
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
			if (Input.GetKey (KeyCode.A)) {
				rig.AddForce (Vector3.left * -100, ForceMode.Force);
				targetEuler += new Vector3 (0, -20, -30);
			}
			if (Input.GetKey (KeyCode.D)) {
				rig.AddForce (Vector3.left * 100, ForceMode.Force);
				targetEuler += new Vector3 (0, 20, 30);
			}
			transform.rotation = Quaternion.Lerp (transform.rotation,Quaternion.Euler (targetEuler), Time.deltaTime);
		} else {
			
		}
	}

	public void OnStartBtn(){	
		rig.constraints = RigidbodyConstraints.None;	
		rig.AddForce (transform.forward * -force, ForceMode.Acceleration);
		start = true;
		startText.SetActive (false);
		StartCoroutine (ChangeCameraSpeed ());
	}

	//飞机提前发射一段距离
	IEnumerator ChangeCameraSpeed(){
		yield return new WaitForSeconds (0.5f);
		while (true) {
			if (CameraRotate.Instance.zoomDampening >= 10) {
				yield break;
			}
			CameraRotate.Instance.zoomDampening = Mathf.Lerp (CameraRotate.Instance.zoomDampening, 20, Time.deltaTime);
			yield return null;
		}
	}
		
	//飞机旋转
	IEnumerator AddPlaneSpeed(){	
		Physics.gravity = new Vector3 (0, 0, 0);
		transform.DORotate (new Vector3 (12, transform.eulerAngles.y, transform.eulerAngles.z), 1f, RotateMode.Fast);
		while (true) {			
			rig.velocity = Vector3.Lerp (rig.velocity, new Vector3 (rig.velocity.x, 2, rig.velocity.z), Time.deltaTime*2);
			if (Vector3.Distance (rig.velocity, new Vector3 (rig.velocity.x, 2, rig.velocity.z)) < 0.1f) {
				break;
			}
			yield return null;
		}
		Physics.gravity = new Vector3 (0, gravity, 0);
		addPlaneSpeedSwitch = false;		
	}

	//重开游戏
	public void ReGame(){
		start = false;
		animator.enabled = false;
		animator.enabled = true;
		transform.position = initPos;
		transform.rotation = initRotation;
		transform.Find ("plane").rotation = Quaternion.Euler (Vector3.zero);
		startText.SetActive (true);
		rig.velocity = Vector3.zero;
		rig.constraints = RigidbodyConstraints.FreezeAll;
		CameraRotate.Instance.ReGame ();
	}

	void OnCollisionEnter(Collision coll){
		if (coll.transform.tag == "trashcan") {			
			StartCoroutine (CameraRotate.Instance.IntoTrash_Camera ());
		}else if(coll.transform.tag == "start"){
			
		} 
		else {
			Invoke ("ReGame", 1);
			//ReGame ();
		}
	}
		

}
