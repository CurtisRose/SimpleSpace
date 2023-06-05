using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Rotate : MonoBehaviour
{
    [SerializeField] float rotationRate;
    [SerializeField] Vector3 rotationAxis;

    void Update()
    {
        transform.Rotate(rotationAxis, rotationRate * Time.deltaTime);
    }
}
