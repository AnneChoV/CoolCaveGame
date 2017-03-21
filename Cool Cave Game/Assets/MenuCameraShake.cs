﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MenuCameraShake : MonoBehaviour {
    public float ShakeDist = 1;
    private Vector3 originalPosition;
    public float ShakeSpeed = 1;
	// Use this for initialization
	void Start () {
        originalPosition = transform.position;

    }
	
	// Update is called once per frame
	void Update () {
        var pos = originalPosition;
        pos.x += ShakeDist * Mathf.PerlinNoise(Time.time * ShakeSpeed, 0);
        pos.y += ShakeDist * Mathf.PerlinNoise(0, Time.time * ShakeSpeed);
        transform.position = pos;
    }
}
