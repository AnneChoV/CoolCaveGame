﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TextBoxManager : MonoBehaviour {

    SoundManager soundManager;
    SceneChanger sceneChanger;
    public GameObject textBox;
    public GameObject arrow;
    public Text text;

    public TextAsset textFile;
    public string[] textLines;

    public int currentLine;
    public int endAtLine;

	// Use this for initialization
	void Start () {
        soundManager = FindObjectOfType<SoundManager>();

        if (textFile != null)
        {
            textLines = (textFile.text.Split('\n'));
        }

        if (endAtLine == 0)
        {
            endAtLine = textLines.Length - 1;
        }
        sceneChanger = FindObjectOfType<SceneChanger>();
	}
	
	// Update is called once per frame
	void Update () {
        text.text = textLines[currentLine];
        
        if (Input.GetKeyDown(KeyCode.Return) || Input.GetKeyDown("t"))
        {
            soundManager.DialogueSound();
            currentLine += 1;
        }	

        if (currentLine < endAtLine)
        {
            arrow.SetActive(true);
        }

        if (currentLine == endAtLine)
        {
            arrow.SetActive(false);
        }

        if (currentLine > endAtLine)
        {
            textBox.SetActive(false);
            currentLine = 0;
            sceneChanger.SceneLoad("Test_Combat");
        }
	}
}
