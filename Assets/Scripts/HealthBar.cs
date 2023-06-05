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

    private void Start()
    {
        ship = GetComponentInParent<ShipUIElement>().ship;
        healthChunks = new List<Image>();
        for (int i = 0; i < ship.maxHealth; i++)
        {
            Image newHealthChunk = Instantiate<Image>(healthChunk, this.transform);
            newHealthChunk.color = Color.white;
            healthChunks.Add(newHealthChunk);
        }
        ship.OnHealthModified += UpdateHealth;
        UpdateHealth();
    }

    public void UpdateHealth()
    {
        for (int i = 0; i < ship.maxHealth - ship.currentHealth; i++)
        {
            if (i < healthChunks.Count)
            {
                healthChunks[i].color = Color.red;
            }
        }
        if (ship.currentHealth <= 0)
        {
            shipImage.color = new Color(1, 0, 0, 0.8f);
        }
    }
    private void OnDisable()
    {
        //ship.OnHealthModified -= UpdateHealth;
    }
}
