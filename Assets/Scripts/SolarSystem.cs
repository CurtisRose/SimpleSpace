using System.Collections;
using System.Collections.Generic;
using UnityEngine;

enum SystemType { NONE, PRODUCTION, RESOURCE, REPAIR };

public class SolarSystem : SelectableObject
{
    [SerializeField] string solarSystemName;
    [SerializeField] SystemType systemType;
    [SerializeField] List<SolarSystem> neighbors;
    [SerializeField] Fleet fleet;
    Color systemColor;
    [SerializeField] Transform targetingReticle;

    public BattleManager battleManager;

    [SerializeField] SolarSystemUI solarSystemUI;
    [SerializeField] public FleetSelection fleetSelection;
    
    private void Start()
    {
        UpdatePlanetType();
        gameObject.name = solarSystemName;
        targetingReticle.gameObject.SetActive(false);
        battleManager = GetComponentInChildren<BattleManager>();
    }

    // Called when values change in inspector
    void OnValidate()
    {
        // Causes error, but does it's job
        UpdatePlanetType();
    }

    public override void Select()
    {
        base.Select();
        solarSystemUI.DisplayUI();
    }

    public override void Unselect()
    {
        base.Unselect();
        solarSystemUI.HideUI();
    }

    void UpdatePlanetType()
    {
        if (systemType == SystemType.NONE)
        {
            systemColor = Color.grey;
        }
        else if (systemType == SystemType.PRODUCTION)
        {
            systemColor = Color.red;
        }
        else if (systemType == SystemType.RESOURCE)
        {
            systemColor = Color.blue;
        }
        else if (systemType == SystemType.REPAIR)
        {
            systemColor = Color.green;
        }
        else
        {
            systemColor = Color.magenta;
        }
        GetComponentInChildren<Renderer>().material.color = systemColor;
    }


    public List<SolarSystem> GetNeighbors()
    {
        return neighbors;
    }

    public Fleet GetFleet()
    {
        return fleet;
    }

    public void FleetArrival(Fleet arrivingFleet)
    {
        if (this.fleet == null || this.fleet.shipsInFleet.Count <= 0)
        {
            SetFleet(arrivingFleet);
        }
        else
        {
            // If there is no battle yet
            if (!battleManager.HasBattleStarted())
            {
                // If they are on the same team merge them
                if (this.fleet.teamNumber == arrivingFleet.teamNumber)
                {
                    this.fleet.MergeFleet(arrivingFleet);
                } else // If they are not on the same team, start battle
                {
                    battleManager.StartBattle(fleet, arrivingFleet);
                }
            } else // If there is already a battle happening
            {
                // Add the fleet to the battle
                battleManager.AddNewFleetToBattle(arrivingFleet);
            }
        }
        // If this system is selected, update it's UI since a fleet just arrived
        if (selected)
        {
            solarSystemUI.UpdateUI();
        }
    }

    public void FleetDeparting(Fleet departingFleet)
    {
        if (fleet != null && fleet.shipsInFleet.Count <= 0)
        {
            fleet = null;
        }
        // If this system is selected, update it's UI since a fleet just arrived
        if (selected)
        {
            solarSystemUI.UpdateUI();
        }
    }

    private void SetFleet(Fleet otherFleet)
    {
        if (otherFleet != null)
        {
            this.fleet = otherFleet;
        }
    }

    public float Heuristic(SolarSystem goal)
    {
        if (!neighbors.Contains(goal))
        {
            return float.MaxValue;
        }
        // This could be a simple distance calculation for example:
        return Vector3.Distance(transform.position, goal.transform.position);
    }

    public Fleet CreateNewFleet(List<Ship> ships)
    {
        GameObject newFleetObject = new GameObject("NewFleet");
        newFleetObject.transform.position = this.transform.position;
        Fleet newFleet = newFleetObject.AddComponent<Fleet>();
        newFleet.shipsInFleet = new List<Ship>(ships);
        foreach(Ship ship in newFleet.shipsInFleet)
        {
            ship.transform.parent = newFleet.transform;
        }
        newFleet.name = "New Fleet";
        newFleet.currentSystem = this;

        foreach(Ship ship in ships)
        {
            fleet.shipsInFleet.Remove(ship);
        }

        if (fleet.shipsInFleet.Count == 0)
        {
            Destroy(fleet.gameObject);
        }

        return newFleet;
    }

    public void TargetSystem()
    {
        StartCoroutine(TargetSystemCoroutine());
    }

    IEnumerator TargetSystemCoroutine()
    {
        targetingReticle.gameObject.SetActive(true);
        float time = 0f;
        while (time < 1.0f)
        {
            time += Time.deltaTime;
            yield return null;
        }
        targetingReticle.gameObject.SetActive(false);
    }

    public bool InSpaceCombat()
    {
        return battleManager.HasBattleStarted();
    }
}
