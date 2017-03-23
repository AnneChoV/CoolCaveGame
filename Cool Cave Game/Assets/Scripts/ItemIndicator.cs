﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ItemIndicator : MonoBehaviour
{
    public float m_ProximityRange = 7.5f;

    public Transform m_CloseIndicator;
    public Transform m_FarIndicator;

    public float m_ScaleLerpSpeed = 2.0f;

    public Transform m_Player;

    public bool m_IndicatorsEnabled = true;
    public GameObject helptext;
    public GameObject LeftClickA;

    Inspect inspect;
    Player player;

    // Use this for initialization
    void Awake()
    {
        m_Player = Camera.main.transform.parent;
        if (!m_Player)
        {
            Debug.Log("Hacky solution not working, report to authorities.");
        }

        inspect = FindObjectOfType<Inspect>();
        player = FindObjectOfType<Player>();
    }

    // Update is called once per frame
    void Update()
    {
        bool inProximity = Vector3.Distance(m_Player.position, transform.position) < m_ProximityRange;

        if (inProximity && !inspect.isInspecting && player.raycastHit)
        {
            helptext.GetComponent<TextFadeLerp>().TextLerpToOpaque();
            LeftClickA.GetComponent<TextFadeLerp>().TextLerpToOpaque();
        }
        else
        {
            //helptext.SetActive(false);
            helptext.GetComponent<TextFadeLerp>().TextLerpToInvisible();
            LeftClickA.GetComponent<TextFadeLerp>().TextLerpToInvisible();
        }

        m_CloseIndicator.localScale = Vector3.Lerp(m_CloseIndicator.localScale, Vector3.one * (inProximity && m_IndicatorsEnabled ? 1.0f : 0.0f), m_ScaleLerpSpeed * Time.deltaTime);
        m_FarIndicator.localScale = Vector3.Lerp(m_FarIndicator.localScale, Vector3.one * (!inProximity && m_IndicatorsEnabled ? 1.0f : 0.0f), m_ScaleLerpSpeed * Time.deltaTime);
    }
}
