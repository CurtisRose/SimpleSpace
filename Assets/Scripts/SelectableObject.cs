using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SelectableObject : MonoBehaviour
{
    [SerializeField] Transform selectionReticle;
    [SerializeField] protected bool selected;

    public virtual void Select()
    {
        selected = true;
        selectionReticle.gameObject.SetActive(true);
    }

    public virtual void Unselect()
    {
        selected = false;
        selectionReticle.gameObject.SetActive(false);
    }

    public virtual string GetName ()
    {
        return gameObject.name;
    }
}
