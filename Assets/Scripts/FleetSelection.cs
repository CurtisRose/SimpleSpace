using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FleetSelection : MonoBehaviour
{
    List<Ship> shipsSelected;

    private void Awake()
    {
        shipsSelected = new List<Ship>();
    }

    public void AddShip(Ship ship)
    {
        if (!shipsSelected.Contains(ship)) {
            shipsSelected.Add(ship);
        }
        foreach(Ship existingShip in shipsSelected)
        {
            if (existingShip == ship)
            {
                continue;
            }
        }
    }

    public void RemoveShip(Ship ship)
    {
        shipsSelected.Remove(ship);
    }

    private void OnEnable()
    {
        // Whenever the fleet menu opens, create new list, "delete" old fleet. A new one will populate
        shipsSelected = new List<Ship>();
    }

    public List<Ship> GetSelectedShips()
    {
        return shipsSelected;
    }

    public int GetNumberOfSelectedShips()
    {
        return shipsSelected.Count;
    }

    public void ClearSelection()
    {
        shipsSelected.Clear();
    }
}
