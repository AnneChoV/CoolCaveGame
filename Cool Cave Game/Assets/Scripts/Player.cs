using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class Player : MonoBehaviour
{
    CharacterController characterController;

    public bool raycastHit;

    // Use this for initialization
    void Start()
    {
        characterController = FindObjectOfType<CharacterController>();
    }

    // Update is called once per frame
    void Update()
    {
        RaycastHit hit;
        //Vector3 origin = Camera.main.ScreenToWorldPoint(Input.mousePosition);
        Vector3 origin = transform.position + characterController.center;
        Vector3 inFront = transform.TransformDirection(Vector3.forward);

        if (Physics.SphereCast(origin, 0.7f, inFront, out hit))
        {
            if (hit.transform.tag == "InteractableItem") //Another way to do it would be for all interactable items to have the same shared parent, check for this parent and then have specific tags for each one to check for.
            {
                raycastHit = true;
            }

            else
            {
                raycastHit = false;
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


    public GameObject FindObjectInFrontOfPlayer()
    {
        //RaycastHit hit;
        //Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);

        //Vector3 inFront = transform.TransformDirection(Vector3.forward);

        //if (Physics.Raycast(ray, out hit, 3.5f))
        //{
        //    if (hit.transform.tag == "InteractableItem") //Another way to do it would be for all interactable items to have the same shared parent, check for this parent and then have specific tags for each one to check for.
        //    {
        //        Debug.Log("There's something in front of the player!");
        //         hit.transform.SendMessage("HitByRay"); //I think we can do this differently.
        //        hit.transform.gameObject.SetActive(false);
        //        return hit.transform.gameObject;
        //    }
        //}

        

        RaycastHit hit;
        //Vector3 origin = Camera.main.ScreenToWorldPoint(Input.mousePosition);
        Vector3 origin = transform.position + characterController.center;
        Vector3 inFront = transform.TransformDirection(Vector3.forward);

        if (Physics.SphereCast(origin, 0.7f, inFront, out hit))
        {
            if (hit.transform.tag == "InteractableItem") //Another way to do it would be for all interactable items to have the same shared parent, check for this parent and then have specific tags for each one to check for.
            {
                       return hit.transform.gameObject;
            }
        }
        Debug.Log("No item found in front of the player");
        return null;
    }
}
