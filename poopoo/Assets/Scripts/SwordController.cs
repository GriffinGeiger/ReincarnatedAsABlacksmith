using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwordController : MonoBehaviour
{
    public float temperature = 0f;
    public float heatedUpTemp = 300f;
    private bool pounded;
    public float temperBonus = .1f; //Increases based on temperature when dipped in the slime
    public enum SwordState
    {
        RawAndCold,
        Heating,
        HeatedUp,
        Pounding,
        Cooled,
        Grinding,
        Done
    }


    public SwordState CurrentState;

    // Start is called before the first frame update
    void Start()
    {
        CurrentState = SwordState.RawAndCold;
    }

    // Update is called once per frame
    void Update()
    {
        UpdateHaloState(CurrentState);
       /* switch (CurrentState)
        {
            case SwordState.RawAndCold:
                break;
            case SwordState.Heating:
                
                break;
            case SwordState.HeatedUp:
                break;
            case SwordState.Pounding:
                break;
            case SwordState.Cooled:
                break;
            case SwordState.Done:
                break;
            default:
                break;
        } */
    }

    void UpdateHaloState(SwordState newState)
    {
        Debug.Log("Temp " + temperature + " , State: " + CurrentState);
        if (newState == SwordState.Pounding)
            pounded = true;
        HaloGradient[] hgs = GetComponentsInChildren<HaloGradient>();
        foreach(HaloGradient hg in hgs)
        {
            hg.SwordState = newState;
            
        }
    }
    public SwordState CooledAmbiently()
    {
        return pounded ? SwordState.Cooled : SwordState.RawAndCold;
    }
}
