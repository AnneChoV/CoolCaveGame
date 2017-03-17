using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Crouch : MonoBehaviour {

    GameObject playerObject;

	// Use this for initialization
	void Start () {
        playerObject = GameObject.FindGameObjectWithTag("Player");
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKey(KeyCode.C))
        {
            playerObject.GetComponent<CapsuleCollider>().height = 1.5f;
            playerObject.GetComponent<CapsuleCollider>().center = new Vector3(0, -0.3f, 0);
        }
        else
        {
            playerObject.GetComponent<CapsuleCollider>().height = 2.15f;
            playerObject.GetComponent<CapsuleCollider>().center = new Vector3(0, 0, 0);
        }
	}
}
