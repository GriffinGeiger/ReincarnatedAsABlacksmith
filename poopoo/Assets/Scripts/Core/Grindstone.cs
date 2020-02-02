using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Grindstone : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        SwordController sword = other.GetComponent<SwordController>();
        if(sword!=null)
        {
            sword.CurrentState = SwordController.SwordState.Grinding;
        }
    }
    private void OnTriggerExit(Collider other)
    {
        SwordController sword = other.GetComponent<SwordController>();
        if (sword != null)
        {
            if(sword.temperature >= sword.heatedUpTemp)
            {
                sword.CurrentState = SwordController.SwordState.HeatedUp;
            }
            else
            {
                sword.CurrentState = sword.CooledAmbiently();
            }
        }
    }
}
