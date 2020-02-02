using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwordController : MonoBehaviour
{
    public float temperature;
    public float heatedUpTemp;
    public bool readyForGrinding; 
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
        HaloGradient[] hgs = GetComponentsInChildren<HaloGradient>();
        foreach(HaloGradient hg in hgs)
        {
            hg.SwordState = newState;
        }
    }
}
