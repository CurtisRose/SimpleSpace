using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class SolarSystemUI : MonoBehaviour
{
    // Solar System this UI Element is Attached to
    [SerializeField] SolarSystem solarSystem;

    // Main Panel for Selected Planet
    [SerializeField] Transform UIPanel;
    [SerializeField] Text mainText;
    [SerializeField] Text secondaryText;

    // Fleet Panel For Selected Planet
    [SerializeField] Transform fleetPanel;
    [SerializeField] Text fleetName;
    [SerializeField] Text fleetText;
    [SerializeField] Transform fleetContentContainer;

    // Battle Panel for Selected Planet
    [SerializeField] Transform fleetBattlePanel;
    [SerializeField] Transform fleetCombatInfoContentLocation;
    [SerializeField] Transform fleetCombatInfoPrefab;

    [SerializeField] ShipUIElement shipUIElement;

    [SerializeField] FleetSelection fleetSelection;

    private void Start()
    {
        mainText.text = solarSystem.GetName();
    }

    public void DisplayUI()
    {
        UpdateUI();
    }

    public void HideUI()
    {
        UIPanel.gameObject.SetActive(false);
        fleetBattlePanel.gameObject.SetActive(false);
    }

    public void UpdateUI()
    {
        if (solarSystem.InSpaceCombat())
        {
            DisplayFleetBattlePanel();
        }
        else
        {
            DisplaySolarSystemPanel();
            if (solarSystem.GetFleet() != null)
            {
                DisplayFleetInfoPanel(solarSystem.GetFleet());
            } else
            {
                fleetSelection.ClearSelection();
                fleetPanel.gameObject.SetActive(false);
            }
        }
    }

    private void DisplaySolarSystemPanel()
    {
        UIPanel.gameObject.SetActive(true);
        mainText.text = solarSystem.GetName();
        secondaryText.text = "This is a solar system";
    }

    private void DisplayFleetInfoPanel(Fleet fleet)
    {
        if (fleet != null)
        {
            foreach (Transform child in fleetContentContainer.transform)
            {
                Destroy(child.gameObject);
            }

            // Clear Selection, selection will be updated
            fleetSelection.ClearSelection();

            fleetPanel.gameObject.SetActive(true);
            fleetName.text = fleet.GetFleetName();
            fleetText.text = fleet.shipsInFleet.Count + " Ships in fleet.";
            foreach (Ship ship in fleet.shipsInFleet)
            {
                ShipUIElement UIElement = Instantiate(shipUIElement, Vector3.zero, Quaternion.identity, fleetContentContainer);
                UIElement.ship = ship;
            }

        }
        else
        {
            fleetPanel.gameObject.SetActive(false);
        }
    }

    private void DisplayFleetBattlePanel()
    {
        BattleManager battleManager = solarSystem.battleManager;

    }
}
