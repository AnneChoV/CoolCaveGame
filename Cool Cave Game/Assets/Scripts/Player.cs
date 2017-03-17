using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        RaycastHit hit;
        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);

        //Vector3 inFront = transform.TransformDirection(Vector3.forward);

        if (Physics.Raycast(ray, out hit, 1.5f))
        {
            if (hit.transform.tag == "InteractableItem")
            {
                Debug.Log("There's something infront of the player!");
            }       
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "InteractableItem")
        {
            Debug.Log("Collided with stuff");
        }
    }

    void Crouch()
    {
        //GetComponent<CapsuleCollider>().siz
        //GetComponent<CapsuleCollider>().center = new Vector3(0, 0, 0);
    }

    void StopCrouch()
    {

    }
}
