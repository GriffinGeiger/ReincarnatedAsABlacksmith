using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Reflection;
using System;

public class WeaponScore : MonoBehaviour
{
    public Component[] halos;
    public float _poundScore = 0;
    public float _grindScore = 0;
    public float child_length = 0;
    // Start is called before the first frame update
    void Start()
    {
        halos = GetComponentsInChildren<HaloGradient>();
        child_length = halos.Length;
        foreach (HaloGradient region in halos)
        {
            _poundScore += region._poundQuality;
            _grindScore += region._grindQuality;
        }
       // _poundScore /= child_length;
       // _grindScore /= child_length;
    }

    // Update is called once per frame
    void Update()
    {
        halos = GetComponentsInChildren<HaloGradient>();
        _poundScore = 0;
        child_length = halos.Length;
        foreach (HaloGradient region in halos)
        {
            _poundScore += region._poundQuality;
            _grindScore += region._grindQuality;
        }
        _poundScore /= child_length;
        _grindScore /= child_length;
        
    }
}
