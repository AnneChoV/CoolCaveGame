using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInventory : MonoBehaviour {  //THIS ENTIRE SCRIPT IS TO TAKE THE SEPERATE INVENTORY PIECES OUT OF THE PLAYER

    public List<bool> woodPieces;
    public bool allWoodPiecesCollected;

	void Start () {
        foreach (Transform child in transform)  //NEED TO MAKE THIS THE PARENT TRANSFORM THAT HOLDS ALL THE WOOD.
        {
            woodPieces.Add(false);
        }
	}
	
	void Update () {
		
	}

    //If a woodpiece is added to the inventory, one of the bools in the list should be made true.
    //If all the bools in the list are true, set AllWoodPeicesCollected to true.
}
