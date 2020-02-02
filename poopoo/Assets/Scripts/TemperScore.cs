using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Reflection;
using System;

public class TemperScore : MonoBehaviour
{
    public Component[] halos;
    public float score = 0;
    public float child_length = 0;
    // Start is called before the first frame update
    void Start()
    {
        halos = GetComponentsInChildren<HaloGradient>();
        child_length = halos.Length;
        foreach (HaloGradient region in halos)
        {
            score += region._timeVar;
        }
        score /= child_length;
    }

    // Update is called once per frame
    void Update()
    {
        halos = GetComponentsInChildren<HaloGradient>();
        score = 0;
        child_length = halos.Length;
        foreach (HaloGradient region in halos)
        {
            score += region._timeVar;
        }
        score /= child_length;
    }
}
