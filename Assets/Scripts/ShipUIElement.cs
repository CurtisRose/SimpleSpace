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
    public bool selectable = true;

    [SerializeField] Slider attackRateSlider;

    void Start()
    {
        fleetSelection = GetComponentInParent<FleetSelection>();
        if (fleetSelection != null)
        {
            fleetSelection.AddShip(ship);
        }
        selectorImage.gameObject.SetActive(true);
        selectorImage.color = selectedColors[(int)SelectorColor.SELECTED];
        attackRateSlider.maxValue = ship.attackRate;
        attackRateSlider.value = 0;
        ship.OnAttackTimerModified += ChangeAttackRateSlider;
    }

    private void ChangeAttackRateSlider(float amount)
    {
        attackRateSlider.value = amount;
    }

    public void OnPointerEnter(PointerEventData eventData)
    {
        if (selectable)
        {
            selectorImage.gameObject.SetActive(true);
            selectorImage.color = selectedColors[(int)SelectorColor.HOVERED];
        }
    }

    public void OnPointerExit(PointerEventData eventData)
    {
        if (selectable)
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
    }

    public void OnPointerUp(PointerEventData eventData)
    {
        if (selectable)
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
    }

    public void OnPointerDown(PointerEventData eventData)
    {
        if (selectable)
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
}
