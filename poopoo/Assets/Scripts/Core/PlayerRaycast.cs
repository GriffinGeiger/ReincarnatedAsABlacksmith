using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerRaycast : MonoBehaviour
{
    public float distanceToSee = 10f;
    RaycastHit whatWasHit;
    public Text interactionPrompt;
    public Transform grabPoint;
    private int layermask = 0;
    // Start is called before the first frame update
    void Start()
    {
        layermask  = 1 << 10;
        layermask |= 1 << 11;
        layermask |= 1 << 12;
        layermask |= 1 << 13;
    }

    // Update is called once per frame
    void Update()
    {
        Debug.DrawRay(this.transform.position, this.transform.forward * distanceToSee, Color.cyan);
        if (Physics.Raycast(this.transform.position, this.transform.forward,out whatWasHit, distanceToSee,layermask))
        {
            
            GameObject focusedObject = whatWasHit.collider.gameObject;
            if (focusedObject.CompareTag("Interactable") )
            {
                interactionPrompt.text = "Press 'E' to Interact";

            }
            else if(focusedObject.GetComponentInChildren<Grabable>() != null)
            {
                interactionPrompt.enabled = true;
                interactionPrompt.text = "Click to pick up " + focusedObject.name;
                if(Input.GetKey(KeyCode.Mouse0))
                {
                    //Pick up object
                    GetComponentInParent<ArmSwing>().GrabObject(focusedObject.transform);
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
