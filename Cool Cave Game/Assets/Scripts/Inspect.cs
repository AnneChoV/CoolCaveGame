using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Inspect : MonoBehaviour {
    public Camera camera;
    public GameObject gameObject;

    //public Transform 

    bool inspecting;

    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        if (Input.GetKeyDown(KeyCode.P) == true)
        {
            gameObject.transform.position = Camera.main.transform.position + Camera.main.transform.forward * 2.0f;
            inspecting = true;
        }
        if (Input.GetButton("Inspect - Turn Left") == true && inspecting)
        {
            if (gameObject.transform.localRotation.x >= 0.5f)
            {
                return;
            }

            gameObject.transform.Rotate(Time.deltaTime * 50, 0.0f, 0.0f);            
        }
        if (Input.GetButton("Inspect - Turn Right") == true && inspecting)
        {
            if (gameObject.transform.localRotation.x <= -0.5f)
            {
                return;
            }
            gameObject.transform.Rotate(-Time.deltaTime * 50, 0.0f, 0.0f);
        }
        if (Input.GetButton("Inspect - Turn Up") == true && inspecting)
        {

            if (gameObject.transform.localRotation.z >= 0.5f)
            {
                return;
            }
            gameObject.transform.Rotate(0.0f, 0.0f, Time.deltaTime * 50);
        }
        if (Input.GetButton("Inspect - Turn Down") == true && inspecting)
        {
            if (gameObject.transform.localRotation.z <= -0.5f)
            {
                return;
            }
            gameObject.transform.Rotate(0.0f, 0.0f , -Time.deltaTime * 50);
        }

        if (inspecting && Input.GetMouseButton(0) == true)
            {
            Debug.Log("cat");

            }

    }


}
