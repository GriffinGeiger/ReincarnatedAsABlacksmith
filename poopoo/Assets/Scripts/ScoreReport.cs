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
        //Debug.Log(sword);
        if (sword.gameObject.tag == "Sword")
        {
            //report score
            WeaponScore score = sword.GetComponent<WeaponScore>();
            tempering = score._poundScore + 1;
            grind = score._grindScore + 1;
            coolMultiplier = sword.GetComponent<SwordController>().coolingBonus + 1;

            float final = (tempering + grind) * coolMultiplier;
            if (ScoreDisplayText != null)
            {
                ScoreDisplayText.text = "Form: " + tempering + "\n" +
                                        "Sharpening: " + grind + "\n" +
                                        "Tempering Multiplier: " + coolMultiplier + "\n" +
                                        "Total Score: " + final;
            }
            ScoreManager[] myItems = FindObjectsOfType(typeof(ScoreManager)) as ScoreManager[];
            FactionTag factionInfo = sword.GetComponent<FactionTag>();
            foreach (ScoreManager item in myItems)
            {
                item.addScore(factionInfo.faction, final);
                Debug.Log(final + " Elves: " + item.ElfTotalScore + " Not Elves: " + item.NekoTotalScore);
            }
            sword.gameObject.GetComponentInParent<ArmSwing>().DropObject();
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
}
