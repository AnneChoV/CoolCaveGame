using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.Characters.FirstPerson;

//I NEED TO: Make the exclaimatiojn/question mark show up to show interactivity
//Change the key input maybe to mouseclick.
//make it so that I can scale and get it closer.



public class Inspect : MonoBehaviour {

    private Player player;
    Rigidbody playersRigidBody;
    FirstPersonController firstPersonController;

    PlayerInventory playerInventory;


    public MeshRenderer blurRenderer;
    GameObject currentItem;
    GameObject previousItem;
    Vector3 itemRotation;

    float objectScaleAndClosenessMultiplier;

    Vector3 currentItemsOriginalPosition;
    Vector3 currentItemsOriginalScale;
    float currentItemsOriginalOutlineWidth;

  //  Quaternion currentItemsOriginalRotation;
    Vector3 previousItemsOriginalPosition;
  //  Quaternion previousItemsOriginalRotation;


    public GameObject blurObject;

    public float objectRotationSpeed;
    public float objectLerpingSpeed;
    public float currentBlurAmount;

    public bool isInspecting;
    public bool isLogPickedUp;

    // Use this for initialization
    void Start () {
        if (objectRotationSpeed == 0.0f)    //If we havn't set it in the thingy box.
        {
            objectRotationSpeed = 100.0f;
        }
        if (objectLerpingSpeed == 0.0f)
        {
            objectLerpingSpeed = 0.05f;
        }
        player = GetComponentInParent<Player>();
        playersRigidBody = GetComponentInParent<Rigidbody>();
        firstPersonController = GetComponentInParent<FirstPersonController>();
        playerInventory = GetComponentInParent<PlayerInventory>();
        if (firstPersonController != null)
        {
            Debug.Log("It was found");
        }
        objectScaleAndClosenessMultiplier = 2.0f;
    }

    // Update is called once per frame
    void Update()
    {
        ProcessFindingAndPuttingAwayItems();
        ProcessInteractionsWithObject();
        ProcessLerpingItemToAndFromPlayer();


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
        if (Input.GetKeyDown("space") && isInspecting)
        {
            Debug.Log("Item Picked up");
            isLogPickedUp = true;
            isInspecting = false;
            currentItem.SetActive(false);
            currentItem = null;
            firstPersonController.enabled = true;
            playersRigidBody.constraints = RigidbodyConstraints.FreezeRotation;

            playerInventory.AddWoodPieceToInventory();
        }

        //Lerping the object in front of or back to its position.
    }

    private void ProcessLerpingItemToAndFromPlayer() //Obsolete because the player doesn't move
    {

        if (isInspecting == true)
        {
            currentBlurAmount = Mathf.Lerp(currentBlurAmount, 4.0f, objectLerpingSpeed);
        }
        else
        {
            currentBlurAmount = Mathf.Lerp(currentBlurAmount, 0.0f, objectLerpingSpeed);
        }

        blurRenderer.material.SetFloat("_BlurSamples", currentBlurAmount);

        if (currentItem != null) //We have an item, we need to lerp it towards the player.
        {
            currentItem.transform.position = Vector3.Lerp(currentItem.transform.position, Camera.main.transform.position + Camera.main.transform.forward.normalized * 0.8f / objectScaleAndClosenessMultiplier, objectLerpingSpeed);
            currentItem.transform.localScale = Vector3.Lerp(currentItem.transform.localScale, currentItemsOriginalScale / objectScaleAndClosenessMultiplier, objectLerpingSpeed);



            // currentItem.transform.rotation = Quaternion.Lerp(currentItem.transform.rotation, Quaternion.LookRotation(player.transform.position), objectLerpingSpeed);

            //currentItem.transform.Rotate(itemRotation);
        }
     
        if (previousItem != null && previousItem != currentItem)
        {
            previousItem.transform.position = Vector3.Lerp(previousItem.transform.position, previousItemsOriginalPosition, objectLerpingSpeed);
           // previousItem.transform.rotation = Quaternion.Lerp(previousItem.transform.rotation, previousItemsOriginalRotation, objectLerpingSpeed);
        }    
    }

    private void FindNewItem()
    {
        currentItem = player.FindObjectInFrontOfPlayer();
        if (currentItem != null)    //This is needed in case the player misses their pick up. 
        {
            firstPersonController.enabled = false;
            playersRigidBody.constraints = RigidbodyConstraints.FreezeAll;
            isInspecting = true;

            if (currentItem != previousItem)    //Otherwise you can use the lerp to bring it closer permanently.
            {
                currentItemsOriginalPosition = currentItem.transform.position;
                currentItemsOriginalScale = currentItem.transform.localScale;
                currentItemsOriginalOutlineWidth = currentItem.GetComponent<BoxCollider>().material.
                Debug.Log(currentItemsOriginalOutlineWidth + "this");
                blurRenderer.material.SetFloat("_BlurSamples", currentBlurAmount);
                // currentItemsOriginalRotation = currentItem.transform.rotation;
            }             
        }
    }

    private void PutAwayItem()
    {
        firstPersonController.enabled = true;
        playersRigidBody.constraints = RigidbodyConstraints.FreezeRotation;
        previousItem = currentItem;
        previousItemsOriginalPosition = currentItemsOriginalPosition;
      //  previousItemsOriginalRotation = currentItemsOriginalRotation;
        currentItem = null;
        isInspecting = false;
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



