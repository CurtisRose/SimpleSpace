Planets HDRP by FORGE3D (https://forge3d.com)

------------ Getting Started ------------

[!] Requires High Definition RP (HDRP) version 14.0.5+

[!] To prevent the Fog from blocking the Directional Light coming from underneath the planet please follow this steps:

1. Open up the HDRP Wizard and Embed Configuration Editable Package from "Window > Rendering > HDRP Wizard"

2. Add the new line "#define LIGHT_EVALUATION_NO_HEIGHT_FOG" to the "Packages/High Definition RP Config/Runtime/ShaderConfig.cs.hlsl" 

[>>>] The example bellow shows the added line for your convenience:
 
#ifndef SHADERCONFIG_CS_HLSL
#define SHADERCONFIG_CS_HLSL
//
// UnityEngine.Rendering.HighDefinition.ShaderOptions:  static fields
//
#define LIGHT_EVALUATION_NO_HEIGHT_FOG
#define SHADEROPTIONS_COLORED_SHADOW (1)
....
....
....
#endif

[!] If you encounter atmosphere flickering make sure to adjust your Camera Near Plane to a higher value (such as 0.2 or higher).
You can also increase the Scene Camera near plane value by clicking the camera icon in the top-right corner of the scene view.

------------ Helpful Links ------------

Online Documentation:   https://docs.forge3d.com 
Unity Asset Store:      https://assetstore.unity.com/publishers/2659

------------ Community and Support ------------

Email support:          https://forge3d.com/contact/
Discord:                https://discord.gg/c9JQuDC

------------ Thank you! ------------

We really hope you like using Planets HDRP, and sincerely appreciate your time to provide us with comments, feedback, and suggestions. 

Please share your ideas in the Discord server (https://discord.gg/c9JQuDC) and leave us a review:
https://u3d.as/30Ag  


