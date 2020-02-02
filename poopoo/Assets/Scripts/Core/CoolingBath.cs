using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CoolingBath : MonoBehaviour
{
    static public float goalTemperature = 700f;
    static public float cooledTemp = 300f;
    SwordController sword;
    private void OnTriggerEnter(Collider other)
    {
        sword = other.gameObject.GetComponent<SwordController>();
        if (sword != null)
        {
            sword.CurrentState = SwordController.SwordState.CoolingBath;
            if(sword.bathCoolingTemp <= 1f) //if bath cooling temp isn't set
                sword.bathCoolingTemp = sword.temperature;
        }

    }

    private void Update()
    {

    }
}
