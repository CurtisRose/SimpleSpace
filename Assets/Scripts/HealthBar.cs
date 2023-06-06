using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HealthBar : MonoBehaviour
{
    [SerializeField] Image healthChunk;
    List<Image> healthChunks;
    int current;
    [SerializeField] Ship ship;
    [SerializeField] Image shipImage;
    [SerializeField] Image shipSelectorImage;

    private void Start()
    {
        //Debug.Log("HealthBarStarted");
        ship = GetComponentInParent<ShipUIElement>().ship;
        gameObject.name += " " + ship.name;
        healthChunks = new List<Image>();
        for (int i = 0; i < ship.maxHealth; i++)
        {
            Image newHealthChunk = Instantiate<Image>(healthChunk, this.transform);
            newHealthChunk.color = Color.white;
            healthChunks.Add(newHealthChunk);
        }
        ship.OnHealthModified += UpdateHealth;
        UpdateHealth();
        //Debug.Log("HealthBar has " + healthChunks.Count + " health chunks");
    }

    public void UpdateHealth()
    {
        //Debug.Log("HealthBar has is being updated for " + ship.name);
        string test = gameObject.name;
        if (ship != null)
        {
            for (int i = 0; i < ship.maxHealth - ship.currentHealth; i++)
            {
                if (i < healthChunks.Count)
                {
                    string shipName = ship.name;
                    healthChunks[i].color = Color.red;
                }
            }
            if (ship.currentHealth <= 0)
            {
                shipImage.color = new Color(1, 0, 0, 0.8f);
                shipSelectorImage.color = Color.red;
            }
        }
        else
        {
            //shipImage.color = new Color(1, 0, 0, 0.8f);
            //shipSelectorImage.color = Color.red;
        }
    }

    private void OnEnable()
    {
        if (ship != null)
        {
            ship.OnHealthModified += UpdateHealth;
        }
    }
    private void OnDisable()
    {
        if (ship != null)
        {
            ship.OnHealthModified -= UpdateHealth;
        }
    }
}
