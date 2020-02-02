using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ChangeOrder : MonoBehaviour
{   
    // Text variable for the order
    public Text order;
    // Keep track of the difficulty, swords ordered, and the status [Start|In-Progress][T/F]
    public static int difficulty;
    public static int swordsOrdered;
    public static bool start;
    public static int swordsCreated;

    // Change the text
    private string text;

    public Transform sword;

    // Start is called before the first frame update
    void Start()
    {
        order.text = "Taking Orders";
        text = "";
        start = false;
        difficulty = 0;
        swordsOrdered = 0;
        swordsCreated = -1;
    }

    // Update is called once per frame
    /**
        Update the order log when its ready to accept a new order
    */
    void Update()
    {   
        StartCoroutine(updateOrder());
    }

    public static void genOrder() {
        start = true;
    }

    // Testing dynamically updating chalk board
    IEnumerator updateOrder() {
        if (Input.GetKeyDown("r")) {
            start = true;
        }

        yield return new WaitForSeconds(1);



        if (start) {
            // If the difficult is the default
            difficulty = Random.Range(1, 5);

            // If the swords ordered is the default
            swordsOrdered = Random.Range(1, 5);

            for (int i = 0; i < swordsOrdered; i++) {
                Transform go = Instantiate(sword, new Vector3(i * 0.5F + 1, .09F, -4), Quaternion.identity);
                go.name = "Sword for " + Dialoguetrigger.waifuName;
            }

            swordsCreated = 0;
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
        start = false;
    }
}
