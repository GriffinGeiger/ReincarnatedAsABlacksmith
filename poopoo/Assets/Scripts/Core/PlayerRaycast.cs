using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerRaycast : MonoBehaviour
{
    public float distanceToSee = 10f;
    RaycastHit whatWasHit;
    public Text interactionPrompt;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        Debug.DrawRay(this.transform.position, this.transform.forward * distanceToSee, Color.cyan);
        if (Physics.Raycast(this.transform.position, this.transform.forward,out whatWasHit, distanceToSee))
        {
            
            GameObject focusedObject = whatWasHit.collider.gameObject;
            if (focusedObject.CompareTag("Interactable") )
            {
                interactionPrompt.text = "Press 'E' to Interact";

            }
            else if(focusedObject.CompareTag("Grabable"))
            {
                interactionPrompt.enabled = true;
                interactionPrompt.text = "Click to pick up " + focusedObject.name;
                if(Input.GetKey(KeyCode.Mouse0))
                {
                    Destroy(focusedObject);
                }
            }
            else
            {
                interactionPrompt.enabled = false;
            }
        }
        else
        {
            interactionPrompt.enabled = false;
        }
    }
}
