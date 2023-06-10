using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RepairSystem : SolarAddons
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
                float mostDamagedValue = 1.0f;
                Ship mostDamagedShip = null;
                foreach (Ship ship in fleet.shipsInFleet)
                {
                    float damageValue = (float)ship.GetCurrentHealth() / (float)ship.maxHealth;

                    if (damageValue < mostDamagedValue)
                    {
                        mostDamagedValue = damageValue;
                        mostDamagedShip = ship;
                    }
                }
                if (mostDamagedShip != null)
                {
                    mostDamagedShip.DamageRepaired(1);
                    return;
                }
                // All ships are repaired. Stop looking.
                repairing = false;
            }
        }
    }
}
