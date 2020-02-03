using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Furnace : MonoBehaviour
{
    public float tempIncreaseSpeed = 50f;
    private Dictionary<SwordController,float> heatedSwords = new Dictionary<SwordController,float>();

    private void OnTriggerStay(Collider other)
    {
        SwordController sword = other.transform.GetComponentInChildren<SwordController>();
        if (sword != null)
        {
            if(!heatedSwords.ContainsKey(sword))
            {
                heatedSwords.Add(sword, Mathf.Exp((sword.temperature - 293 - 70) / 700));
            }
            heatedSwords[sword] += Time.fixedDeltaTime;
            sword.temperature = 700 * Mathf.Log(heatedSwords[sword]) + 70;
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

            heatedSwords.Remove(sword);
        }
    }
}
