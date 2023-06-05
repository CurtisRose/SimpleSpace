using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BattleManager : MonoBehaviour
{
    [SerializeField] SpriteRenderer battleIndicator;
    [SerializeField] float blinkRate;
    bool battleStarted;
    [SerializeField] List<Fleet> fleetsInCombat;


    private void Awake()
    {
        battleIndicator.gameObject.SetActive(false);
    }

    public bool HasBattleStarted()
    {
        return battleStarted;
    }

    public void AddNewFleetToBattle(Fleet newFleet)
    {
        bool teamAlreadyInCombat = false;
        foreach(Fleet fleet in fleetsInCombat)
        {
            if (newFleet.teamNumber == fleet.teamNumber)
            {
                fleet.MergeFleet(newFleet);
                teamAlreadyInCombat = true;
                break;
            }
        }
        // Somebody is third-partying.... Rude
        if (!teamAlreadyInCombat)
        {
            fleetsInCombat.Add(newFleet);
        }
    }

    public void StartBattle(Fleet A, Fleet B)
    {
        fleetsInCombat.Add(A);
        fleetsInCombat.Add(B);
        battleStarted = true;
        Debug.Log("Battle Starting");
        StartCoroutine(BlinkBattleIndicator());
    }

    public void StopBattle()
    {
        StopAllCoroutines();
        battleIndicator.gameObject.SetActive(false);
        battleStarted = false;
    }

    IEnumerator BlinkBattleIndicator()
    {
        battleIndicator.gameObject.SetActive(true);
        while (true)
        {
            float timer = 0;
            while (timer < blinkRate)
            {
                timer += Time.deltaTime;
                Color color = battleIndicator.color;
                color.a = Mathf.Lerp(0.5f, 1f, timer / blinkRate);
                battleIndicator.color = color;
                yield return null;
            }
        }
    }
}
