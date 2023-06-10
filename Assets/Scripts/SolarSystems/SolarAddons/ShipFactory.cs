using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShipFactory : SolarAddons
{
    [SerializeField] List<Ship> ships;
    SolarSystem solarSystem;

    private void Awake()
    {
        solarSystem = GetComponent<SolarSystem>();
    }

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.P))
        {
            BuildShip(0);
        }
    }

    void BuildShip(int i)
    {
        Fleet fleet = solarSystem.GetFleet();
        
        Ship builtShip = Instantiate(ships[i], solarSystem.transform.position, Quaternion.identity);
        builtShip.ChangeColor(Team.GetTeamColor(solarSystem.teamName));

        if (fleet == null)
        {
            List<Ship> shipList = new List<Ship>();
            shipList.Add(builtShip);
            fleet = solarSystem.CreateNewFleet(new List<Ship>(shipList));
            solarSystem.FleetArrival(fleet);
        }
        else
        {
            fleet.AddShip(builtShip);
        }
    }
}
