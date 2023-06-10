using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Fleet : MonoBehaviour
{
    [SerializeField] public string fleetName;
    [SerializeField] public SolarSystem currentSystem;
    public List<Ship> shipsInFleet;
    public float speed;
    public Team.TeamName teamName;

    private void Start()
    {
        // Fleet speed should be set to the slowest ship in the fleet.
        speed = float.MaxValue;
        foreach (Ship ship in shipsInFleet)
        {
            if (ship.speed < speed)
            {
                speed = ship.speed;
            }
            ship.ChangeColor(Team.GetTeamColor(teamName));
        }
    }

    public string GetFleetName()
    {
        return fleetName;
    }

    public void MoveTo(List<SolarSystem> path)
    {
        currentSystem.FleetDeparting(this);
        StartCoroutine(MoveAlongPath(path));
    }

    private IEnumerator MoveAlongPath(List<SolarSystem> path)
    {
        // Invalid path
        if (path.Count <= 0)
        {
            yield break;
        }

        foreach (SolarSystem solarSystem in path)
        {
            Vector3 direction = (solarSystem.transform.position - transform.position).normalized;
            //Quaternion toRotation = Quaternion.LookRotation(direction);

            while ((solarSystem.transform.position - transform.position).sqrMagnitude > 0.001f)
            {
                //transform.rotation = Quaternion.Slerp(transform.rotation, toRotation, speed * Time.deltaTime);
                transform.position = Vector3.MoveTowards(transform.position, solarSystem.transform.position, speed * Time.deltaTime);
                yield return null; // wait until next frame
            }
            // Finish the move, accounts for the float
            transform.position = solarSystem.transform.position;
            
            // If the system you are passing through has any ships or is already in combat, this fleet must stop and join battle.
            if(solarSystem.GetFleet() != null && 
                (solarSystem.GetFleet().teamName != teamName || 
                solarSystem.InSpaceCombat()))
            {
                solarSystem.FleetArrival(this);
                yield break;
            } else
            {
                solarSystem.FleetArrival(this);
                // If this isn't the target destination, then we are just passing through.
                // Claim it by arriving then continue on
                if (solarSystem != path[path.Count - 1])
                {
                    solarSystem.FleetDeparting(this);
                }
            }
        }
        currentSystem = path[path.Count-1];
    }

    public void MergeFleet(Fleet other)
    {
        foreach(Ship ship in other.shipsInFleet)
        {
            shipsInFleet.Add(ship);
            ship.transform.SetParent(this.transform);
        }
        Destroy(other.gameObject);
    }

    public void ShipDestroyed(Ship ship)
    {
        shipsInFleet.Remove(ship);
    }

    public void AddShip(Ship ship)
    {
        shipsInFleet.Add(ship);
        ship.transform.parent = this.transform;
    }

    public void DestroyFleet()
    {
        Destroy(this.gameObject);
    }
}
