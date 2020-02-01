using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ChangeText : MonoBehaviour
{   
    // Text variable for the order
    public Text order;

    // Start is called before the first frame update
    void Start()
    {
        order.text = "Taking Orders";
        StartCoroutine(updateOrder());
    }

    // Update is called once per frame
    void Update()
    {

    }

    // Testing dynamically updating chalk board
    IEnumerator updateOrder() {
        yield return new WaitForSeconds(5);
        order.text = "" + Random.Range(1, 10) + " Swords Ordered";
    }
}
