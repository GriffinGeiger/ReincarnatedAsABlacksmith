using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ChangeOrder : MonoBehaviour
{   
    // Text variable for the order
    public Text order;
    public int difficulty;
    public int swordsOrdered;
    private string text;

    // Start is called before the first frame update
    void Start()
    {
        order.text = "Taking Orders";
        text = "";
        StartCoroutine(updateOrder());
    }

    // Update is called once per frame
    void Update()
    {

    }

    // Testing dynamically updating chalk board
    IEnumerator updateOrder() {
        yield return new WaitForSeconds(5);

        // If the difficult is the default
        if (difficulty == 0) {
            difficulty = Random.Range(1, 5);
        }

        // If the swords ordered is the default
        if (swordsOrdered == 0) {
            swordsOrdered = Random.Range(1, 10);
        }

        /* 
            Print the swords ordered in format:
                  6
            Swords Ordered
        */
        text = "" + swordsOrdered + "\nSwords Ordered";

        /*
            Print difficulty in format:
                    Difficulty:
                     ★★★★★

        */
        text += "\n\nDifficulty:\n";
        for (int i = 0; i < difficulty; i++) {
            text += "★";
        }

        order.text = text;



    }
}
