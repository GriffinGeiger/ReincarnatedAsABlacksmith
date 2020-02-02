using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class FillFactionBar : MonoBehaviour
{
    public ScoreManager factionScoring;
    public Image FillImg;
    private Slider slider;
    // Start is called before the first frame update
    void Start()
    {
        factionScoring = GetComponentInChildren<ScoreManager>();
        slider = GetComponent<Slider>();

    }
    // Update is called once per frame
    void Update()
    {
        if (slider == null)
        {
            Debug.Log("nil slider");
        }

        float fillvalue = factionScoring.difference;
        Debug.Log(fillvalue);
        slider.value = fillvalue;


        if (Input.GetKeyDown("1"))
        {
            factionScoring.addScore(1,10);
            
        }
        if (Input.GetKeyDown("2"))
        {
            factionScoring.addScore(0, 10);
         


            
        }
    }
}
