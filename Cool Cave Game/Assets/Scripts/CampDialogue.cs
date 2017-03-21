using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Fungus;

public class CampDialogue : MonoBehaviour {

    public Flowchart flowChart;
    public GameObject Objection;

    SceneChanger sceneChanger;
    SoundManager soundManager;

	// Use this for initialization
	void Start () {
        sceneChanger = FindObjectOfType<SceneChanger>();
        soundManager = FindObjectOfType<SoundManager>();
	}
	
	// Update is called once per frame
	void Update () {
		
        if (Input.GetKeyDown(KeyCode.P))
        {
            flowChart.SetBooleanVariable("Intervene", true);
        }
        
	}

    public void IntroDone()
    {
        sceneChanger.SceneLoad("PrototypeCave");
    }

    public void BagSearch()
    {
        soundManager.BagSearch();
    }

    public void Punch()
    {
        soundManager.Punch();
    }
}
