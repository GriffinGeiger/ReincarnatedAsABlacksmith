using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwordHammeringZone : MonoBehaviour
{
    public SenpaiSound[] Senpai;
    //public  SenpaiSound[] Senpai  = FindObjectsOfType(typeof(SenpaiSound)) as SenpaiSound[];
    private HaloGradient halo;
    // Start is called before the first frame update
    void Start()
    {
        halo = GetComponent<HaloGradient>();
       Senpai= FindObjectsOfType(typeof(SenpaiSound)) as SenpaiSound[];
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
            Senpai[0].Playsound();
           

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
