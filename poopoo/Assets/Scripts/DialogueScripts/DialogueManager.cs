using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DialogueManager : MonoBehaviour
{
    public GameObject CanvasBox; // your fancy canvas box that holds your text objects
    public Text TextBox; // the text body
    public Text NameText; // the text body of the name you want to display
    public bool freezePlayerOnDialogue = true;


    private Queue<string> inputStream = new Queue<string>(); // stores dialogue
    private CharacterController animController;

    private void Start()
    {
        CanvasBox.SetActive(false); // close the dialogue box on play
       animController = GameObject.FindGameObjectWithTag("Player").GetComponent<CharacterController>();
    }

    private void DisablePlayerController()
    {
      
        animController.enabled = false;
    }
    
    private void EnablePlayerController()
    {
        animController.enabled = true;
    }

    public void StartDialogue(Queue<string> dialogue)
    {
        if (freezePlayerOnDialogue)
        {
            DisablePlayerController();
        }

        CanvasBox.SetActive(true); // open the dialogue box
        inputStream = dialogue; // store the dialogue from dialogue trigger
        PrintDialogue(); // Prints out the first line of dialogue
    }

    public void AdvanceDialogue() // call when a player presses a button in Dialogue Trigger
    {
        PrintDialogue();
    }

    private void PrintDialogue()
    {
        if (inputStream.Peek().Contains("EndQueue")) // special phrase to stop dialogue
        {
            if (Dialoguetrigger.orderAccepted) {
                ChangeOrder.genOrder();
                Dialoguetrigger.orderAccepted = false;
                Dialoguetrigger.orderDialogue = false;

            }
            
            inputStream.Dequeue(); // Clear Queue
            EndDialogue();
        }
        else if (inputStream.Peek().Contains("[NAME="))
        {
            string name = inputStream.Peek();
            name = inputStream.Dequeue().Substring(name.IndexOf('=') + 1, name.IndexOf(']') - (name.IndexOf('=') + 1));
            Dialoguetrigger.waifuName = name;
            NameText.text = name;
            PrintDialogue(); // print the rest of this line
        }
        else
        {
            TextBox.text = inputStream.Dequeue();
        }
    }

    public void EndDialogue()
    {
        TextBox.text = "";
        NameText.text = "";
        inputStream.Clear();
        CanvasBox.SetActive(false);
        // isOpen = false;
        if (freezePlayerOnDialogue)
        {
            EnablePlayerController();
        }
    }




}
