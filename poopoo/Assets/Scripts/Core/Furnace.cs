using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Furnace : MonoBehaviour
{
    public float tempIncreaseSpeed = 50f;
    public float x = 0;
    private void OnTriggerStay(Collider other)
    {
        SwordController sword = other.transform.GetComponentInChildren<SwordController>();
        if (sword != null)
        {
            x += Time.fixedDeltaTime;
            sword.temperature = 700 * Mathf.Log(x) + 70;
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
