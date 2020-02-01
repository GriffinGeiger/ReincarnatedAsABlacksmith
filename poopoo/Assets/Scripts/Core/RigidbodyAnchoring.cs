using System.Collections;
using System.Collections.Generic;
using UnityEngine;
//Take our own rigidbody and bring it closer to an object
public class RigidbodyAnchoring : MonoBehaviour
{
    public Transform Object;
    public float force;
    private Rigidbody rb;
    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    private void FixedUpdate()
    {
        rb.AddForce((rb.position - Object.position) * force);
    }




}
