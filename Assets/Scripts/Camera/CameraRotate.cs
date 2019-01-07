﻿using UnityEngine;
using System.Collections;


[AddComponentMenu("Camera-Control/CameraControl")]
public class CameraRotate : MonoBehaviour
{
    public Transform target;
    //public Transform targetTO;
    public Vector3 targetOffset;
    float distance = 5.0f;
    //public float maxDistance = 20;//缩放
    //public float minDistance = .6f;//缩放
    //public float xSpeed = 200.0f;//速度
    //public float ySpeed = 200.0f;
    //public int yMinLimit = -80;//限定角度
    //public int yMaxLimit = 80;
    //public int zoomRate = 40;
    public float zoomDampening = 5.0f;
    public float xDeg = 0.0f;//自身的角度记录
    public float yDeg = 0.0f;//自身的角度
    public float currentDistance;//缩放记录
    public float desiredDistance;//缩放
    private Quaternion currentRotation;
    private Quaternion desiredRotation;
    public Quaternion rotation;
    private Vector3 position;
	float yDegTemp;
	bool gameEnd;
	bool intoTrash;

	PlaneController planeController;
	public Rigidbody playerRig;

   // public float X;//初始化角度X轴
   // public float Y;//初始化角度Y轴
    /// <summary>
    /// 初始化距离
    /// </summary>
    public float CameDistance;

    static CameraRotate instance;
    public static CameraRotate Instance
    {
        get { return instance; }
    }
    private void Awake()
    {
        instance = this;
    }

    void Start()
    {
        Init();
        desiredDistance = CameDistance;
		planeController = PlaneController.Instance;
		gameEnd = false;
		intoTrash = false;
    }

    

    public void Init()
    {
       
        if (!target)
        {
            GameObject go = new GameObject("Cam Target");
            go.transform.position = transform.position + (transform.forward * distance);
            target = go.transform;
        }

        //distance = Vector3.Distance(transform.position, target.position);
		distance = 2.5f;
        currentDistance = distance;
        desiredDistance = distance;

       
        position = transform.position;
        rotation = transform.rotation;
        currentRotation = transform.rotation;
        desiredRotation = transform.rotation;

        //xDeg = Vector3.Angle(Vector3.right, transform.right)-120;
		xDeg = 180;
        //yDeg = Vector3.Angle(Vector3.up, transform.up);
		yDeg = 9;
		yDegTemp = yDeg;
    }


    void FixedUpdate()
	{
		// 设置相机旋转
		//desiredRotation = Quaternion.Euler (yDeg - playerRig.velocity.y*3, xDeg, 0);
		if (playerRig.velocity.y < 0&&!intoTrash) {
			//desiredRotation = Quaternion.Euler (yDeg, xDeg, 0);
		} else {
			desiredRotation = Quaternion.Euler (yDeg - playerRig.velocity.y * 3, xDeg, 0);
		}
		currentRotation = transform.rotation;
		
		rotation = Quaternion.Lerp (currentRotation, desiredRotation, Time.unscaledDeltaTime * zoomDampening);
		transform.rotation = rotation;

		position = target.position - (rotation * Vector3.forward * currentDistance + targetOffset);
		//transform.position = position;
		transform.position = Vector3.Lerp (transform.position, position, Time.unscaledDeltaTime * zoomDampening);	
	}

    private static float ClampAngle(float angle, float min, float max)
    {
        if (angle < -360)
            angle += 360;
        if (angle > 360)
            angle -= 360;
        return Mathf.Clamp(angle, min, max);
    }

	public IEnumerator IntoTrash_Camera(){
//		while (true) {
//			yDeg = Mathf.Lerp (yDeg, 80, Time.deltaTime);
//			currentDistance = Mathf.Lerp (currentDistance, 6, Time.deltaTime);
//			if (Mathf.Abs (yDeg - 80) < 0.1f||gameEnd) {
//				yield break;
//			}
//			yield return null;
//		}
		yield return null;
	}

	public void ReGame(){
		gameEnd = true;
		yDeg = yDegTemp;
		currentDistance = 2.5f;
	}

	public IEnumerator ChangeOffsetY(float value){
		if (targetOffset.y < value) {
			while (targetOffset.y < value) {
				targetOffset.y += Time.deltaTime*2;
				yield return null;
			}
		} else if (targetOffset.y > value) {
			while (targetOffset.y > value) {
				targetOffset.y -= Time.deltaTime*2;
				yield return null;
			}
		}
	}
}
