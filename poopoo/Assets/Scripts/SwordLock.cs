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
        Debug.Log(sword);
        if (sword.gameObject.tag == "Sword")
        {
            sword.gameObject.layer = 10;
            Debug.Log("parented");
            
            // Debug.Log("Collision");
        }
    }

    private void OnTriggerExit(Collider sword)
    {
        if (sword.gameObject.tag == "Sword")
        {
            sword.gameObject.layer = 11;
        }
        
    }
}
