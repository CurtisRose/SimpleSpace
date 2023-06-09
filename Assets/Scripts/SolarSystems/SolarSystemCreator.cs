using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SolarSystemCreator : MonoBehaviour
{
    List<SolarSystem> solarSystems;

    [SerializeField] List<Transform> stars;
    [SerializeField] List<Transform> terrestrialPlanets;
    [SerializeField] List<Transform> gasPlanets;
    [SerializeField] List<Transform> moons;
    [SerializeField] List<float> orbitalDistances;

    private void Awake()
    {
        solarSystems = new List<SolarSystem>(GetComponentsInChildren<SolarSystem>());
        for (int i = 0; i < 6; i++)
        {
            float distance = (0.4f + (0.3f * Mathf.Pow(2,i)))*2;
            orbitalDistances.Add(distance);
        }
        LetThereBeLight();
    }

    void LetThereBeLight()
    {
        foreach(SolarSystem solarSystem in solarSystems)
        {
            int randomStar = Random.Range(0, stars.Count);
            Transform star = Instantiate(stars[randomStar], solarSystem.transform.position, Quaternion.identity, solarSystem.transform);
            star.localScale = Vector3.one;// * Random.Range(5,15)/10;
            solarSystem.star = star;

            /*for (int i = 0; i < solarSystem.numberOfPlanets; i++)
            {
                float gasTerrestrialChance = Random.Range(0, 4);
                if (gasTerrestrialChance <= 2)
                {

                    int randomPlanet = Random.Range(0, terrestrialPlanets.Count);

                    float x = Random.Range(0, 360);
                    float y = Random.Range(0, 360);
                    float z = Random.Range(0, 360);
                    Quaternion randomRotation = Quaternion.Euler(x, y, z);

                    Transform planet = Instantiate(terrestrialPlanets[randomPlanet], solarSystem.transform.position + new Vector3(orbitalDistances[i], 0, 0), randomRotation, solarSystem.transform);
                    planet.localScale = Vector3.one / 20 * (Random.Range(3, 15) / 10);
                } else
                {
                    int randomPlanet = Random.Range(0, gasPlanets.Count);

                    float x = Random.Range(0, 360);
                    float y = Random.Range(0, 360);
                    float z = Random.Range(0, 360);
                    Quaternion randomRotation = Quaternion.Euler(x, y, z);

                    Transform planet = Instantiate(gasPlanets[randomPlanet], solarSystem.transform.position + new Vector3(orbitalDistances[i], 0, 0), randomRotation, solarSystem.transform);
                    planet.localScale = Vector3.one / 10 * (Random.Range(10,20) / 10);
                }
            }*/
        }
    }
}
