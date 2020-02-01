using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

public class HaloGradient : MonoBehaviour
{
    [SerializeField] private bool _isEnabled = true;
    [SerializeField] private Color _color = Color.red;
    [SerializeField] private float _size = 0.001f;
    [SerializeField] public float _timeVar = 0;
    //public float timeVar { get { return _timeVar;  } }
    Gradient gradient;
    GradientColorKey[] colorKey;
    GradientAlphaKey[] alphaKey;

    void Start()
    {
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

        _color = gradient.Evaluate(_timeVar);
    }


    private void Update()
    {
        _timeVar += 0.02f;
        if (_timeVar > 1f) _timeVar = 0;
        _color = gradient.Evaluate(_timeVar);
        SerializedObject halo = new SerializedObject(GetComponent("Halo"));
        halo.FindProperty("m_Size").floatValue = _size;
        halo.FindProperty("m_Enabled").boolValue = _isEnabled;
        halo.FindProperty("m_Color").colorValue = _color;
        halo.ApplyModifiedProperties();
    }
}