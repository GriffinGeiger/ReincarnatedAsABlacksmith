﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class ScoreManager : MonoBehaviour
{
    
    public static int ElfWeapontotal = 0;
    public static int NekoWeapontotal = 0;
    //ID = 1
    public float ElfTotalScore;
    //ID = 0
    public float NekoTotalScore;
    public float difference;

    // Start is called before the first frame update
    void Start()
    {
        ElfTotalScore = 10;
        NekoTotalScore = 10;
    }
    // Update is called once per frame
    void Update()
    {
        difference = ((NekoTotalScore / 100) - (ElfTotalScore / 100)+0.5f);
        if (difference > 0.8)
        {
            Debug.Log("NEKO WIN"); //do Neko win
            SceneManager.LoadScene(5);
        }
        if (difference < 0.2)
        {
            Debug.Log("ELF WIN"); //do Elf win
            SceneManager.LoadScene(4);
        }

    }
   public void addScore(int ID, float Weaponscore)
    {
        if (ID == 1)
        {
            ElfWeapontotal++;
            ElfTotalScore += Weaponscore;
        }
        else
        {
            NekoWeapontotal++;
            NekoTotalScore += Weaponscore;
        }

        ChangeOrder.swordsCreated++;

    }
}
