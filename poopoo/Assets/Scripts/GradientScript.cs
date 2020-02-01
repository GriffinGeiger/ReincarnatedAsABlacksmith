using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GradientScript : MonoBehaviour
{
    public Transform objectTransform;
    public float temperature = 0;
    Gradient gradient;
    GradientColorKey[] colorKey;
    GradientAlphaKey[] alphaKey;
    public float timeVar = 0;
    Material material;
    private Color orange = new Color(1.0f, 0.64f, 0.0f, 1.0f);

    void Start()
    {
        material = GetComponent<Renderer>().material;
        gradient = new Gradient();
        // Populate the color keys at the relative time 0 and 1 (0 and 100%)
        colorKey = new GradientColorKey[2];
        colorKey[0].color = orange;
        colorKey[0].time = 0.0f;
        colorKey[1].color = Color.gray;
        colorKey[1].time = 1.0f;

        // Populate the alpha  keys at relative time 0 and 1  (0 and 100%)
        alphaKey = new GradientAlphaKey[2];
        alphaKey[0].alpha = 1.0f;
        alphaKey[0].time = 0.0f;
        alphaKey[1].alpha = 0.0f;
        alphaKey[1].time = 1.0f;

        gradient.SetKeys(colorKey, alphaKey);

        material.color = gradient.Evaluate(timeVar);
    }

    // Update is called once per frame
    void Update()
    {
        timeVar += 0.01f;
        if (timeVar > 1f) timeVar = 0;
        material.color = gradient.Evaluate(timeVar);
    }
}
