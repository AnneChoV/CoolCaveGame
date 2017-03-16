using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.Characters.FirstPerson;

public class Inspect : MonoBehaviour {

    private Player player;
    Rigidbody playersRigidBody;

    GameObject currentItem;
    Vector3 itemRotation;

    Vector3 currentItemsOriginalPosition;
    Quaternion currentItemsOriginalRotation;
    RigidbodyFirstPersonController firstPersonController;

    public GameObject blurObject;

    float objectRotationSpeed;

    // Use this for initialization
    void Start () {
        if (objectRotationSpeed == 0.0f)
        {
            objectRotationSpeed = 100.0f;
        }
        player = GetComponentInParent<Player>();
        playersRigidBody = GetComponentInParent<Rigidbody>();
        firstPersonController = GetComponentInParent<RigidbodyFirstPersonController>();
        if (firstPersonController != null)
        {
            Debug.Log("It was found");
        }
    }

    // Update is called once per frame
    void Update()
    {
        ProcessFindingAndPuttingAwayItems();
        ProcessInteractionsWithObject();
    }

    private void ProcessFindingAndPuttingAwayItems()
    {

        //Setting the object as the current object.
        if (Input.GetKeyDown(KeyCode.P) == true)
        {
            if (currentItem == null)
            {
                FindNewItem();
            }
            else
            {
                PutAwayItem();
            }
        }

        //Lerping the object in front of or back to its position.
    }

    private void ProcessKeepingItemWithPlayer() //Obsolete because the player doesn't move
    {
        if (currentItem != null)
        {
            currentItem.transform.position = Camera.main.transform.position + Camera.main.transform.forward.normalized * 1.0f;
            // currentItem.transform.Rotate(itemRotation);
        }

    }

    private void FindNewItem()
    {
        currentItem = player.FindObjectInFrontOfPlayer();
        if (currentItem != null)
        {
            blurObject.SetActive(true);
            firstPersonController.enabled = false;

            currentItemsOriginalPosition = currentItem.transform.position;
            currentItemsOriginalRotation = currentItem.transform.rotation;

            //Rigidbody currentItemRigid = currentItem.GetComponent<Rigidbody>();   //No Rigidbodies.
            //currentItemRigid.useGravity = false;    
            Vector3 currentItemsHeldPosition = Camera.main.transform.position + Camera.main.transform.forward.normalized * 1.0f;
            currentItem.transform.position = currentItemsHeldPosition;  
            currentItem.transform.LookAt(player.transform);                         
        }
    }

    private void PutAwayItem()
    {
        blurObject.SetActive(false);
        currentItem.transform.position = currentItemsOriginalPosition;
        currentItem.transform.rotation = currentItemsOriginalRotation;

        firstPersonController.enabled = true;
        currentItem = null;
        //We'll place it back where it came from instead I guess?
        //Rigidbody currentItemRigid = currentItem.GetComponent<Rigidbody>();
        //currentItemRigid.useGravity = true;
        ////Add some force to item so that it gets thrown.
        //currentItemRigid.AddForce(Camera.main.transform.forward.normalized * 100.0f);
    }

    private void ProcessInteractionsWithObject()    //I need the players hand to set the rotation locks correctly.
    {
        if (currentItem == null) //Check if there's a current object.
        {
            return;
        }
        if (Input.GetButton("Inspect - Turn Left") == true)
        {
            if (currentItem.transform.localRotation.x >= 0.5f)
            {
    //            return;
            }

            currentItem.transform.Rotate(Time.deltaTime * 100, 0.0f, 0.0f);
        }
        if (Input.GetButton("Inspect - Turn Right") == true)
        {
            if (currentItem.transform.localRotation.x <= -0.5f)
            {
   //             return;
            }
            currentItem.transform.Rotate(-Time.deltaTime * 100, 0.0f, 0.0f);
        }
        if (Input.GetButton("Inspect - Turn Up") == true)
        {

            if (currentItem.transform.localRotation.z >= 0.5f)
            {
 //               return;
            }
            currentItem.transform.Rotate(0.0f, 0.0f, Time.deltaTime * 100);
        }
        if (Input.GetButton("Inspect - Turn Down") == true)
        {
            if (currentItem.transform.localRotation.z <= -0.5f)
            {
     //           return;
            }
            currentItem.transform.Rotate(0.0f, 0.0f, -Time.deltaTime * 100);
        }
    }
}



