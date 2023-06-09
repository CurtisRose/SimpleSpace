using System.Collections;
using System.Collections.Generic;
using UnityEngine.EventSystems;
using UnityEngine;

public class CameraController : MonoBehaviour
{
    public float panSpeed = 20f;
    public float panBorderThickness = 10f;
    public float scrollSpeed = 20f;
    public float smoothSpeed = 2.0f;
    public float minFov = 15f;
    public float maxFov = 90f;
    public Vector2 limitX = new Vector2(-40f, 40f);
    public Vector2 limitZ = new Vector2(-40f, 40f);
    Camera cameraActual;
    public float panSpeedActual;
    public float targetOrtho;

    private void Awake()
    {
        cameraActual = GetComponent<Camera>();
        targetOrtho = cameraActual.orthographicSize;
    }

    void Update()
    {
        Vector3 pos = transform.position;
        float orthSize = cameraActual.orthographicSize;

        panSpeedActual = panSpeed * orthSize;

        if (Input.GetKey("w") || Input.mousePosition.y >= Screen.height - panBorderThickness)
        {
            pos.z += panSpeedActual * Time.deltaTime;
        }
        if (Input.GetKey("s") || Input.mousePosition.y <= panBorderThickness)
        {
            pos.z -= panSpeedActual * Time.deltaTime;
        }
        if (Input.GetKey("d") || Input.mousePosition.x >= Screen.width - panBorderThickness)
        {
            pos.x += panSpeedActual * Time.deltaTime;
        }
        if (Input.GetKey("a") || Input.mousePosition.x <= panBorderThickness)
        {
            pos.x -= panSpeedActual * Time.deltaTime;
        }

        pos.x = Mathf.Clamp(pos.x, limitX.x, limitX.y);
        pos.z = Mathf.Clamp(pos.z, limitZ.x, limitZ.y);

        transform.position = pos;

        ZoomingNew();
    }

    void ZoomingOld()
    {
        float orthSize = cameraActual.orthographicSize;
        float scroll = 0;
        // If mouse is over UI, don't zoom in and out. UI might be responding to it.
        if (!EventSystem.current.IsPointerOverGameObject())
        {
            scroll = Input.GetAxis("Mouse ScrollWheel");
        }
        orthSize -= scroll * scrollSpeed * Time.deltaTime * orthSize;
        orthSize = Mathf.Clamp(orthSize, minFov, maxFov);

        cameraActual.orthographicSize = orthSize;
    }

    void ZoomingNew()
    {
        float scroll = Input.GetAxis("Mouse ScrollWheel");
        float orthSize = cameraActual.orthographicSize;
        if (scroll != 0.0f)
        {
            targetOrtho -= scroll * scrollSpeed * Time.deltaTime * (orthSize);
            targetOrtho = Mathf.Clamp(targetOrtho, minFov, maxFov);
        }

        Camera.main.orthographicSize = Mathf.MoveTowards(cameraActual.orthographicSize, targetOrtho, smoothSpeed * Time.deltaTime);
    }
}
