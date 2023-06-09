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
    [SerializeField] Transform UIPanelBorder;
    [SerializeField] Transform UIPanelHorizontalThing;
    [SerializeField] Text mainText;
    [SerializeField] Text secondaryText;

    // Fleet Panel For Selected Planet
    [SerializeField] Transform fleetPanel;
    [SerializeField] Transform fleetPanelBorder;
    [SerializeField] Text fleetName;
    [SerializeField] Text fleetText;
    [SerializeField] Transform fleetContentContainer;

    // Battle Panel for Selected Planet
    [SerializeField] Transform fleetBattlePanel;
    [SerializeField] Text fleetBattlePanelText;

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
        HideUI();
        // If the solar system is not selected, then don't display it's info
        if (solarSystem.IsSelected())
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
                }
                else
                {
                    fleetSelection.ClearSelection();
                    fleetPanel.gameObject.SetActive(false);
                }
            }
        }
    }

    private void DisplaySolarSystemPanel()
    {
        UIPanel.gameObject.SetActive(true);
        mainText.text = solarSystem.GetName();
        secondaryText.text = "This is a solar system";

        Color color = Team.GetTeamColor(solarSystem.teamName);
        Color existingColor = UIPanel.GetComponent<Image>().color;
        color.a = existingColor.a;
        UIPanel.GetComponent<Image>().color = color;

        existingColor = UIPanelBorder.GetComponent<Image>().color;
        color.a = existingColor.a;
        UIPanelBorder.GetComponent<Image>().color = color;

        existingColor = UIPanelHorizontalThing.GetComponent<Image>().color;
        color.a = existingColor.a;
        UIPanelHorizontalThing.GetComponent<Image>().color = color;
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

            Color color = Team.GetTeamColor(solarSystem.teamName);
            Color existingColor = fleetPanel.GetComponent<Image>().color;
            color.a = existingColor.a;
            fleetPanel.GetComponent<Image>().color = color;

            existingColor = fleetPanelBorder.GetComponent<Image>().color;
            color.a = existingColor.a;
            fleetPanelBorder.GetComponent<Image>().color = color;

        }
        else
        {
            fleetPanel.gameObject.SetActive(false);
        }
    }

    private void DisplayFleetBattlePanel()
    {
        fleetBattlePanel.gameObject.SetActive(true);
        fleetBattlePanelText.text = "Fleet Battle at " + solarSystem.GetName();
        foreach(ShipUIElement shipUIElement in this.gameObject.GetComponentsInChildren<ShipUIElement>())
        {
            shipUIElement.UpdateData();
        }
    }
}
