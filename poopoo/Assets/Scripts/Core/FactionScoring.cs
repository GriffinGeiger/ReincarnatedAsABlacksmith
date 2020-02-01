using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FactionScoring
{
    //Elves represented by factionID = 0
    public static int elfWeaponCount = 0;
    public static int elfAvgScore = 0;

    //Catgirls represented by factionID = 1
    public static int nekoWeaponCount = 0;
    public static int nekoAvgScore = 0;

    //Average score required for victory
    public static int victoryThreshold = 80;

    // Updates the faction score based on the given faction
    // and the weapon score
    public void updateScore(int factionID, int weaponScore) {
        //Elves
        if (factionID == 0) {
            //Expand to the averagable value then update
            int elfAggScore = elfAvgScore * elfWeaponCount;
            elfWeaponCount = elfWeaponCount + 1;
            elfAggScore = elfAggScore + weaponScore;
            elfAvgScore = elfAggScore / elfWeaponCount;
            if (victoryReached() == 0) {
                //End game
            }
        }
        //Catgirls
        else if (factionID == 1) {
            //Expand to the averagable value then update
            int nekoAggScore = nekoAvgScore * nekoWeaponCount;
            nekoWeaponCount = nekoWeaponCount + 1;
            nekoAggScore = nekoAggScore + weaponScore;
            nekoAvgScore = nekoAggScore / nekoWeaponCount;
            if (victoryReached() == 1) {
                //End game
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
    private int victoryReached() {
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
