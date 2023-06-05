using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class ShipUIElement : MonoBehaviour,
    IPointerEnterHandler,
    IPointerExitHandler, 
    IPointerUpHandler,
    IPointerDownHandler
{
    [SerializeField] Image selectorImage;
    enum SelectorColor { SELECTED, HOVERED, ONCLICKED };
    [SerializeField] List<Color> selectedColors;
    bool selected = true;

    FleetSelection fleetSelection;

    public Ship ship;

    void Start()
    {
        fleetSelection = GetComponentInParent<FleetSelection>();
        fleetSelection.AddShip(ship);
        selectorImage.gameObject.SetActive(true);
        selectorImage.color = selectedColors[(int)SelectorColor.SELECTED];
    }



    public void OnPointerEnter(PointerEventData eventData)
    {
        selectorImage.gameObject.SetActive(true);
        selectorImage.color = selectedColors[(int)SelectorColor.HOVERED];
    }

    public void OnPointerExit(PointerEventData eventData)
    {
        if (selected)
        {
            selectorImage.color = selectedColors[(int)SelectorColor.SELECTED];
        }
        else
        {
            selectorImage.gameObject.SetActive(false);
        }
    }

    public void OnPointerUp(PointerEventData eventData)
    {
        if (selected)
        {
            selectorImage.color = selectedColors[(int)SelectorColor.SELECTED];
        } else
        {
            selectorImage.gameObject.SetActive(false);
        }
    }

    public void OnPointerDown(PointerEventData eventData)
    {
        if (selected)
        {
            selected = false;
            fleetSelection.RemoveShip(ship);
            selectorImage.color = selectedColors[(int)SelectorColor.ONCLICKED];
        }
        else
        {
            selected = true;
            selectorImage.color = selectedColors[(int)SelectorColor.ONCLICKED];
            fleetSelection.AddShip(ship);
        }
    }
}
