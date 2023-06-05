using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SolarSystemGraph : MonoBehaviour
{
    [SerializeField] List<SolarSystem> solarSystems;
    [SerializeField] List<SolarVertex> solarVertices;

    struct SolarVertex
    {
        SolarSystem solarSystem1;
        SolarSystem solarSystem2;

        public SolarVertex(SolarSystem solarSystem1, SolarSystem solarSystem2)
        {
            this.solarSystem1 = solarSystem1;
            this.solarSystem2 = solarSystem2;
        }

        public bool IsEqual(SolarSystem solarSystem1, SolarSystem solarSystem2)
        {
            if (solarSystem1 == this.solarSystem1 && solarSystem2 == this.solarSystem2)
            {
                return true;
            }
            else if (solarSystem1 == this.solarSystem2 && solarSystem2 == this.solarSystem1)
            {
                return true;
            } else
            {
                return false;
            }
        }
    }

    void Start()
    {
        solarSystems = new List<SolarSystem>(GetComponentsInChildren<SolarSystem>());
        solarVertices = new List<SolarVertex>();
        CreateGraph();
    }

    void CreateGraph()
    {
        foreach(SolarSystem solarSystem in solarSystems)
        {
            foreach(SolarSystem solarNeighbor in solarSystem.GetNeighbors())
            {
                bool vertexExists = false;
                foreach (SolarVertex solarVertex in solarVertices)
                {
                    if (solarVertex.IsEqual(solarSystem, solarNeighbor))
                    {
                        vertexExists = true;
                        break;
                    }
                }

                if (!vertexExists)
                {
                    solarVertices.Add(new SolarVertex(solarSystem, solarNeighbor));
                    
                    // Create a new child object to receive the line renderer
                    GameObject childObject = new GameObject("LinesConnectingSystems");
                    childObject.transform.SetParent(this.transform);
                    childObject.transform.localPosition = Vector3.zero;

                    LineRenderer lineRenderer = childObject.AddComponent<LineRenderer>();
                    lineRenderer.material = new Material(Shader.Find("Unlit/Color"));
                    lineRenderer.material.color = Color.white;
                    lineRenderer.widthCurve = new AnimationCurve(new Keyframe(0, 0.05f), new Keyframe(1, 0.05f));
                    lineRenderer.positionCount = 2;

                    float offsetDistance = 0.8f;
                    Vector3 direction = (solarNeighbor.transform.position - solarSystem.transform.position).normalized;
                    Vector3 startPos = solarSystem.transform.position + direction * offsetDistance;
                    Vector3 endPos = solarNeighbor.transform.position - direction * offsetDistance;

                    lineRenderer.SetPosition(0, startPos);
                    lineRenderer.SetPosition(1, endPos);
                }
            }
        }
    }

    public static List<SolarSystem> AStar(SolarSystem start, SolarSystem goal)
    {
        HashSet<SolarSystem> closedSet = new HashSet<SolarSystem>();
        HashSet<SolarSystem> openSet = new HashSet<SolarSystem> { start };
        Dictionary<SolarSystem, SolarSystem> cameFrom = new Dictionary<SolarSystem, SolarSystem>();
        Dictionary<SolarSystem, float> gScore = new Dictionary<SolarSystem, float>();
        gScore[start] = 0;
        Dictionary<SolarSystem, float> fScore = new Dictionary<SolarSystem, float>();
        fScore[start] = start.Heuristic(goal);

        while (openSet.Count > 0)
        {
            SolarSystem current = null;
            foreach (SolarSystem node in openSet)
            {
                if (current == null || fScore[node] < fScore[current])
                {
                    current = node;
                }
            }

            if (current == goal)
            {
                return ReconstructPath(cameFrom, current);
            }

            openSet.Remove(current);
            closedSet.Add(current);

            foreach (SolarSystem neighbor in current.GetNeighbors())
            {
                if (closedSet.Contains(neighbor))
                {
                    continue;
                }

                float tentativeGScore = gScore[current] + Vector3.Distance(current.transform.position, neighbor.transform.position);

                if (!openSet.Contains(neighbor))
                {
                    openSet.Add(neighbor);
                }
                else if (tentativeGScore >= gScore[neighbor])
                {
                    continue;
                }

                cameFrom[neighbor] = current;
                gScore[neighbor] = tentativeGScore;
                fScore[neighbor] = gScore[neighbor] + neighbor.Heuristic(goal);
            }
        }

        return null; // Path was not found.
    }

    private static List<SolarSystem> ReconstructPath(Dictionary<SolarSystem, SolarSystem> cameFrom, SolarSystem current)
    {
        List<SolarSystem> path = new List<SolarSystem> { current };
        while (cameFrom.ContainsKey(current))
        {
            current = cameFrom[current];
            path.Insert(0, current);
        }

        // Remove First element, it's the starting location
        path.RemoveAt(0);

        return path;
    }
}
