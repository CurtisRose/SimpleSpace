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

    // Battle Panel for Selected Planet
    [SerializeField] Transform fleetCombatInfoContentLocation;
    [SerializeField] Transform fleetCombatInfoPrefab;
    [SerializeField] ShipUIElement shipUIElement;


    private void Awake()
    {
        battleIndicator.gameObject.SetActive(false);
    }

    private void Update()
    {
        // Loop through all ships
        // Attack any random ship in any other fleet (all ships from the same team get merged into the same fleet upon arrival)
        // Keep going until only one fleet remains.
        if (!battleStarted)
        {
            return;
        }
        float deltaTime = Time.deltaTime;
        foreach(Fleet fleet in fleetsInCombat)
        {
            foreach(Ship ship in fleet.shipsInFleet)
            {
                ship.ModifyAttackTimer(deltaTime);
            }
        }
    }

    private void ShipDestroyed(Ship ship)
    {
        // Check to see if either fleet is empty;
        int numRemainingFleets = 0;
        foreach(Fleet fleet in fleetsInCombat)
        {
            if (fleet.shipsInFleet.Count > 0)
            {
                numRemainingFleets += 1;
            }
        }

        if (numRemainingFleets <= 1)
        {
            StopBattle();
        }
    }

    public bool HasBattleStarted()
    {
        return battleStarted;
    }

    public void AddNewFleetToBattle(Fleet newFleet)
    {
        bool teamAlreadyInCombat = false;
        int whichFleet = -1;
        foreach(Fleet fleet in fleetsInCombat)
        {
            whichFleet += 1;
            if (newFleet.teamName == fleet.teamName)
            {
                fleet.MergeFleet(newFleet);
                teamAlreadyInCombat = true;
                break;
            }
        }

        if (teamAlreadyInCombat)
        {
            Transform fleetCombatInfo = fleetCombatInfoContentLocation.GetChild(whichFleet);
            foreach (Ship ship in newFleet.shipsInFleet)
            {
                ShipUIElement newShipUIElement = Instantiate<ShipUIElement>(shipUIElement, fleetCombatInfo.GetChild(1).GetChild(0).GetChild(0));
                newShipUIElement.ship = ship;
                newShipUIElement.selectable = false;
                ship.OnAttacked += ShipAttacked;
                ship.OnKilled += ShipDestroyed;
            }
        }
        // Somebody is third-partying.... Rude
        else
        {
            fleetsInCombat.Add(newFleet);
            Transform fleetCombatInfo = Instantiate<Transform>(fleetCombatInfoPrefab, fleetCombatInfoContentLocation);
            foreach (Ship ship in newFleet.shipsInFleet)
            {
                ShipUIElement newShipUIElement = Instantiate<ShipUIElement>(shipUIElement, fleetCombatInfo.GetChild(1).GetChild(0).GetChild(0));
                newShipUIElement.ship = ship;
                newShipUIElement.selectable = false;
                ship.OnAttacked += ShipAttacked;
                ship.OnKilled += ShipDestroyed;
            }
        }
    }

    private void ShipAttacked(Ship ship)
    {
        //Debug.Log(ship.name + " Attacked Another Ship... But Which One?");
        // Find a ship to attack
        Team.TeamName teamName = ship.GetComponentInParent<Fleet>().teamName;
        List<Ship> shipsToAttack = new List<Ship>();
        foreach(Fleet fleet in fleetsInCombat)
        {
            if (fleet.teamName == teamName)
            {
                continue;
            } else
            {
                foreach(Ship enemyShip in fleet.shipsInFleet)
                {
                    if (enemyShip.currentHealth > 0)
                    {
                        shipsToAttack.Add(enemyShip);
                    }
                }
            }
        }

        if (shipsToAttack.Count > 0)
        {
            int randomShip = Random.Range(0, shipsToAttack.Count);
            shipsToAttack[randomShip].TakeDamage(ship.attackPower);
        }
    }

    public void StartBattle(Fleet A, Fleet B)
    {
        AddNewFleetToBattle(A);
        AddNewFleetToBattle(B);


        battleStarted = true;
        Debug.Log("Battle Starting");
        StartCoroutine(BlinkBattleIndicator());
    }

    public void StopBattle()
    {
        // Maybe wait some amount of time to end the battle.
        StopAllCoroutines();
        battleIndicator.gameObject.SetActive(false);
        battleStarted = false;
        for (int i = fleetsInCombat.Count - 1; i >= 0; i--)
        {
            if (fleetsInCombat[i].shipsInFleet.Count <= 0)
            {
                Destroy(fleetsInCombat[i].gameObject);
                fleetsInCombat.RemoveAt(i);
            }
        }
        for (int i = fleetsInCombat.Count - 1; i >= 0; i--)
        {
            if (fleetsInCombat[i].shipsInFleet.Count > 0)
            {
                GetComponentInParent<SolarSystem>().FleetArrival(fleetsInCombat[i]);
            }
        }
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
