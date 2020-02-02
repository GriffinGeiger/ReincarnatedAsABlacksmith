using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Video;
using UnityEngine.SceneManagement;

public class VideoController : MonoBehaviour
{

    double Time;
    double currentTime;

    // Start is called before the first frame update
    void Start()
    {
        Time = gameObject.GetComponent<VideoPlayer>().clip.length;

    }

    // Update is called once per frame
    void Update()
    {
        currentTime = gameObject.GetComponent<VideoPlayer>().time;
        if (currentTime >= Time -1)
        {
            SceneManager.LoadScene(1);
            Debug.Log("Changed scene");
        }
    }
}
