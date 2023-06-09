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

    private void Start()
    {
        //Debug.Log("HealthBarStarted");
        ship = GetComponentInParent<ShipUIElement>().ship;
        if (ship != null)
        {
            gameObject.name += " " + ship.name;
        }
        healthChunks = new List<Image>();
        for (int i = 0; i < ship.maxHealth; i++)
        {
            Image newHealthChunk = Instantiate<Image>(healthChunk, this.transform);
            newHealthChunk.color = Color.white;
            healthChunks.Add(newHealthChunk);
        }
        UpdateHealth();
        //Debug.Log("HealthBar has " + healthChunks.Count + " health chunks");
    }

    public void UpdateHealth()
    {
        //Debug.Log("HealthBar has is being updated for " + ship.name);
        //string test = gameObject.name;
        if (ship != null)
        {
            for (int i = 0; i < ship.maxHealth; i++)
            {
                if (healthChunks[i] == null)
                {
                    Debug.Log("Test Health Bar Image Missing");
                    continue;
                }
                // Health colors down from the top, which is 0
                if (i < ship.maxHealth - ship.GetCurrentHealth())
                {
                    healthChunks[i].color = Color.red;
                }
                else
                {
                    healthChunks[i].color = Color.white;
                }
            }
        }
        else
        {
            //shipImage.color = new Color(1, 0, 0, 0.8f);
            //shipSelectorImage.color = Color.red;
        }
    }
}
