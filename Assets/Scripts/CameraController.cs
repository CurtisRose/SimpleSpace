using System.Collections;
using System.Collections.Generic;
using UnityEngine.EventSystems;
using UnityEngine;

public class CameraController : MonoBehaviour
{
    public float panSpeed = 20f;
    public float panBorderThickness = 10f;
    public float scrollSpeed = 20f;
    public float minFov = 15f;
    public float maxFov = 90f;
    public Vector2 limitX = new Vector2(-40f, 40f);
    public Vector2 limitZ = new Vector2(-40f, 40f);

    void Update()
    {
        Vector3 pos = transform.position;
        float orthSize = GetComponent<Camera>().orthographicSize;

        if (Input.GetKey("w") || Input.mousePosition.y >= Screen.height - panBorderThickness)
        {
            pos.z += panSpeed * Time.deltaTime;
        }
        if (Input.GetKey("s") || Input.mousePosition.y <= panBorderThickness)
        {
            pos.z -= panSpeed * Time.deltaTime;
        }
        if (Input.GetKey("d") || Input.mousePosition.x >= Screen.width - panBorderThickness)
        {
            pos.x += panSpeed * Time.deltaTime;
        }
        if (Input.GetKey("a") || Input.mousePosition.x <= panBorderThickness)
        {
            pos.x -= panSpeed * Time.deltaTime;
        }

        float scroll = 0;
        // If mouse is over UI, don't zoom in and out. UI might be responding to it.
        if (!EventSystem.current.IsPointerOverGameObject())
        {
            scroll = Input.GetAxis("Mouse ScrollWheel");
        }
        orthSize -= scroll * scrollSpeed * Time.deltaTime * orthSize;
        orthSize = Mathf.Clamp(orthSize, minFov, maxFov);

        pos.x = Mathf.Clamp(pos.x, limitX.x, limitX.y);
        pos.z = Mathf.Clamp(pos.z, limitZ.x, limitZ.y);

        transform.position = pos;
        GetComponent<Camera>().orthographicSize = orthSize;
    }
}
