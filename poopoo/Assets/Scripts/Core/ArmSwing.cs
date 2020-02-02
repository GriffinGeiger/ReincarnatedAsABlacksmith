using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ArmSwing : MonoBehaviour
{
    public GameObject ArmDragAnchor;
    public GameObject GrabPoint;
    public Rigidbody Arm;
    public bool holding = false;
    public float holdHigh = 5f;
    public float holdLow = -1.5f;
    private bool up = false;
    private bool prevUp = false;
    private GameObject HeldObject;
    private Vector3 heldObjectScale;
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (holding)
        {
            if (Input.GetKeyDown(KeyCode.Mouse0))
            {
                up = !up;
            }

            if (up != prevUp)
            {

                ArmDragAnchor.transform.localPosition =
                  new Vector3(
                  ArmDragAnchor.transform.localPosition.x,
                  up ? holdHigh : holdLow,
                  ArmDragAnchor.transform.localPosition.z
                  );
                prevUp = up;
            }

            if(Input.GetKeyDown(KeyCode.Mouse1))
            {
                DropObject();
            }
        }
    }

    public void GrabObject(Transform objectToGrab)
    {
        if (!holding)
        {
            HeldObject = objectToGrab.gameObject;
            heldObjectScale = objectToGrab.localScale;
            Vector3 HoldObjectPos = HeldObject.GetComponent<Grabable>().HoldOffsetPos;
            Vector3 HoldObjectRot = HeldObject.GetComponent<Grabable>().HoldOffsetRot;
            objectToGrab.SetParent(GrabPoint.transform);
            objectToGrab.position = GrabPoint.transform.position + HoldObjectPos;
            objectToGrab.rotation = GrabPoint.transform.rotation * Quaternion.Euler(HoldObjectRot);
            FixedJoint joint = objectToGrab.gameObject.AddComponent<FixedJoint>();
            joint.connectedBody = Arm.GetComponent<Rigidbody>();
            holding = true;
        }
        

    }
    public void DropObject()
    {
        if (!holding)
            return;
        else
        {
            HeldObject.transform.SetParent(null);
            Destroy(HeldObject.GetComponent<FixedJoint>());
            holding = false;
            up = false;
            HeldObject.transform.localScale = heldObjectScale;
            HeldObject = null;
            
        }
    }
}
