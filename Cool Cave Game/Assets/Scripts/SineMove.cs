using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SineMove : MonoBehaviour
{
    public Vector3 m_Direction;

    public float m_SineAmplitude;
    public float m_SineSpeed;

    private Vector3 m_OriginPosition;

    private float m_LifeTimer;

    // Use this for initialization
    void Awake()
    {
        m_OriginPosition = transform.position;
        m_Direction = m_Direction.normalized;
    }

    // Update is called once per frame
    void Update()
    {
        m_LifeTimer += m_SineSpeed * Time.deltaTime;

        transform.position = m_OriginPosition + m_Direction * Mathf.Sin(m_LifeTimer) * m_SineAmplitude;
    }
}
