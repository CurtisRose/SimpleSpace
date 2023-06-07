using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RepairSystem : MonoBehaviour
{
    [SerializeField] SolarSystem solarSystem;
    [SerializeField] float repairRate;
    float repairTimer;
    Fleet fleet;
    bool repairing = false;

    private void Start()
    {
        solarSystem.OnFleetArrival += FleetArrived;
    }

    void FleetArrived(Fleet arrivedFleet)
    {
        fleet = arrivedFleet;
        repairing = true;
        repairTimer = 0.0f;
    }

    private void Update()
    {
        if (repairing)
        {
            repairTimer += Time.deltaTime;
            if (repairTimer > repairRate)
            {
                repairTimer = 0.0f;
                foreach (Ship ship in fleet.shipsInFleet)
                {
                    if (ship.GetCurrentHealth() < ship.maxHealth)
                    {
                        ship.DamageRepaired(1);
                        return;
                    }
                }
                // All ships are repaired. Stop looking.
                repairing = false;
            }
        }
    }
}
