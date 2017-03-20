using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInventory : MonoBehaviour {  //THIS ENTIRE SCRIPT IS TO TAKE THE SEPERATE INVENTORY PIECES OUT OF THE PLAYER

    //WOOD VARIABLES:
    public int woodCollected;
    public int totalWood;
    public bool allWoodPiecesCollected;


    //HOLDER PARENTS:
    GameObject woodHolder;  //WE NEED AN OBJECT CALLED WOODHOLDER TO PARENT ALL WOOD IN THE SCENE.


    void Start () {
        woodHolder = GameObject.Find("WoodHolder");
        totalWood = woodHolder.transform.childCount;
	}
	
	void Update ()
    { 
	}

    public void AddWoodPieceToInventory()
    {
        woodCollected++;
        if (woodCollected == totalWood)
        {
            allWoodPiecesCollected = true;
        }
    }

    void RemoveAllWoodFromInventory()
    {

    }
}
