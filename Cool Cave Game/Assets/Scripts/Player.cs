﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour {

    //The one pickupable item
    GameObject cat;
    [Header("Game Item Bools")]
    public bool hasGotCat;


    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        RaycastHit hit;
        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);

        Vector3 inFront = transform.TransformDirection(Vector3.forward);

        if (Physics.Raycast(ray, out hit, 1.5f))    
        {
            if (hit.transform.tag == "InteractableItem") //Another way to do it would be for all interactable items to have the same shared parent, check for this parent and then have specific tags for each one to check for.
            {
                Debug.Log("There's something infront of the player!");
                hit.transform.SendMessage("HitByRay");
                hasGotCat = true;
                hit.transform.gameObject.SetActive(false);
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
}
