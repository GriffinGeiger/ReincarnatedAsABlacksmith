using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GradientScript : MonoBehaviour
{
    public Transform objectTransform;
    Gradient gradient;
    GradientColorKey[] colorKey;
    GradientAlphaKey[] alphaKey;
    Gradient gradient2;
    GradientColorKey[] colorKey2;
    GradientAlphaKey[] alphaKey2;
    Gradient gradient3;
    GradientColorKey[] colorKey3;
    GradientAlphaKey[] alphaKey3;
    public float timeVar = 0;
    Material material;
    private Color orange = new Color(1.0f, 0.64f, 0.0f, 1.0f);

    void Start()
    {
        material = GetComponent<Renderer>().material;
        gradient = new Gradient();
        // Populate the color keys at the relative time 0 and 1 (0 and 100%)
        colorKey = new GradientColorKey[2];
        colorKey[0].color = Color.white;
        colorKey[0].time = 0.0f;
        colorKey[1].color = orange;
        colorKey[1].time = 1.0f;

        // Populate the alpha  keys at relative time 0 and 1  (0 and 100%)
        alphaKey = new GradientAlphaKey[2];
        alphaKey[0].alpha = 1.0f;
        alphaKey[0].time = 0.0f;
        alphaKey[1].alpha = 0.0f;
        alphaKey[1].time = 1.0f;

        gradient2 = new Gradient();
        // Populate the color keys at the relative time 0 and 1 (0 and 100%)
        colorKey2 = new GradientColorKey[2];
        colorKey2[0].color = orange;
        colorKey2[0].time = 0.0f;
        colorKey2[1].color = Color.white;
        colorKey2[1].time = 1.0f;

        // Populate the alpha  keys at relative time 0 and 1  (0 and 100%)
        alphaKey2 = new GradientAlphaKey[2];
        alphaKey2[0].alpha = 1.0f;
        alphaKey2[0].time = 0.0f;
        alphaKey2[1].alpha = 0.0f;
        alphaKey2[1].time = 1.0f;

        gradient3 = new Gradient();
        // Populate the color keys at the relative time 0 and 1 (0 and 100%)
        colorKey3 = new GradientColorKey[2];
        colorKey3[0].color = orange;
        colorKey3[0].time = 0.0f;
        colorKey3[1].color = Color.black;
        colorKey3[1].time = 2.0f;

        // Populate the alpha  keys at relative time 0 and 1  (0 and 100%)
        alphaKey3 = new GradientAlphaKey[2];
        alphaKey3[0].alpha = 1.0f;
        alphaKey3[0].time = 0.0f;
        alphaKey3[1].alpha = 0.0f;
        alphaKey3[1].time = 2.0f;

        gradient.SetKeys(colorKey, alphaKey);
        gradient2.SetKeys(colorKey2, alphaKey2);
        gradient3.SetKeys(colorKey3, alphaKey3);

        material.EnableKeyword("_EMISSION");
        material.SetColor("_EmissionColor", gradient3.Evaluate(timeVar));
        if (timeVar <= 1f)
        {
            material.color = gradient.Evaluate(timeVar);
        }
        else
        {
            material.color = gradient2.Evaluate((timeVar - 1f));
        }
    }

    // Update is called once per frame
    void Update()
    {
        timeVar += 0.01f;
        if (timeVar > 2f) timeVar = 0;

        material.EnableKeyword("_EMISSION");
        material.SetColor("_EmissionColor", gradient3.Evaluate(timeVar));
        if (timeVar <= 1f)
        {
            material.color = gradient.Evaluate(timeVar);
        }
        else
        {
            material.color = gradient2.Evaluate((timeVar - 1f));
        }
    }
}
