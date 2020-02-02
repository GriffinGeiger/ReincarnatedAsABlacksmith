using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Furnace : MonoBehaviour
{
    public float tempIncreaseSpeed = 50f;
    private void OnTriggerStay(Collider other)
    {
        SwordController sword = other.transform.GetComponentInChildren<SwordController>();
        sword.temperature += tempIncreaseSpeed;
        sword.CurrentState = SwordController.SwordState.Heating;
    }

    private void OnTriggerExit(Collider other)
    {
        SwordController sword = other.transform.GetComponentInChildren<SwordController>();
        if (sword.temperature >= sword.heatedUpTemp)
        {
            sword.CurrentState = SwordController.SwordState.HeatedUp;
        }
        else
            sword.CurrentState = SwordController.SwordState.RawAndCold;
    }
}
