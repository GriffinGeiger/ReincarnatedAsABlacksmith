using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class FactionScoring : MonoBehaviour
{
    //Elves represented by factionID = 0
    public int elfWeaponCount = 0;
    [SerializeField] private float elfAvgScore = 1;

    public float _ELFAvg { get { return elfAvgScore; } }
    //Catgirls represented by factionID = 1
    public int nekoWeaponCount = 0;
    [SerializeField] private float nekoAvgScore = 1;
    
   public  float _NekoAvg {get{ return nekoAvgScore; }}
    public float elfAggScore = 0;
    public float nekoAggScore = 0;

    //Average score required for victory
    public  int victoryThreshold = 80;

    // Updates the faction score based on the given faction
    // and the weapon score
    public  void updateScore(int factionID, int weaponScore) {
        //Elves
        if (factionID == 0) {
            //Expand to the averagable value then update
            //elfAggScore = elfAvgScore * elfWeaponCount;
            elfWeaponCount++; //= elfWeaponCount + 1;
            elfAggScore += weaponScore;//= elfAggScore + weaponScore;
            elfAvgScore /= elfWeaponCount;

            if (victoryReached() == 0) {
                Debug.Log("ELF WIN");
            }
        }
        //Catgirls
        else if (factionID == 1) {
            //Expand to the averagable value then update
           //  nekoAggScore = nekoAvgScore * nekoWeaponCount;
            nekoWeaponCount ++;//nekoWeaponCount + 1;
            nekoAggScore += weaponScore;
            nekoAvgScore /= nekoWeaponCount;
            if (victoryReached() == 1) {
                Debug.Log("NEKO");
            }
        }
        else {
            Debug.LogError("Invalid factionID");
        }
    }

    // Checks to see if either factions score has reached the
    // Threshold needed for the game to end
    // return 0 if elves have won
    // return 1 if catgirls have won
    // return -1 if nobody has won yet
    private  int victoryReached() {
        if (elfAvgScore >= victoryThreshold) {
            return 0;
        }
        else if (nekoAvgScore >= victoryThreshold) {
            return 1;
        }
        else {
            return -1;
        }
    }
}
