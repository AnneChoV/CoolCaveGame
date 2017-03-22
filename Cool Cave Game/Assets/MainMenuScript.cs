using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MainMenuScript : MonoBehaviour {

    SceneChanger sceneChanger;

	// Use this for initialization
	void Start () {
        sceneChanger = FindObjectOfType<SceneChanger>();
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    private void OnMouseOver()
    {     
        if (gameObject.name == "Press Start")
        {
            Debug.Log("Thelrkjsd");
            GetComponent<SpriteRenderer>().color = new Color(0.6f, 0.6f, 0.6f, 1.0f);
        }
    }

    private void OnMouseExit()
    {      
        if (gameObject.name == "Press Start")
        {
            Debug.Log("sdfsdg");
           GetComponent<SpriteRenderer>().color = new Color(1.0f, 1.0f, 1.0f, 1.0f);
        }
    }

    private void OnMouseDown()
    {
        sceneChanger.NewButton();
    }
}
