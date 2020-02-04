using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Pause : MonoBehaviour
{
    public Canvas HUD;
    public Canvas PauseMenu;
    bool paused = false;
    public Slider mouseSensitivity;
    public Text mouseSensitivityValue;
    // Start is called before the first frame update
    void Start()
    {
        PauseMenu.enabled = false;
    }

    // Update is called once per frame
    void Update()
    {
#if UNITY_EDITOR
        if(Input.GetKeyDown(KeyCode.Tab))
#else
        if(Input.GetKeyDown(KeyCode.Escape))
#endif
        {
            paused = !paused;
            if(paused)
            {
                PauseMenu.enabled = true;
                HUD.enabled = false;
                Cursor.lockState = CursorLockMode.None;
                Cursor.visible = true;
                FindObjectOfType<MouseLook>().active = false;
                FindObjectOfType<PlayerMovement>().active = false;
            }
            else
            {
                PauseMenu.enabled = false;
                HUD.enabled = true;
                Cursor.lockState = CursorLockMode.Locked;
                Cursor.visible = false;
                FindObjectOfType<MouseLook>().active = true;
                FindObjectOfType<PlayerMovement>().active = true;
                //Lock in settings
                FindObjectOfType<MouseLook>().mouseSensitivity = mouseSensitivity.value;

            }
            
        }
        mouseSensitivityValue.text = "" + Mathf.Round(mouseSensitivity.value);
    }
}
