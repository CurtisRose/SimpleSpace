using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ConstantSize : MonoBehaviour
{
    float initialFOVSize = 10f;
    [SerializeField] float initialScale = 1f;
    [SerializeField] float minSize = 5f;
    [SerializeField] float maxSize = 20f;
    Camera camera;

    private void Start()
    {
        camera = Camera.main;
        Adjust();
    }

    private void Update()
    {
        Adjust();
    }

    private void Adjust()
    {
        float size = Mathf.Clamp(camera.transform.position.y, minSize, maxSize);
        float ratio = size / initialFOVSize;
        transform.localScale = initialScale * ratio * Vector3.one;
    }
}