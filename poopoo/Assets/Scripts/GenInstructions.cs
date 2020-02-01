using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GenInstructions : MonoBehaviour
{
    public Text instrText;
    public string instr;
    // Start is called before the first frame update
    void Start()
    {
        instr = "";
        instr += " 1.\tHeat the blade in the forge";
        instr += " \n2.\tHammer the blade til it looks right";
        instr += " \n3.\tCool the blade";
        instr += " \n4.\tSharpen";
        instr += " \n\nJust practice. You'll get it eventually kid. Be careful, these warriors are something else 'round here";
        instr += " \n\t\t- Kaseki the Smith";

        instrText.text = instr;
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
