using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScoreManager : MonoBehaviour
{
    
    public int ElfWeapontotal;
    public int NekoWeapontotal;
    //ID = 1
    public float ElfTotalScore;
    //ID = 0
    public float NekoTotalScore;
    public float difference;

    // Start is called before the first frame update
    void Start()
    {
        ElfTotalScore = 1;
        NekoTotalScore = 1;
    }
    // Update is called once per frame
    void Update()
    {
        difference = ((NekoTotalScore / 100) - (ElfTotalScore / 100)+0.5f);
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

    }
}
