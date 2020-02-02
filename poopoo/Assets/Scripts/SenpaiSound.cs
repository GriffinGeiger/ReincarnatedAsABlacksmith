using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SenpaiSound : MonoBehaviour
{
    public AudioSource m1;
    public AudioSource m2;
    public AudioSource m3;
    public AudioSource m4;
    public AudioSource m5;
    public AudioSource m6;
    public AudioSource m7;
    public AudioSource m8;
    public AudioSource m9;
    public AudioSource m10;


    public AudioSource[] Senpai;
    public bool Online;
    // Start is called before the first frame update
    void Start()
    {
        Senpai = new AudioSource[10];
        fill_Arrays();
    }

    private int[] randomizeValues(int[] array)
    {
        for (int i = 0; i < array.Length; i++)
        {
            array[i] = i;
        }

        for (int i = 0; i < array.Length; ++i)
        {
            int randomIndex = Random.Range(0, array.Length);
            int temp = array[randomIndex];
            array[randomIndex] = array[i];
            array[i] = temp;
        }

        return array;
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void Playsound()
    {
        if (Online)
        {
        Senpai[Random.Range(0, 10)].Play();

        }
    }

    void fill_Arrays()
    {
        Senpai[0] = m1;
        Senpai[1] = m2;
        Senpai[2] = m3;
        Senpai[3] = m4;
        Senpai[4] = m5;
        Senpai[5] = m6;
        Senpai[6] = m7;
        Senpai[7] = m8;
        Senpai[8] = m9;
        Senpai[9] = m10;


    }




}
