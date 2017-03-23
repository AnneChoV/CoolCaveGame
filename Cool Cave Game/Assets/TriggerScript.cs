using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TriggerScript : MonoBehaviour {

    SceneChanger sceneChanger;
    Inspect inspect;
    public GameObject helpText;
    public GameObject LeftClick;

    // Use this for initialization
    void Start () {
        sceneChanger = FindObjectOfType<SceneChanger>();
        inspect = FindObjectOfType<Inspect>();
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    private void OnTriggerStay(Collider other)
    {
        if (other.gameObject.name == "CharacterController" && inspect.isLogPickedUp == true)
        {
            helpText.GetComponent<TextFadeLerp>().TextLerpToOpaque();
            LeftClick.GetComponent<TextFadeLerp>().TextLerpToOpaque();
            if (Input.GetMouseButtonDown(0))
            {
                sceneChanger.SceneLoad("Test_Campfire");
            }
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.gameObject.name == "CharacterController" && inspect.isLogPickedUp == true)
        {
            helpText.GetComponent<TextFadeLerp>().TextLerpToInvisible();
            LeftClick.GetComponent<TextFadeLerp>().TextLerpToInvisible();
        }
    }

}
