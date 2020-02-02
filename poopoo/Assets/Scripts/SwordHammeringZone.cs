using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwordHammeringZone : MonoBehaviour
{
    private HaloGradient halo;
    // Start is called before the first frame update
    void Start()
    {
        halo = GetComponent<HaloGradient>();
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
            halo.Pound();
        }

    }
    private void OnTriggerStay(Collider other)
    {
        if (other.gameObject.CompareTag("Grindstone"))
        {
            Debug.Log("Grinding " + name);
            halo.Grind();
        }
    }
}
