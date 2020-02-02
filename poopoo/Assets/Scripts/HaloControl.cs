using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HaloControl : MonoBehaviour
{
    public Component[] halos;
    // Start is called before the first frame update
    void Start()
    {
        halos = GetComponentsInChildren<HaloGradient>();

        foreach (HaloGradient region in halos)
        {
            region._isEnabled = false;
        }
    }

    // Update is called once per frame
    void Update()
    {
        halos = GetComponentsInChildren<HaloGradient>();

        foreach (HaloGradient region in halos)
        {
            region._isEnabled = false;
        }
    }
}
