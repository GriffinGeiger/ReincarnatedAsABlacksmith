using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwordHammeringZone : MonoBehaviour
{
    public  SenpaiSound Senpai;
    private HaloGradient halo;
    // Start is called before the first frame update
    void Start()
    {
        halo = GetComponent<HaloGradient>();
        //Senpai = SenpaiSound.FindWithTag("Senpai");
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
            Senpai.Playsound();
           

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
