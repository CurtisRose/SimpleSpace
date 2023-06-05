using System.Collections;
using System.Collections.Generic;
using UnityEngine.EventSystems;
using UnityEngine;

public class UserInput : MonoBehaviour
{
    [SerializeField] List<Transform> selectionReticles;
    SelectableObject currentlySelectedObject;

    [SerializeField] SolarSystemGraph solarSystemGraph;

    [SerializeField] List<SolarSystem> path;

    void Update()
    {
        if (Input.GetMouseButtonDown(0))
        {
            if (EventSystem.current.IsPointerOverGameObject())
            {
                //Debug.Log("Clicked on the UI");
                return;
            }

            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;

            if (Physics.Raycast(ray, out hit))
            {
                SelectableObject selectableObject = hit.transform.GetComponentInParent<SelectableObject>();
                if (selectableObject != null)
                {
                    //Debug.Log("Hit object of correct type: " + selectableObject.name);
                    if(currentlySelectedObject != null && currentlySelectedObject != selectableObject)
                    {
                        currentlySelectedObject.Unselect();
                    }
                    currentlySelectedObject = selectableObject;
                    currentlySelectedObject.Select();
                }
            } else
            {
                if (currentlySelectedObject != null)
                {
                    currentlySelectedObject.Unselect();
                    currentlySelectedObject = null;
                }
            }
        }
        if (Input.GetMouseButtonDown(1))
        {
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;

            if (Physics.Raycast(ray, out hit))
            {
                SelectableObject selectableObject = hit.transform.GetComponentInParent<SelectableObject>();
                if (selectableObject != null && selectableObject.GetComponent<SolarSystem>() != null)
                {
                    SolarSystem endSystem = selectableObject.GetComponent<SolarSystem>();
                    if (currentlySelectedObject.GetComponent<SolarSystem>())
                    {
                        SolarSystem startSystem = currentlySelectedObject.GetComponent<SolarSystem>();
                        path = SolarSystemGraph.AStar(startSystem, endSystem);
                        Debug.Log("CalculatedPath");


                        if (startSystem.fleetSelection.GetNumberOfSelectedShips() > 0)
                        {
                            endSystem.TargetSystem();
                            Fleet fleetToTravel = startSystem.CreateNewFleet(startSystem.fleetSelection.GetSelectedShips());
                            fleetToTravel.MoveTo(path);
                        }
                    }
                }
            }
        }
    }

    public SelectableObject GetCurrentlySelectedObject()
    {
        return currentlySelectedObject;
    }
}
