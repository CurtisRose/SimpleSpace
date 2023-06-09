using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum ShipType { FIGHTER };
public class Ship : MonoBehaviour
{
    [SerializeField] public ShipType type;
    [SerializeField] public int attackPower;
    [SerializeField] public float attackRate;
    float attackTimer;
    [SerializeField] public int maxHealth;
    int currentHealth;
    [SerializeField] public float speed;

    public delegate void HealthModified();
    public event HealthModified OnHealthModified;

    public delegate void Attacked(Ship ship);
    public event Attacked OnAttacked;

    public delegate void AttackTimer(float amount);
    public event AttackTimer OnAttackTimerModified;

    public delegate void Killed(Ship ship);
    public event Attacked OnKilled;

    public GameObject shipModel;

    private void Start()
    {
        currentHealth = maxHealth;
    }

    public void ModifyAttackTimer(float amount)
    {
        if (currentHealth <= 0)
        {
            return;
        }
        attackTimer += amount;
        if (attackTimer >= attackRate)
        {
            if (OnAttacked != null)
            {
                OnAttacked(this);
            }
            attackTimer = 0;
        }
        if (OnAttackTimerModified != null)
        {
            OnAttackTimerModified(attackTimer);
        }
    }

    public void TakeDamage(int damageTaken)
    {
        currentHealth -= damageTaken;
        if (OnHealthModified != null)
        {
            OnHealthModified();
        }
        if (currentHealth <= 0)
        {
            GetComponentInParent<Fleet>().ShipDestroyed(this);
            OnKilled(this);
            //Destroy(this.gameObject);
            Destroy(shipModel);
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

    public int GetCurrentHealth()
    {
        return currentHealth;
    }
}
