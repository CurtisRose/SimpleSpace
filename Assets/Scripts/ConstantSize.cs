using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ConstantSize : MonoBehaviour
{
    float initialOrthographicSize = 10f;
    float initialScale = 1f;
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
        float size = Mathf.Clamp(camera.orthographicSize, 5.0f, 20f);
        float ratio = size / initialOrthographicSize;
        transform.localScale = initialScale * ratio * Vector3.one;
    }
}