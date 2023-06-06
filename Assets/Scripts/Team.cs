using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class Team
{
    public enum TeamName { NONE, RED, GREEN, BLUE}

    public static Color GetTeamColor(TeamName color)
    {
        if (color == TeamName.RED)
        {
            return Color.red;
        }
        else if (color == TeamName.GREEN)
        {
            return Color.green;
        }
        else if (color == TeamName.BLUE)
        {
            return Color.blue;
        } else
        {
            return Color.white;
        }
    }

}
