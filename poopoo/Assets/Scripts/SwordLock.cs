using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwordLock : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTriggerEnter(Collider sword)
    {
        if (sword.gameObject.tag == "Sword")
        {
            sword.gameObject.layer = 10;
            SwordController sc = sword.GetComponent<SwordController>();
            sc.CurrentState = (sc.temperature >= sc.heatedUpTemp) ?
                SwordController.SwordState.Pounding : sc.CooledAmbiently() ;
          
        }
    }

    private void OnTriggerExit(Collider sword)
    {
        if (sword.gameObject.tag == "Sword")
        {
            SwordController sc = sword.GetComponent<SwordController>();
            sc.CurrentState = (sc.temperature >= sc.heatedUpTemp) ?
                SwordController.SwordState.HeatedUp :SwordController.SwordState.Cooled;
            sword.gameObject.layer = 11;
        }
        
    }
}
