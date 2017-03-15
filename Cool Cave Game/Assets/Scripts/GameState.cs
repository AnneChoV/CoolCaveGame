using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameState : MonoBehaviour {

    SceneChanger sceneChanger;

	// Use this for initialization
	void Start () {
        sceneChanger = FindObjectOfType<SceneChanger>();
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    public void SaveGame()
    {
        // Saving the players location in the world
        Vector3 PlayerLoc = FindObjectOfType<Player>().transform.position;
        Quaternion PlayerRot = FindObjectOfType<Player>().transform.rotation;
        // Location
        PlayerPrefs.SetFloat("PlayerLocX", PlayerLoc.x);
        PlayerPrefs.SetFloat("PlayerLocY", PlayerLoc.y);
        PlayerPrefs.SetFloat("PlayerLocZ", PlayerLoc.z);
        // Rotation
        PlayerPrefs.SetFloat("PlayerRotX", PlayerRot.x);
        PlayerPrefs.SetFloat("PlayerRotY", PlayerRot.y);
        PlayerPrefs.SetFloat("PlayerRotZ", PlayerRot.z);
        PlayerPrefs.SetFloat("PlayerRotW", PlayerRot.w);

        // Save current scene
        PlayerPrefs.SetString("Scene", SceneManager.GetActiveScene().name);
    }

    public void ContinueGame()
    {
        // Load the saved scene
        sceneChanger.SceneLoad(PlayerPrefs.GetString("Scene"));

        // Get player location from last save
        float locx = PlayerPrefs.GetFloat("PlayerLocX");
        float locy = PlayerPrefs.GetFloat("PlayerLocY");
        float locz = PlayerPrefs.GetFloat("PlayerLocZ");
        FindObjectOfType<Player>().transform.position = new Vector3(locx, locy, locz);

        float rotx = PlayerPrefs.GetFloat("PlayerRotX");
        float roty = PlayerPrefs.GetFloat("PlayerRotY");
        float rotz = PlayerPrefs.GetFloat("PlayerRotZ");
        float rotw = PlayerPrefs.GetFloat("PlayerRotW");
        FindObjectOfType<Player>().transform.rotation = new Quaternion(rotx, roty, rotz, rotw);

    }
}
