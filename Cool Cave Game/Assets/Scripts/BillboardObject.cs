using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BillboardObject : MonoBehaviour
{
    public Transform m_BillboardCamera;

    public bool m_OnlyRotates;

    void Awake()
    {
        m_BillboardCamera = Camera.main.transform;
    }

    // Update is called once per frame
    void Update()
    {
        if (!m_BillboardCamera)
        {
            m_BillboardCamera = Camera.main.transform;
        }

        if (m_OnlyRotates)
        {
            transform.LookAt(new Vector3(m_BillboardCamera.position.x, transform.position.y, m_BillboardCamera.position.z), Vector3.up);
        }
        else
        {
            transform.LookAt(m_BillboardCamera);
        }
    }
}
