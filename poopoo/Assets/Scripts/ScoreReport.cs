using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ScoreReport : MonoBehaviour
{
    public float tempering;
    public float grind;
    public float coolMultiplier;
    public Text ScoreDisplayText;
    public Text HighScoreText;
    public float[] HighScores = { 0, 0, 0, 0, 0 };

    // Start is called before the first frame update
    void Start()
    {
        for (int i = 0; i < 5; i++)
        {
            Debug.Log("i " + i);
            HighScores[i] = 0f;

        }
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTriggerEnter(Collider sword)
    {
        //Debug.Log(sword);
        if (sword.gameObject.tag == "Sword")
        {
            ReportScore(sword.gameObject);
            Destroy(sword.gameObject);
        }
    }

    private void OnTriggerExit(Collider sword)
    {
        if (sword.gameObject.tag == "Sword")
        {
            //do stuff
        }

    }

    public void ReportScore(GameObject sword)
    {
        //report score
        WeaponScore score = sword.GetComponent<WeaponScore>();
        tempering = score._poundScore * 2;
        grind = score._grindScore * 2;
        coolMultiplier = sword.GetComponent<SwordController>().coolingBonus + 1;
        float multiplier = (tempering + grind) >= 0f ? coolMultiplier + 1 : 2;
        float final = (tempering + grind) * multiplier;
        if (ScoreDisplayText != null)
        {
            ScoreDisplayText.text = "Form: " + Math.Round(tempering * 10, 2) + "\n\n" +
                                    "Sharpening: " + Math.Round(grind * 10, 2) + "\n\n" +
                                    "Tempering Multiplier: " + Math.Round(multiplier, 2) + "\n\n" +
                                    "Total Score: " + Math.Round(final * 10, 2);
            Debug.Log(ScoreDisplayText.text);
        }
        ScoreManager[] myItems = FindObjectsOfType(typeof(ScoreManager)) as ScoreManager[];
        FactionTag factionInfo = sword.GetComponent<FactionTag>();
        foreach (ScoreManager item in myItems)
        {
            item.addScore(factionInfo.faction, final);
            Debug.Log("Last Sword: " + final + " Elves: " + item.ElfTotalScore + " Not Elves: " + item.NekoTotalScore);
        }
        sword.gameObject.GetComponentInParent<ArmSwing>()?.DropObject();

        for(int i = 0; i < 5; i++)
        {
            if(final > HighScores[i])
            {
                for (int j = 4; j >= i; j--)
                {
                    if (j == 0)
                        continue;
                    HighScores[j] = HighScores[j - 1];
                }
                HighScores[i] = final;
                break;
            }
        }
        HighScoreText.text = "";
        for (int i = 0; i < 5; i++)
        {
            HighScoreText.text += (i+1) + ")  " + Math.Round(HighScores[i],2) * 10 + "\n";
        }
    }
}
