using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour {

    public GameObject Wrist;

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

        if (Input.GetKey(KeyCode.K))
        {
            Wrist.transform.Rotate(0, 0, -5.0f);
        }

        if (Input.GetKey(KeyCode.I))
        {
            Wrist.transform.Rotate(0, 0, 5.0f);
        }

        if (Input.GetKey(KeyCode.J))
        {
            Wrist.transform.Rotate(-5.0f, 0, 0);
        }

        if (Input.GetKey(KeyCode.L))
        {
             Wrist.transform.Rotate(5.0f, 0, 0);
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "InteractableItem")
        {
            Debug.Log("Collided with stuff");
        }
    }
}
