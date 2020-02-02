using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

public class HaloGradient : MonoBehaviour
{
    [SerializeField] public bool _isEnabled = true;
    [SerializeField] private Color _color = Color.red;
    [SerializeField] private float _size = 0.02f;
    //[SerializeField] public float _timeVar = 0;
    [SerializeField] public float _poundQuality = 0f;
    [SerializeField] public float _grindQuality = 0f;
    //If minimum gets passed then sword breaks.
    public float _poundGrindQualityMinimum = -100f;
    [SerializeField] private bool _broken = false;
    public float _poundStrength = .2f;
    public float _grindSpeed = .0001f;

    //public float timeVar { get { return _timeVar;  } }
    Gradient gradient;
    GradientColorKey[] colorKey;
    GradientAlphaKey[] alphaKey;
    public SwordController.SwordState SwordState = SwordController.SwordState.RawAndCold;
    public SwordController SwordRef;

    void Start()
    {
        SwordRef = GetComponentInParent<SwordController>();

        gradient = new Gradient();
        // Populate the color keys at the relative time 0 and 1 (0 and 100%)
        colorKey = new GradientColorKey[2];
        colorKey[0].color = Color.red;
        colorKey[0].time = 0.0f;
        colorKey[1].color = Color.green;
        colorKey[1].time = 1.0f;

        // Populate the alpha  keys at relative time 0 and 1  (0 and 100%)
        alphaKey = new GradientAlphaKey[2];
        alphaKey[0].alpha = 1.0f;
        alphaKey[0].time = 0.0f;
        alphaKey[1].alpha = 0.0f;
        alphaKey[1].time = 1.0f;

        gradient.SetKeys(colorKey, alphaKey);

        //_color = gradient.Evaluate(_timeVar);
    }

    bool poundedThisFrame = false;
    bool grindedThisFrame = false;

    private void Update()
    {
        SerializedObject halo = new SerializedObject(GetComponent("Halo"));
        //_timeVar += 0.02f;
        _isEnabled = false; // set true if in a state that needs it

        switch (SwordState)
        {
            case SwordController.SwordState.RawAndCold:
                //Grindstone breaks instantly
                //Pounding breaks instantly
                if (grindedThisFrame)
                {
                    _broken = true;
                    grindedThisFrame = false;
                }
                if(poundedThisFrame)
                {
                    _broken = true;
                    poundedThisFrame = false;
                }
                break;
            case SwordController.SwordState.Heating:
                //Grindstone breaks instantly
                //Pounding breaks
                if (grindedThisFrame)
                {
                    _broken = true;
                    grindedThisFrame = false;
                }
                if (poundedThisFrame)
                {
                    _broken = true;
                    poundedThisFrame = false;
                }

                break;
            case SwordController.SwordState.HeatedUp:
                //Grindstone breaks
                
                if (grindedThisFrame)
                {
                    _broken = true;
                    grindedThisFrame = false;
                }
                //Pounding degrades if not pounded on anvil
                if (poundedThisFrame)
                {
                    //Subtract quality
                    _poundQuality -= _poundStrength;
                    poundedThisFrame = false;
                }
                break;
                //In this state when on anvil
            case SwordController.SwordState.Pounding:
                //Grindstone breaks
                
                if (grindedThisFrame)
                {
                    _broken = true;
                    grindedThisFrame = false;
                }
                //Pounding works if hot enough
                if (poundedThisFrame)
                {
                    
                    if (SwordRef.temperature >= SwordRef.heatedUpTemp)
                    {
                        //Add quality
                        _poundQuality += _poundStrength;
                    }else
                    {
                        _poundQuality -= _poundStrength;
                    }
                    poundedThisFrame = false;
                }
                _color = gradient.Evaluate(_poundQuality);
                _isEnabled = true;
                break;

            case SwordController.SwordState.Cooled:
                //Grinding Works 
                
                if (grindedThisFrame)
                {
                    //Add quality
                    _grindQuality += _grindSpeed;
                    grindedThisFrame = false;
                }
                //Pounding Breaks
                if (poundedThisFrame)
                {
                    _broken = true;
                    poundedThisFrame = false;
                }
                
                break;
                // On grindstone
            case SwordController.SwordState.Grinding:
                if (grindedThisFrame)
                {
                    if (SwordRef.temperature <= SwordRef.heatedUpTemp)
                    {
                        //Add quality
                        _grindQuality += _grindSpeed;
                    }
                    else
                    {
                        _grindQuality -= _grindSpeed;
                    }
                    grindedThisFrame = false;
                }
                //Pounding Breaks
                if (poundedThisFrame)
                {
                    _broken = true;
                    poundedThisFrame = false;
                }
                _color = gradient.Evaluate(_grindQuality);
                _isEnabled = true;
                break;
            case SwordController.SwordState.Done:
                
                if (grindedThisFrame)
                {
                    //Add Quality
                    _grindQuality += _grindSpeed;
                    grindedThisFrame = false;
                }
                //Pounding breaks
                if (poundedThisFrame)
                {
                    _broken = true;
                    poundedThisFrame = false;
                }
                break;
            default:
                break;
        }
       /* if (_timeVar > 1f)
        {
            _timeVar = 0;
            _broken = true;
        }
        */
        if(_grindQuality > 1f || _poundQuality > 1f || 
            _poundQuality <= _poundGrindQualityMinimum 
            ||_grindQuality <= _poundGrindQualityMinimum)
        {
            Debug.Log("Halo broke: " + name);
            _broken = true;
            _grindQuality = 0f;
            _poundQuality = 0f;
        }

        if (_broken)
            _color = new Color(139,0,0);
        
        halo.FindProperty("m_Size").floatValue = _size;
        halo.FindProperty("m_Enabled").boolValue = _isEnabled;
        halo.FindProperty("m_Color").colorValue = _color;
        halo.ApplyModifiedProperties();
    }

    public void Pound()
    {
        poundedThisFrame = true;
        _grindQuality = 0f;
    }

    public void Grind()
    {
        grindedThisFrame = true;
        Debug.Log("Grinding dat brass");
    }
}