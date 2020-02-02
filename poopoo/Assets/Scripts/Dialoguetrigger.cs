using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Dialoguetrigger : MonoBehaviour
{

    public TextAsset TextFileAsset; // your imported text file for your 
    public Image Avatar;
    public bool TriggerWithButton;
    public GameObject optionalButtonIndicator;
    public Vector3 optionalIndicatorOffset = new Vector3(0, 0, 0);
    private Queue<string> dialogue = new Queue<string>(); // stores the dialogue (Great Performance!)
    private float waitTime = 0.5f; // lag time for advancing dialogue so you can actually read it
    private float nextTime = 0f; // used with waitTime to create a timer system
    private bool dialogueTiggered;
    private GameObject indicator;

    public static bool orderComplete;
    public static bool orderAccepted;
    public static bool orderDialogue;


    /// <summary>
    ///  all WAIFU IMAGES
    /// 
    /// </summary>
    public TextAsset WT1;
    public TextAsset WT2;
    public TextAsset WT3;
    public TextAsset WT4;
    public TextAsset WT5;
    public TextAsset WT6;
    public TextAsset WT7;
    public TextAsset WT8;
    public TextAsset WT9;
    public TextAsset WT10;
    public TextAsset[] waifuDialog;

    public Sprite s0;
    public Sprite s1;
    public Sprite s2;
    public Sprite s3;
    public Sprite s4;
    public Sprite s5;
    public Sprite s6;
    public Sprite s7;
    public Sprite s8;
    public Sprite s9;

    public Sprite[] images;

    // public Material m0;
    // public Material m1;
    // public Material m2;
    // public Material m3;
    // public Material m4;
    // public Material m5;
    // public Material m6;
    // public Material m7;
    // public Material m8;
    // public Material m9;

    // public Material[] material;

    private int[] textPlacements;
    private int[] imgPlacements;

    // Start is called before the first frame update
    void Start()
    {
        // Fill in the arrays
        textPlacements = new int[10];
        imgPlacements = new int[10];

        // Randomize the values within the arrays
        textPlacements = randomizeValues(textPlacements);
        imgPlacements = randomizeValues(imgPlacements);

        // Create arrays for the assets
        waifuDialog = new TextAsset[10];
        images = new Sprite[10];
        // material = new Material[10];
        fill_Arrays();

        TextFileAsset = waifuDialog[textPlacements[0]];
        Avatar.sprite = null;
        Avatar.sprite = images[imgPlacements[0]];

        GetComponent<SpriteRenderer>().sprite = images[imgPlacements[0]];
        GetComponent<BoxCollider>().isTrigger = true;

        orderComplete = false;
        orderAccepted = true;
        orderDialogue = true;

        // Debug.Log(material);
        // GetComponent<MeshRenderer>().material = this.material[inum];

        if (optionalButtonIndicator != null)
        {
            indicator = GameObject.Instantiate(optionalButtonIndicator);
            indicator.transform.parent = transform;
            indicator.transform.localPosition = optionalIndicatorOffset;
            indicator.SetActive(false);
        }

    }

    // Generates randomize the numbers
    private int[] randomizeValues(int[] array) {
        for (int i = 0; i < array.Length; i++) {
            array[i] = i;
        }

        for (int i = 0;i < array.Length;++i)
        {
            int randomIndex = Random.Range(0, array.Length);
            int temp = array[randomIndex];
            array[randomIndex] = array[i];
            array[i] = temp;
        }
        
        return array;
    }

    void fill_Arrays()
    {
        waifuDialog[0] = WT1;
        waifuDialog[1] = WT2;
        waifuDialog[2] = WT3;
        waifuDialog[3] = WT4;
        waifuDialog[4] = WT5;
        waifuDialog[5] = WT6;
        waifuDialog[6] = WT7;
        waifuDialog[7] = WT8;
        waifuDialog[8] = WT9;
        waifuDialog[9] = WT10;
        
        images[0] = s0;
        images[1] = s1;
        images[2] = s2;
        images[3] = s3;
        images[4] = s4;
        images[5] = s5;
        images[6] = s6;
        images[7] = s7;
        images[8] = s8;
        images[9] = s9;
            
        // material[0] = m0;
        // material[1] = m1;
        // material[2] = m2;
        // material[3] = m3;
        // material[4] = m4;
        // material[5] = m5;
        // material[6] = m6;
        // material[7] = m7;
        // material[8] = m8;
        // material[9] = m9;
        
    }


    void TriggerDialogue()
    {
        ReadTextFile(); // loads in the text file
        FindObjectOfType<DialogueManager>().StartDialogue(dialogue); // Accesses Dialogue Manager and Starts Dialogue
    }


    private void ReadTextFile()
    {
        string txt = TextFileAsset.text;

        string[] lines = txt.Split(System.Environment.NewLine.ToCharArray()); // Split dialogue lines by newline

        foreach (string line in lines) // for every line of dialogue
        {
            if (!string.IsNullOrEmpty(line))// ignore empty lines of dialogue
            {
                if (line.StartsWith("[")) // e.g [NAME=Michael] Hello, my name is Michael
                {
                    string special = line.Substring(0, line.IndexOf(']') + 1); // special = [NAME=Michael]
                    string curr = line.Substring(line.IndexOf(']') + 1); // curr = Hello, ...
                    dialogue.Enqueue(special); // adds to the dialogue to be printed
                    dialogue.Enqueue(curr);
                }
                else
                {
                    dialogue.Enqueue(line); // adds to the dialogue to be printed
                }
            }
        }

        dialogue.Enqueue("EndQueue");
    }

    void Update() {
        StartCoroutine(newCharacter());
    }

    IEnumerator newCharacter() {

        if (Input.GetKeyDown("p") || orderComplete) {

            int rndIndex = Random.Range(1, textPlacements.Length);

            TextFileAsset = waifuDialog[textPlacements[rndIndex]];
            Avatar.sprite = null;
            Avatar.sprite = images[imgPlacements[rndIndex]];
            GetComponent<SpriteRenderer>().sprite = images[imgPlacements[rndIndex]];
            GetComponent<BoxCollider>().isTrigger = true;

            orderAccepted = true;
            orderComplete = false;
            orderDialogue = true;
        }

        if (!orderDialogue) {
            GetComponent<BoxCollider>().isTrigger = false;
        }

        yield return new WaitForSeconds(1);


    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            if (!TriggerWithButton)
            {
                TriggerDialogue();
            }
            // Debug.Log("Collision");
        }
    }
   
    private void OnTriggerStay(Collider other)
    {
        // Debug.Log(other.name);
        if (other.gameObject.tag == "Player" && Input.GetButton("Jump") && nextTime < Time.timeSinceLevelLoad)
        {
            if (!dialogueTiggered)
            {
                TriggerDialogue();
                dialogueTiggered = true;
                if (indicator != null && indicator.activeSelf == true)
                {
                    indicator.SetActive(false);
                }
                nextTime = Time.timeSinceLevelLoad + waitTime;
            }
            else
            {
                nextTime = Time.timeSinceLevelLoad + waitTime;
                FindObjectOfType<DialogueManager>().AdvanceDialogue();
            }
        }
        else if (other.gameObject.tag == "Player")
        {
            if (!dialogueTiggered)
            {
                // Debug.Log("Press Space");
                if (indicator != null && indicator.activeSelf == false)
                {
                    indicator.SetActive(true);
                }
            }
        }
    }
    private void OnTriggerExit(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            FindObjectOfType<DialogueManager>().EndDialogue();
            dialogueTiggered = false;

            if (indicator != null && indicator.activeSelf == true)
            {
                indicator.SetActive(false);
            }
        }
    }



  
}
