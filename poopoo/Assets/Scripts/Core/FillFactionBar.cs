using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class FillFactionBar : MonoBehaviour
{
    public FactionScoring factionScoring;
    public Image FillImg;
    private Slider slider;
    // Start is called before the first frame update
    void Start()
    {
        factionScoring = GetComponentInChildren<FactionScoring>();
        slider = GetComponent<Slider>();

    }

    // Update is called once per frame
    void Update()
    {
     float fillvalue = factionScoring._NekoAvg / factionScoring._ELFAvg;
        Debug.Log(fillvalue);
        slider.value = fillvalue;


        if (Input.GetKeyDown("p"))
        {
            factionScoring.updateScore(0,1);
            
        }
        if (Input.GetKeyDown("u"))
        {
            factionScoring.updateScore(1, 1);
         


            
        }
    }
}
