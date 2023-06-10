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
    [SerializeField] Camera cameraActual;
    public float panSpeedActual;
    public float targetfov;

    private void Awake()
    {
        targetfov = cameraActual.transform.position.y;
    }

    void Update()
    {
        Vector3 pos = transform.position;
        float zoomAmount = cameraActual.transform.position.y;

        panSpeedActual = panSpeed * zoomAmount;

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

        Zooming();
    }

    void Zooming()
    {
        float scroll = Input.GetAxis("Mouse ScrollWheel");
        Vector3 position = cameraActual.transform.position;
        if (scroll != 0.0f)
        {
            targetfov -= scroll * scrollSpeed * Time.deltaTime * (position.y);
            targetfov = Mathf.Clamp(targetfov, minFov, maxFov);
        }
        position.y = targetfov;
        cameraActual.transform.position = position;
    }
}
