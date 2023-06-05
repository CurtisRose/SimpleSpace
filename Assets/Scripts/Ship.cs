using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum ShipType { FIGHTER };
public class Ship : MonoBehaviour
{
    [SerializeField] public ShipType type;
    [SerializeField] public int attackPower;
    [SerializeField] public float attackRate;
    [SerializeField] public int maxHealth;
    public int currentHealth;
    [SerializeField] public float speed;

    public delegate void HealthModified();
    public event HealthModified OnHealthModified;

    private void Start()
    {
        currentHealth = maxHealth;
    }

    public void TakeDamage(int damageTaken)
    {
        currentHealth -= damageTaken;
        if (OnHealthModified != null)
        {
            OnHealthModified();
        }
        if (damageTaken <= 0)
        {
            GetComponentInParent<Fleet>().ShipDestroyed(this);
            Destroy(this.gameObject);
        }
    }

    public void DamageRepaired(int damageRepaired)
    {
        currentHealth += damageRepaired;
        if (currentHealth > maxHealth)
        {
            currentHealth = maxHealth;
        }
        if (OnHealthModified != null)
        {
            OnHealthModified();
        }
    }

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            TakeDamage(1);
        }
    }
}
