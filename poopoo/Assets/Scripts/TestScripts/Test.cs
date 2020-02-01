using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Test : MonoBehaviour
{

    DialogueSystem dialogueSystem;
    // Start is called before the first frame update
    void Start()
    {
        dialogueSystem = DialogueSystem.instance;
    }

    // Update is called once per frame
    public string[] s = new string[]
        {
            "Hi,Fix my sword :Costumer",
            "ASAP!"
        };

    int index = 0;
    void Update()
    {
        if (Input.GetKeyDown("space"))
        {
            if (!dialogueSystem.isSpeaking || dialogueSystem.isWaitingForUserInput)
            {
                if (index > s.Length)
                {
                    return;

                }
                Say(s[index]);
                index++;
            }

        }
    }
    void Say(string s)
    {
        string[] parts = s.Split(':');
        string speech = parts[0];
        string speaker = (parts.Length >= 2) ? parts[1] : "";
        dialogueSystem.Say(speech, speaker);
    }
}
