using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwordController : MonoBehaviour
{
    public float temperature = 0f;
    public float _kelvinRoom = 293f;
    public float heatedUpTemp = 300f;
    public float _tempDecrement = 5f;
    private bool pounded;
    public float coolingBonus = .3f; //Increases based on temperature when dipped in the slime
    public float bathCoolingRate = 10f;
    public float bathCoolingTemp = 0f;
    public enum SwordState
    {
        RawAndCold,
        Heating,
        HeatedUp,
        Pounding,
        CoolingBath,
        Cooled,
        Grinding,
        Done
    }


    public SwordState CurrentState;

    // Start is called before the first frame update
    void Start()
    {
        temperature = _kelvinRoom;
        CurrentState = SwordState.RawAndCold;
    }

    // Update is called once per frame
    void Update()
    {
        UpdateHaloState(CurrentState);

        switch (CurrentState)
        {
            case SwordState.RawAndCold:
                break;
            case SwordState.Heating:
                
                break;
            case SwordState.HeatedUp:
                if (temperature > _kelvinRoom)
                    temperature -= _tempDecrement * Time.deltaTime;
                break;
            case SwordState.Pounding:
                break;
            case SwordState.CoolingBath:
                temperature -= bathCoolingRate *Time.deltaTime;
                Debug.Log("Temperature " + temperature);

                    if (temperature <= CoolingBath.cooledTemp)
                    {
                        if (bathCoolingTemp > 700)
                        {
                            coolingBonus = Mathf.Clamp((CoolingBath.goalTemperature - temperature) / CoolingBath.goalTemperature, .4f, 1f);
                        }
                        else
                        {
                            coolingBonus = Mathf.Clamp((bathCoolingTemp / CoolingBath.goalTemperature), .4f, 1f);
                            ;
                        }
                    Debug.Log("Cooling bonus: " + coolingBonus);
                    CurrentState = SwordController.SwordState.Cooled;
                    bathCoolingTemp = 0f;
         
                    }

                break;
            case SwordState.Cooled:
                break;
            case SwordState.Done:
                break;
            default:
                break;
        } 
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
