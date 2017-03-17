using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Fungus;

public class CampDialogue : MonoBehaviour {

    public Flowchart flowChart;
    public GameObject Objection;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
        if (Input.GetKeyDown(KeyCode.P))
        {
            flowChart.SetBooleanVariable("Intervene", true);
        }
        
	}
}
