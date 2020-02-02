using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class MenuMusic : MonoBehaviour
{
    public float time;

    // Start is called before the first frame update
    void Start()
    {
        GetComponent<AudioSource>().time = time;
        GetComponent<AudioSource>().Play();
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
