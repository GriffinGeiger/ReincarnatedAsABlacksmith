using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwordHammeringZone : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.CompareTag("Hammer"))
        {
            Debug.Log("Hammer hit " + name);
            GetComponent<HaloGradient>()._timeVar += .2f;
        }
    }
}
