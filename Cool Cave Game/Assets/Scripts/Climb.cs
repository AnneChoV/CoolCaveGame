using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.Characters.FirstPerson;

public class Climb : MonoBehaviour {

    public GameObject playerObject;
    public float climbingSpeed = 2.0f;
    public bool climbing;

	// Use this for initialization
	void Start () {
        playerObject = GameObject.FindGameObjectWithTag("Player");

    }
	
	// Update is called once per frame
	void Update () {
		if (climbing)
        {
            float v = Input.GetAxis("Vertical");
            if (v > 0)
            {
                playerObject.transform.Translate(Vector3.up * v * climbingSpeed * Time.deltaTime);
            }
            else
            {
                playerObject.transform.Translate(Vector3.up * v * climbingSpeed * Time.deltaTime);
            }
        }
	}

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject == playerObject)
        {
            if (gameObject.transform.parent.tag == "VerticalClimb")
            {
                climbing = true;
                playerObject.GetComponent<Rigidbody>().useGravity = false;
                playerObject.GetComponent<Rigidbody>().constraints = RigidbodyConstraints.FreezePositionX;
                playerObject.GetComponent<Rigidbody>().constraints = RigidbodyConstraints.FreezePositionZ;
            }
            if (gameObject.transform.parent.tag == "SlopeClimb")
            {
                climbing = true;
                playerObject.GetComponent<Rigidbody>().mass = 4.0f;
            }
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.gameObject == playerObject)
        {
            if (gameObject.transform.parent.tag == "VerticalClimb")
            {
                climbing = false;
                playerObject.GetComponent<Rigidbody>().useGravity = true;
                playerObject.GetComponent<Rigidbody>().constraints = RigidbodyConstraints.None;
                playerObject.GetComponent<Rigidbody>().constraints = RigidbodyConstraints.FreezeRotation;
            }

            if (gameObject.transform.parent.tag == "SlopeClimb")
            {
                climbing = true;
                playerObject.GetComponent<Rigidbody>().mass = 8.0f;
            }
        }
    }
}
