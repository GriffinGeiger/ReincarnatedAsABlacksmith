using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Furnace : MonoBehaviour
{
    public float tempIncreaseSpeed = 50f;
    private void OnTriggerStay(Collider other)
    {
        SwordController sword = other.transform.GetComponentInChildren<SwordController>();
        if (sword != null)
        {
            sword.temperature += tempIncreaseSpeed * Time.fixedDeltaTime;
            sword.CurrentState = SwordController.SwordState.Heating;
        }
    }

    private void OnTriggerExit(Collider other)
    {
        SwordController sword = other.transform.GetComponentInChildren<SwordController>();
        if (sword != null)
        {
            if (sword.temperature >= sword.heatedUpTemp)
            {
                sword.CurrentState = SwordController.SwordState.HeatedUp;
            }
            else if (sword.temperature <= sword.heatedUpTemp)
                sword.CurrentState = sword.CooledAmbiently();
        }
    }
}
