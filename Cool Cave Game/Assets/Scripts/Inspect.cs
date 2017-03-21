using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.Characters.FirstPerson;

//I NEED TO: Make the exclaimatiojn/question mark show up to show interactivity
//Change the key input maybe to mouseclick. YE
//make it so that I can scale and get it closer. YE



public class Inspect : MonoBehaviour {

    private Player player;
    Rigidbody playersRigidBody;
    FirstPersonController firstPersonController;

    PlayerInventory playerInventory;


    public MeshRenderer blurRenderer;
    GameObject currentItem;
    GameObject previousItem;
    Vector3 itemRotation;

    public float inspectedObjectDistance = 0.325f;
    public float inspectedObjectScale = 0.05f;

    Vector3 currentItemsOriginalPosition;
    Vector3 currentItemsOriginalScale;
    float currentItemsOriginalOutlineWidth;
    Quaternion currentItemsOriginalRotation;

    Vector3 previousItemsOriginalPosition;
    Vector3 previousItemsOriginalScale;
    float previousItemsOriginalOutlineWidth;
    Quaternion previousItemsOriginalRotation;


    public GameObject blurObject;

    public float objectRotationSpeed = 100.0f;
    public float objectLerpingSpeed = 0.5f;
    public float currentBlurAmount;

    private float blurCurrentLerpSpeed = 0.0f;
    public float blurMaxLerpSpeed = 1.0f;
    public float blurPunchLerpSpeed = 5.0f;

    public float maxBlur = 4.0f;

    public bool isInspecting;
    public bool isLogPickedUp;

    // Use this for initialization
    void Start () {
        player = GetComponentInParent<Player>();
        playersRigidBody = GetComponentInParent<Rigidbody>();
        firstPersonController = GetComponentInParent<FirstPersonController>();
        playerInventory = GetComponentInParent<PlayerInventory>();
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
        ProcessLerpingItemToAndFromPlayer();
    }

    private void ProcessFindingAndPuttingAwayItems()
    {
        //Setting the object as the current object.
        if (Input.GetMouseButtonDown(0) == true)
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

    private void ProcessLerpingItemToAndFromPlayer() 
    {
        blurCurrentLerpSpeed = Mathf.Lerp(blurCurrentLerpSpeed, blurMaxLerpSpeed, blurPunchLerpSpeed * Time.deltaTime);
        if (isInspecting == true)
        {
            currentBlurAmount = Mathf.Lerp(currentBlurAmount, maxBlur, blurCurrentLerpSpeed * Time.deltaTime);
        }
        else
        {
            currentBlurAmount = Mathf.Lerp(currentBlurAmount, 0.0f, blurCurrentLerpSpeed * Time.deltaTime);
        }

        blurRenderer.material.SetFloat("_BlurSamples", currentBlurAmount);

        if (currentItem != null) //We have an item, we need to lerp it towards the player.
        {
            currentItem.transform.position = Vector3.Lerp(currentItem.transform.position, Camera.main.transform.position + Camera.main.transform.forward.normalized * inspectedObjectDistance, objectLerpingSpeed * Time.deltaTime);
            currentItem.transform.localScale = Vector3.Lerp(currentItem.transform.localScale, Vector3.one * inspectedObjectScale, objectLerpingSpeed * Time.deltaTime);
            currentItem.GetComponent<MeshRenderer>().material.SetFloat("_Outline", currentItemsOriginalOutlineWidth * currentItem.transform.localScale.x / currentItemsOriginalScale.x);


            //currentItem.transform.rotation = Quaternion.Lerp(currentItem.transform.rotation, Quaternion.LookRotation(player.transform.position), objectRotationSpeed * Time.deltaTime);

            //currentItem.transform.Rotate(itemRotation);
        }

        if (previousItem != null && previousItem != currentItem)
        {
            previousItem.transform.position = Vector3.Lerp(previousItem.transform.position, previousItemsOriginalPosition, objectLerpingSpeed * Time.deltaTime);
            previousItem.transform.localScale = Vector3.Lerp(previousItem.transform.localScale, previousItemsOriginalScale, objectLerpingSpeed * Time.deltaTime);
            previousItem.GetComponent<MeshRenderer>().material.SetFloat("_Outline", previousItemsOriginalOutlineWidth * previousItem.transform.localScale.x / previousItemsOriginalScale.x);
            previousItem.transform.rotation = Quaternion.Lerp(previousItem.transform.rotation, previousItemsOriginalRotation, objectRotationSpeed * Time.deltaTime);
        }
    }

    private void FindNewItem()
    {
        currentItem = player.FindObjectInFrontOfPlayer();
        if (currentItem != null)    //This is needed in case the player misses their pick up. 
        {
            blurCurrentLerpSpeed = 0.0f;
            currentItem.GetComponent<ItemIndicator>().m_IndicatorsEnabled = false;

            firstPersonController.enabled = false;
            playersRigidBody.constraints = RigidbodyConstraints.FreezeAll;
            isInspecting = true;

            if (currentItem != previousItem)    //Otherwise you can use the lerp to bring it closer permanently.
            {
                currentItemsOriginalPosition = currentItem.transform.position;
                currentItemsOriginalScale = currentItem.transform.localScale;
                currentItemsOriginalOutlineWidth = currentItem.GetComponent<MeshRenderer>().material.GetFloat("_Outline");
                currentItemsOriginalRotation = currentItem.transform.rotation;

                Debug.Log(currentItemsOriginalOutlineWidth + "this");
                //currentItem.layer = LayerMask.NameToLayer("PickupLayer");
                blurRenderer.material.SetFloat("_BlurSamples", currentBlurAmount);
            }             
        }
    }

    private void PutAwayItem()
    {
        blurCurrentLerpSpeed = blurMaxLerpSpeed;

        currentItem.GetComponent<ItemIndicator>().m_IndicatorsEnabled = true;

        firstPersonController.enabled = true;
        playersRigidBody.constraints = RigidbodyConstraints.FreezeRotation;

        previousItem = currentItem;
        previousItemsOriginalPosition = currentItemsOriginalPosition;
        previousItemsOriginalScale = currentItemsOriginalScale;
        previousItemsOriginalOutlineWidth = currentItemsOriginalOutlineWidth;
        previousItemsOriginalRotation = currentItemsOriginalRotation;

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



