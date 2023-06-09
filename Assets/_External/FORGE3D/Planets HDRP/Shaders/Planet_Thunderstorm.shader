// Made with Amplify Shader Editor v1.9.1.3
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "FORGE3D/Planets HD/Thunderstorm"
{
	Properties
	{
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		_NormalMap("Normal Map", 2D) = "white" {}
		_NormalUVTiling("Normal UV Tiling", Float) = 0
		_NormalUVSpeed("Normal UV Speed", Float) = 0
		_NormalTiling("Normal Tiling", Float) = 0
		_NormalSpeed("Normal Speed", Float) = 0
		_NormlalDistortionFactor("Normlal Distortion Factor", Range( -1 , 1)) = 0
		_NormalScale("Normal Scale", Float) = 0
		_DistortionMap("Distortion Map", 2D) = "white" {}
		_DistortionUVMap("Distortion UV Map", 2D) = "white" {}
		_DistortionUVTiling("Distortion UV Tiling", Float) = 0
		_DistortionUVSpeed("Distortion UV Speed", Float) = 0
		_DistortionTiling("Distortion Tiling", Float) = 0
		_DistortionSpeed("Distortion Speed", Float) = 0
		_DistortionFactor("Distortion Factor", Range( -1 , 1)) = 0
		_TintHigh("Tint High", Color) = (0,0,0,0)
		_TintLow("Tint Low", Color) = (0,0,0,0)
		_DetailPow("Detail Pow", Float) = 0
		_DetailBoost("Detail Boost", Float) = 0
		_SpecularColor("Specular Color", Color) = (0,0,0,0)
		_Specular("Specular", Range( 0.03 , 1)) = 1
		_Smoothness("Smoothness", Range( 0 , 1)) = 0.5
		_ScatterMap("Scatter Map", 2D) = "white" {}
		_ScatterColor("Scatter Color", Color) = (0,0,0,0)
		_ScatterBoost("Scatter Boost", Range( 0 , 5)) = 1
		_ScatterIndirect("Scatter Indirect", Range( 0 , 1)) = 0
		_ScatterStretch("Scatter Stretch", Range( -2 , 2)) = 0
		_ScatterCenterShift("Scatter Center Shift", Range( -2 , 2)) = 0
		_FrenselMult("Frensel Mult", Range( 0 , 10)) = 0
		_FresnelPower("Fresnel Power", Range( 0 , 10)) = 0
		_FresnelColor("Fresnel Color", Color) = (0.4558824,0.4558824,0.4558824,1)
		_LightingMaskMap("Lighting Mask Map", 2D) = "white" {}
		_LightingMap("Lighting Map", 2D) = "white" {}
		_LightingMaskATiling("Lighting Mask A Tiling", Float) = 0
		_LightingMaskBTiling("Lighting Mask B Tiling", Float) = 0
		_LightingMaskAUVSpeed("Lighting Mask A UV Speed", Float) = 0
		_LightingMaskBUVSpeed("Lighting Mask B UV Speed", Float) = 0
		_LightingATiling("Lighting A Tiling", Float) = 0
		_LightingBTiling("Lighting B Tiling", Float) = 0
		_LightingAFrequency("Lighting A Frequency", Float) = 0
		_LightingBFrequency("Lighting B Frequency", Float) = 0
		_LightningSineMult("Lightning Sine Mult", Float) = 0
		_LigntingMaskPow("Lignting Mask Pow", Float) = 0
		_LightningBoost("Lightning Boost", Float) = 5
		[ASEEnd]_LightningColor("Lightning Color", Color) = (0,0,0,0)

		[HideInInspector] _RenderQueueType("Render Queue Type", Float) = 1
		[HideInInspector][ToggleUI] _AddPrecomputedVelocity("Add Precomputed Velocity", Float) = 1
		[HideInInspector][ToggleUI] _SupportDecals("Support Decals", Float) = 1.0
		[HideInInspector] _StencilRef("Stencil Ref", Int) = 0 // StencilUsage.Clear
		[HideInInspector] _StencilWriteMask("Stencil Write Mask", Int) = 3 // StencilUsage.RequiresDeferredLighting | StencilUsage.SubsurfaceScattering
		[HideInInspector] _StencilRefDepth("Stencil Ref Depth", Int) = 0 // Nothing
		[HideInInspector] _StencilWriteMaskDepth("Stencil Write Mask Depth", Int) = 8 // StencilUsage.TraceReflectionRay
		[HideInInspector] _StencilRefMV("Stencil Ref MV", Int) = 32 // StencilUsage.ObjectMotionVector
		[HideInInspector] _StencilWriteMaskMV("Stencil Write Mask MV", Int) = 32 // StencilUsage.ObjectMotionVector
		[HideInInspector] _StencilRefDistortionVec("Stencil Ref Distortion Vec", Int) = 4 				// DEPRECATED
		[HideInInspector] _StencilWriteMaskDistortionVec("Stencil Write Mask Distortion Vec", Int) = 4	// DEPRECATED
		[HideInInspector] _StencilWriteMaskGBuffer("Stencil Write Mask GBuffer", Int) = 3 // StencilUsage.RequiresDeferredLighting | StencilUsage.SubsurfaceScattering
		[HideInInspector] _StencilRefGBuffer("Stencil Ref GBuffer", Int) = 2 // StencilUsage.RequiresDeferredLighting
		[HideInInspector] _ZTestGBuffer("ZTest GBuffer", Int) = 4
		[HideInInspector][ToggleUI] _RequireSplitLighting("Require Split Lighting", Float) = 0
		[HideInInspector][ToggleUI] _ReceivesSSR("Receives SSR", Float) = 1
		[HideInInspector][ToggleUI] _ReceivesSSRTransparent("Receives SSR Transparent", Float) = 0
		[HideInInspector] _SurfaceType("Surface Type", Float) = 0
		[HideInInspector] _BlendMode("Blend Mode", Float) = 0
		[HideInInspector] _SrcBlend("Src Blend", Float) = 1
		[HideInInspector] _DstBlend("Dst Blend", Float) = 0
		[HideInInspector] _AlphaSrcBlend("Alpha Src Blend", Float) = 1
		[HideInInspector] _AlphaDstBlend("Alpha Dst Blend", Float) = 0
		[HideInInspector][ToggleUI] _ZWrite("ZWrite", Float) = 1
		[HideInInspector][ToggleUI] _TransparentZWrite("Transparent ZWrite", Float) = 0
		[HideInInspector] _CullMode("Cull Mode", Float) = 2
		[HideInInspector] _TransparentSortPriority("Transparent Sort Priority", Float) = 0
		[HideInInspector][ToggleUI] _EnableFogOnTransparent("Enable Fog", Float) = 1
		[HideInInspector] _CullModeForward("Cull Mode Forward", Float) = 2 // This mode is dedicated to Forward to correctly handle backface then front face rendering thin transparent
		[HideInInspector][Enum(UnityEditor.Rendering.HighDefinition.TransparentCullMode)] _TransparentCullMode("Transparent Cull Mode", Int) = 2 // Back culling by default
		[HideInInspector] _ZTestDepthEqualForOpaque("ZTest Depth Equal For Opaque", Int) = 4 // Less equal
		[HideInInspector][Enum(UnityEngine.Rendering.CompareFunction)] _ZTestTransparent("ZTest Transparent", Int) = 4 // Less equal
		[HideInInspector][ToggleUI] _TransparentBackfaceEnable("Transparent Backface Enable", Float) = 0
		[HideInInspector][ToggleUI] _AlphaCutoffEnable("Alpha Cutoff Enable", Float) = 0
		[HideInInspector][ToggleUI] _UseShadowThreshold("Use Shadow Threshold", Float) = 0
		[HideInInspector][ToggleUI] _DoubleSidedEnable("Double Sided Enable", Float) = 0
		[HideInInspector][Enum(Flip, 0, Mirror, 1, None, 2)] _DoubleSidedNormalMode("Double Sided Normal Mode", Float) = 2
		[HideInInspector] _DoubleSidedConstants("DoubleSidedConstants", Vector) = (1,1,-1,0)

		//_TessPhongStrength( "Tess Phong Strength", Range( 0, 1 ) ) = 0.5
		//_TessValue( "Tess Max Tessellation", Range( 1, 32 ) ) = 16
		//_TessMin( "Tess Min Distance", Float ) = 10
		//_TessMax( "Tess Max Distance", Float ) = 25
		//_TessEdgeLength ( "Tess Edge length", Range( 2, 50 ) ) = 16
		//_TessMaxDisp( "Tess Max Displacement", Float ) = 25

		[HideInInspector][ToggleUI] _TransparentWritingMotionVec("Transparent Writing MotionVec", Float) = 0
		[HideInInspector][Enum(UnityEditor.Rendering.HighDefinition.OpaqueCullMode)] _OpaqueCullMode("Opaque Cull Mode", Int) = 2 // Back culling by default
		[HideInInspector][ToggleUI] _EnableBlendModePreserveSpecularLighting("Enable Blend Mode Preserve Specular Lighting", Float) = 1
		[HideInInspector] _EmissionColor("Color", Color) = (1, 1, 1)

		[HideInInspector][NoScaleOffset] unity_Lightmaps("unity_Lightmaps", 2DArray) = "" {}
        [HideInInspector][NoScaleOffset] unity_LightmapsInd("unity_LightmapsInd", 2DArray) = "" {}
        [HideInInspector][NoScaleOffset] unity_ShadowMasks("unity_ShadowMasks", 2DArray) = "" {}

		[HideInInspector][Enum(Auto, 0, On, 1, Off, 2)] _DoubleSidedGIMode("Double sided GI mode", Float) = 0 //DoubleSidedGIMode added in api 12x and higher

		[HideInInspector][ToggleUI] _AlphaToMaskInspectorValue("_AlphaToMaskInspectorValue", Float) = 0 // Property used to save the alpha to mask state in the inspector
        [HideInInspector][ToggleUI] _AlphaToMask("__alphaToMask", Float) = 0
	}

	SubShader
	{
		LOD 0

		

		Tags { "RenderPipeline"="HDRenderPipeline" "RenderType"="Opaque" "Queue"="Geometry" }

		HLSLINCLUDE
		#pragma target 4.5
		#pragma exclude_renderers glcore gles gles3 ps4 ps5 

		#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
		#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Filtering.hlsl"

		struct GlobalSurfaceDescription // GBuffer Forward META TransparentBackface
		{
			float3 BaseColor;
			float3 Normal;
			float3 BentNormal;
			float3 Specular;
			float CoatMask;
			float Metallic;
			float3 Emission;
			float Smoothness;
			float Occlusion;
			float Alpha;
			float AlphaClipThreshold;
			float AlphaClipThresholdShadow;
			float AlphaClipThresholdDepthPrepass;
			float AlphaClipThresholdDepthPostpass;
			float SpecularAAScreenSpaceVariance;
			float SpecularAAThreshold;
			float SpecularOcclusion;
			float DepthOffset;
			//Refraction
			float RefractionIndex;
			float3 RefractionColor;
			float RefractionDistance;
			//SSS/Translucent
			float DiffusionProfile;
			float TransmissionMask;
			// Transmission + Diffusion Profile
			float Thickness;
			float SubsurfaceMask;
			//Anisotropy
			float Anisotropy;
			float3 Tangent;
			//Iridescent
			float IridescenceMask;
			float IridescenceThickness;
			//BakedGI
			float3 BakedGI;
			float3 BakedBackGI;
			//Virtual Texturing
			float4 VTPackedFeedback;
		};

		struct AlphaSurfaceDescription // ShadowCaster
		{
			float Alpha;
			float AlphaClipThreshold;
			float AlphaClipThresholdShadow;
			float DepthOffset;
		};

		struct SceneSurfaceDescription // SceneSelection
		{
			float Alpha;
			float AlphaClipThreshold;
			float DepthOffset;
		};

		struct PrePassSurfaceDescription // DepthPrePass
		{
			float3 Normal;
			float Smoothness;
			float Alpha;
			float AlphaClipThresholdDepthPrepass;
			float DepthOffset;
		};

		struct PostPassSurfaceDescription //DepthPostPass
		{
			float Alpha;
			float AlphaClipThresholdDepthPostpass;
			float DepthOffset;
		};

		struct SmoothSurfaceDescription // MotionVectors DepthOnly
		{
			float3 Normal;
			float Smoothness;
			float Alpha;
			float AlphaClipThreshold;
			float DepthOffset;
		};

		#ifndef ASE_TESS_FUNCS
		#define ASE_TESS_FUNCS
		float4 FixedTess( float tessValue )
		{
			return tessValue;
		}

		float CalcDistanceTessFactor (float4 vertex, float minDist, float maxDist, float tess, float4x4 o2w, float3 cameraPos )
		{
			float3 wpos = mul(o2w,vertex).xyz;
			float dist = distance (wpos, cameraPos);
			float f = clamp(1.0 - (dist - minDist) / (maxDist - minDist), 0.01, 1.0) * tess;
			return f;
		}

		float4 CalcTriEdgeTessFactors (float3 triVertexFactors)
		{
			float4 tess;
			tess.x = 0.5 * (triVertexFactors.y + triVertexFactors.z);
			tess.y = 0.5 * (triVertexFactors.x + triVertexFactors.z);
			tess.z = 0.5 * (triVertexFactors.x + triVertexFactors.y);
			tess.w = (triVertexFactors.x + triVertexFactors.y + triVertexFactors.z) / 3.0f;
			return tess;
		}

		float CalcEdgeTessFactor (float3 wpos0, float3 wpos1, float edgeLen, float3 cameraPos, float4 scParams )
		{
			float dist = distance (0.5 * (wpos0+wpos1), cameraPos);
			float len = distance(wpos0, wpos1);
			float f = max(len * scParams.y / (edgeLen * dist), 1.0);
			return f;
		}

		float DistanceFromPlaneASE (float3 pos, float4 plane)
		{
			return dot (float4(pos,1.0f), plane);
		}

		bool WorldViewFrustumCull (float3 wpos0, float3 wpos1, float3 wpos2, float cullEps, float4 planes[6] )
		{
			float4 planeTest;
			planeTest.x = (( DistanceFromPlaneASE(wpos0, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos1, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos2, planes[0]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.y = (( DistanceFromPlaneASE(wpos0, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos1, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos2, planes[1]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.z = (( DistanceFromPlaneASE(wpos0, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos1, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos2, planes[2]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.w = (( DistanceFromPlaneASE(wpos0, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos1, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos2, planes[3]) > -cullEps) ? 1.0f : 0.0f );
			return !all (planeTest);
		}

		float4 DistanceBasedTess( float4 v0, float4 v1, float4 v2, float tess, float minDist, float maxDist, float4x4 o2w, float3 cameraPos )
		{
			float3 f;
			f.x = CalcDistanceTessFactor (v0,minDist,maxDist,tess,o2w,cameraPos);
			f.y = CalcDistanceTessFactor (v1,minDist,maxDist,tess,o2w,cameraPos);
			f.z = CalcDistanceTessFactor (v2,minDist,maxDist,tess,o2w,cameraPos);

			return CalcTriEdgeTessFactors (f);
		}

		float4 EdgeLengthBasedTess( float4 v0, float4 v1, float4 v2, float edgeLength, float4x4 o2w, float3 cameraPos, float4 scParams )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;
			tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
			tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
			tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
			tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			return tess;
		}

		float4 EdgeLengthBasedTessCull( float4 v0, float4 v1, float4 v2, float edgeLength, float maxDisplacement, float4x4 o2w, float3 cameraPos, float4 scParams, float4 planes[6] )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;

			if (WorldViewFrustumCull(pos0, pos1, pos2, maxDisplacement, planes))
			{
				tess = 0.0f;
			}
			else
			{
				tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
				tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
				tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
				tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			}
			return tess;
		}
		#endif //ASE_TESS_FUNCS
		ENDHLSL

		
		Pass
		{
			
			Name "GBuffer"
			Tags { "LightMode"="GBuffer" }

			Cull [_CullMode]
			ZTest [_ZTestGBuffer]

			Stencil
			{
				Ref [_StencilRefGBuffer]
				WriteMask [_StencilWriteMaskGBuffer]
				Comp Always
				Pass Replace
			}


			ColorMask [_LightLayersMaskBuffer4] 4
			ColorMask [_LightLayersMaskBuffer5] 5

			HLSLPROGRAM

            #define _SPECULAR_OCCLUSION_FROM_AO 1
            #pragma multi_compile_instancing
            #pragma instancing_options renderinglayer
            #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
            #define _ENERGY_CONSERVING_SPECULAR 1
            #define SUPPORT_BLENDMODE_PRESERVE_SPECULAR_LIGHTING
            #define ASE_SRP_VERSION 140004


            #pragma shader_feature _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
            #pragma shader_feature_local_fragment _ _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ALPHATEST_ON

			#pragma multi_compile_fragment _ SHADOWS_SHADOWMASK
            #pragma multi_compile_fragment _ LIGHT_LAYERS
			#pragma multi_compile_fragment PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2
			#pragma multi_compile _ DEBUG_DISPLAY
			#pragma multi_compile _ LIGHTMAP_ON
			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ DYNAMICLIGHTMAP_ON
			#pragma multi_compile_fragment DECALS_OFF DECALS_3RT DECALS_4RT
			#pragma multi_compile_fragment _ DECAL_SURFACE_GRADIENT

			#pragma vertex Vert
			#pragma fragment Frag

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"

			#define SHADERPASS SHADERPASS_GBUFFER

			#ifndef SHADER_UNLIT
			#if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
			#define VARYINGS_NEED_CULLFACE
			#endif
			#endif

		    #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
		    #endif

		    #if (SHADERPASS == SHADERPASS_PATH_TRACING) && !defined(_DOUBLESIDED_ON) && (defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE))
			#undef  _REFRACTION_PLANE
			#undef  _REFRACTION_SPHERE
			#define _REFRACTION_THIN
		    #endif

			#if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
			#if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
				#define WRITE_NORMAL_BUFFER
			#endif
			#endif

			#ifndef DEBUG_DISPLAY
				#if !defined(_SURFACE_TYPE_TRANSPARENT)
					#if SHADERPASS == SHADERPASS_FORWARD
					#define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
					#elif SHADERPASS == SHADERPASS_GBUFFER
					#define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
					#endif
				#endif
			#endif

			#if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define _DEFERRED_CAPABLE_MATERIAL
			#endif

			#if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
			#define _WRITE_TRANSPARENT_MOTION_VECTOR
			#endif

			CBUFFER_START( UnityPerMaterial )
			float4 _DistortionUVMap_TexelSize;
			float4 _LightningColor;
			float4 _SpecularColor;
			float4 _TintHigh;
			float4 _TintLow;
			float4 _FresnelColor;
			float4 _LightingMaskMap_TexelSize;
			float4 _NormalMap_TexelSize;
			float4 _DistortionMap_TexelSize;
			float4 _LightingMap_TexelSize;
			float4 _ScatterColor;
			float _LightingATiling;
			float _LightingMaskBUVSpeed;
			float _DetailBoost;
			float _LightingAFrequency;
			float _LightingMaskAUVSpeed;
			float _LightingBTiling;
			float _LightingBFrequency;
			float _LightingMaskATiling;
			float _LightningSineMult;
			float _Specular;
			float _LightningBoost;
			float _LigntingMaskPow;
			float _LightingMaskBTiling;
			float _ScatterCenterShift;
			float _DistortionFactor;
			float _ScatterStretch;
			float _ScatterBoost;
			float _ScatterIndirect;
			float _NormalTiling;
			float _NormalSpeed;
			float _NormalUVTiling;
			float _NormalUVSpeed;
			float _NormlalDistortionFactor;
			float _NormalScale;
			float _FresnelPower;
			float _FrenselMult;
			float _DistortionTiling;
			float _DistortionSpeed;
			float _DistortionUVTiling;
			float _DistortionUVSpeed;
			float _DetailPow;
			float _Smoothness;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
            #ifdef SUPPORT_BLENDMODE_PRESERVE_SPECULAR_LIGHTING
			float _EnableBlendModePreserveSpecularLighting;
            #endif
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef ASE_TESSELLATION
			float _TessPhongStrength;
			float _TessValue;
			float _TessMin;
			float _TessMax;
			float _TessEdgeLength;
			float _TessMaxDisp;
			#endif
			CBUFFER_END

		    // Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
			float4 _SelectionID;
            #endif

			// Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
			int _ObjectId;
			int _PassValue;
            #endif

			sampler2D _ScatterMap;
			sampler2D _NormalMap;
			sampler2D _DistortionMap;
			sampler2D _DistortionUVMap;
			sampler2D _LightingMaskMap;
			sampler2D _LightingMap;


            #ifdef DEBUG_DISPLAY
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
            #endif

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			// Setup DECALS_OFF so the shader stripper can remove variants
            #define HAVE_DECALS ( (defined(DECALS_3RT) || defined(DECALS_4RT)) && !defined(_DISABLE_DECALS) )
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"

			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_FRAG_NORMAL
			#define ASE_NEEDS_FRAG_POSITION


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
			#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 positionRWS : TEXCOORD0;
				float3 normalWS : TEXCOORD1;
				float4 tangentWS : TEXCOORD2;
				float4 uv1 : TEXCOORD3;
				float4 uv2 : TEXCOORD4;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};


			
			void BuildSurfaceData(FragInputs fragInputs, inout GlobalSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data
				surfaceData.baseColor =					surfaceDescription.BaseColor;
				surfaceData.perceptualSmoothness =		surfaceDescription.Smoothness;
				surfaceData.ambientOcclusion =			surfaceDescription.Occlusion;
				surfaceData.metallic =					surfaceDescription.Metallic;
				surfaceData.coatMask =					surfaceDescription.CoatMask;

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceData.specularOcclusion =			surfaceDescription.SpecularOcclusion;
				#endif
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.subsurfaceMask =			surfaceDescription.SubsurfaceMask;
				#endif
				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceData.thickness =					surfaceDescription.Thickness;
				#endif
				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceData.diffusionProfileHash =		asuint(surfaceDescription.DiffusionProfile);
				surfaceData.transmissionMask =			surfaceDescription.TransmissionMask;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.specularColor =				surfaceDescription.Specular;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.anisotropy =				surfaceDescription.Anisotropy;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.iridescenceMask =			surfaceDescription.IridescenceMask;
				surfaceData.iridescenceThickness =		surfaceDescription.IridescenceThickness;
				#endif

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.ior = surfaceDescription.RefractionIndex;
					surfaceData.transmittanceColor = surfaceDescription.RefractionColor;
					surfaceData.atDistance = surfaceDescription.RefractionDistance;

					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif


				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
                #ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				surfaceData.normalWS = float3(0, 1, 0);
                #endif
				#ifdef _MATERIAL_FEATURE_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				normalTS = surfaceDescription.Normal;
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );

				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				bentNormalWS = surfaceData.normalWS;

				#ifdef ASE_BENT_NORMAL
				GetNormalWS( fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants );
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.tangentWS = TransformTangentToWorld( surfaceDescription.Tangent, fragInputs.tangentToWorld );
				#endif
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

                #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
                #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
                #endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceData.perceptualSmoothness = GeometricNormalFiltering( surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[ 2 ], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold );
				#endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(GlobalSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				#ifdef _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				#endif

				#ifdef _ALPHATEST_ON
				builtinData.alphaClipTreshold = surfaceDescription.AlphaClipThreshold;
                #endif

				#ifdef UNITY_VIRTUAL_TEXTURING
                builtinData.vtPackedFeedback = surfaceDescription.VTPackedFeedback;
                #endif

				#ifdef ASE_BAKEDGI
				builtinData.bakeDiffuseLighting = surfaceDescription.BakedGI;
				#endif

				#ifdef ASE_BAKEDBACKGI
				builtinData.backBakeDiffuseLighting = surfaceDescription.BakedBackGI;
				#endif

				builtinData.emissiveColor = surfaceDescription.Emission;

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
				float3 ase_worldTangent = TransformObjectToWorldDir(inputMesh.tangentOS.xyz);
				float ase_vertexTangentSign = inputMesh.tangentOS.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				outputPackedVaryingsMeshToPS.ase_texcoord5.xyz = ase_worldBitangent;
				
				outputPackedVaryingsMeshToPS.ase_normal = inputMesh.normalOS;
				outputPackedVaryingsMeshToPS.ase_texcoord6 = float4(inputMesh.positionOS,1);
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord5.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue =  defaultVertexValue ;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS =  inputMesh.normalOS ;
				inputMesh.tangentOS =  inputMesh.tangentOS ;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normalOS);
				float4 tangentWS = float4(TransformObjectToWorldDir(inputMesh.tangentOS.xyz), inputMesh.tangentOS.w);

				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.positionRWS.xyz = positionRWS;
				outputPackedVaryingsMeshToPS.normalWS.xyz = normalWS;
				outputPackedVaryingsMeshToPS.tangentWS.xyzw = tangentWS;
				outputPackedVaryingsMeshToPS.uv1.xyzw = inputMesh.uv1;
				outputPackedVaryingsMeshToPS.uv2.xyzw = inputMesh.uv2;
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.uv1 = v.uv1;
				o.uv2 = v.uv2;
				
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.uv1 = patch[0].uv1 * bary.x + patch[1].uv1 * bary.y + patch[2].uv1 * bary.z;
				o.uv2 = patch[0].uv2 * bary.x + patch[1].uv2 * bary.y + patch[2].uv2 * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			void Frag( PackedVaryingsMeshToPS packedInput,
						OUTPUT_GBUFFER(outGBuffer)
						#ifdef _DEPTHOFFSET_ON
						, out float outputDepth : SV_Depth
						#endif
						
						)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );
				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				float3 positionRWS = packedInput.positionRWS.xyz;
				float3 normalWS = packedInput.normalWS.xyz;
				float4 tangentWS = packedInput.tangentWS.xyzw;

				input.positionSS = packedInput.positionCS;
				input.positionRWS = positionRWS;
				input.tangentToWorld = BuildTangentToWorld(tangentWS, normalWS);
				input.texCoord1 = packedInput.uv1.xyzw;
				input.texCoord2 = packedInput.uv2.xyzw;

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false );
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);
				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);
				SurfaceData surfaceData;
				BuiltinData builtinData;

				GlobalSurfaceDescription surfaceDescription = (GlobalSurfaceDescription)0;
				float3 temp_output_1_0_g255 = packedInput.ase_normal;
				float3 normalizeResult7_g254 = normalize( float3( 0,0,0 ) );
				float dotResult4_g255 = dot( temp_output_1_0_g255 , normalizeResult7_g254 );
				float3 normalizeResult8_g254 = normalize( V );
				float dotResult7_g255 = dot( temp_output_1_0_g255 , normalizeResult8_g254 );
				float2 appendResult10_g255 = (float2(( ( dotResult4_g255 / 2.0 ) + 0.5 ) , dotResult7_g255));
				float3 ase_worldBitangent = packedInput.ase_texcoord5.xyz;
				float3 tanToWorld0 = float3( tangentWS.xyz.x, ase_worldBitangent.x, normalWS.x );
				float3 tanToWorld1 = float3( tangentWS.xyz.y, ase_worldBitangent.y, normalWS.y );
				float3 tanToWorld2 = float3( tangentWS.xyz.z, ase_worldBitangent.z, normalWS.z );
				float3 ase_tanViewDir =  tanToWorld0 * V.x + tanToWorld1 * V.y  + tanToWorld2 * V.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float3 temp_cast_0 = (5.0).xxx;
				float3 temp_output_4_0_g249 = pow( abs( packedInput.ase_normal ) , temp_cast_0 );
				float3 break6_g249 = temp_output_4_0_g249;
				float3 projNormal10_g249 = ( temp_output_4_0_g249 / ( break6_g249.x + break6_g249.y + break6_g249.z ) );
				float localBicubicPrepare2_g251 = ( 0.0 );
				float3 break26_g249 = packedInput.ase_texcoord6.xyz;
				float2 appendResult27_g249 = (float2(break26_g249.z , break26_g249.y));
				float3 nSign18_g249 = sign( packedInput.ase_normal );
				float3 break20_g249 = nSign18_g249;
				float2 appendResult21_g249 = (float2(break20_g249.x , 1.0));
				float temp_output_29_0_g249 = _NormalTiling;
				float temp_output_10_0_g244 = ( _TimeParameters.x * _NormalSpeed );
				float2 appendResult12_g244 = (float2(temp_output_10_0_g244 , temp_output_10_0_g244));
				float3 temp_cast_1 = (5.0).xxx;
				float3 temp_output_4_0_g245 = pow( abs( packedInput.ase_normal ) , temp_cast_1 );
				float3 break6_g245 = temp_output_4_0_g245;
				float3 projNormal10_g245 = ( temp_output_4_0_g245 / ( break6_g245.x + break6_g245.y + break6_g245.z ) );
				float localBicubicPrepare2_g247 = ( 0.0 );
				float3 break26_g245 = packedInput.ase_texcoord6.xyz;
				float2 appendResult27_g245 = (float2(break26_g245.z , break26_g245.y));
				float3 nSign18_g245 = sign( packedInput.ase_normal );
				float3 break20_g245 = nSign18_g245;
				float2 appendResult21_g245 = (float2(break20_g245.x , 1.0));
				float temp_output_29_0_g245 = _NormalUVTiling;
				float temp_output_2_0_g244 = ( _TimeParameters.x * _NormalUVSpeed );
				float2 appendResult5_g244 = (float2(temp_output_2_0_g244 , temp_output_2_0_g244));
				float2 temp_output_65_0_g245 = appendResult5_g244;
				float2 temp_output_68_0_g245 = ( ( appendResult27_g245 * appendResult21_g245 * temp_output_29_0_g245 ) + temp_output_65_0_g245 );
				float2 Input_UV100_g247 = temp_output_68_0_g245;
				float2 UV2_g247 = Input_UV100_g247;
				float4 TexelSize2_g247 = _NormalMap_TexelSize;
				float2 UV02_g247 = float2( 0,0 );
				float2 UV12_g247 = float2( 0,0 );
				float2 UV22_g247 = float2( 0,0 );
				float2 UV32_g247 = float2( 0,0 );
				float W02_g247 = 0;
				float W12_g247 = 0;
				{
				{
				 UV2_g247 = UV2_g247 * TexelSize2_g247.zw - 0.5;
				    float2 f = frac( UV2_g247 );
				    UV2_g247 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g247.x - 0.5, UV2_g247.x + 1.5, UV2_g247.y - 0.5, UV2_g247.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g247.xyxy;
				    UV02_g247 = off.xz;
				    UV12_g247 = off.yz;
				    UV22_g247 = off.xw;
				    UV32_g247 = off.yw;
				    W02_g247 = s.x / ( s.x + s.y );
				 W12_g247 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g247 = lerp( tex2D( _NormalMap, UV32_g247 ) , tex2D( _NormalMap, UV22_g247 ) , W02_g247);
				float4 lerpResult45_g247 = lerp( tex2D( _NormalMap, UV12_g247 ) , tex2D( _NormalMap, UV02_g247 ) , W02_g247);
				float4 lerpResult44_g247 = lerp( lerpResult46_g247 , lerpResult45_g247 , W12_g247);
				float4 Output_2D131_g247 = lerpResult44_g247;
				float localBicubicPrepare2_g248 = ( 0.0 );
				float2 appendResult32_g245 = (float2(break26_g245.x , break26_g245.z));
				float2 appendResult22_g245 = (float2(break20_g245.y , 1.0));
				float2 temp_output_66_0_g245 = ( ( temp_output_29_0_g245 * appendResult32_g245 * appendResult22_g245 ) + temp_output_65_0_g245 );
				float2 Input_UV100_g248 = temp_output_66_0_g245;
				float2 UV2_g248 = Input_UV100_g248;
				float4 TexelSize2_g248 = _NormalMap_TexelSize;
				float2 UV02_g248 = float2( 0,0 );
				float2 UV12_g248 = float2( 0,0 );
				float2 UV22_g248 = float2( 0,0 );
				float2 UV32_g248 = float2( 0,0 );
				float W02_g248 = 0;
				float W12_g248 = 0;
				{
				{
				 UV2_g248 = UV2_g248 * TexelSize2_g248.zw - 0.5;
				    float2 f = frac( UV2_g248 );
				    UV2_g248 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g248.x - 0.5, UV2_g248.x + 1.5, UV2_g248.y - 0.5, UV2_g248.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g248.xyxy;
				    UV02_g248 = off.xz;
				    UV12_g248 = off.yz;
				    UV22_g248 = off.xw;
				    UV32_g248 = off.yw;
				    W02_g248 = s.x / ( s.x + s.y );
				 W12_g248 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g248 = lerp( tex2D( _NormalMap, UV32_g248 ) , tex2D( _NormalMap, UV22_g248 ) , W02_g248);
				float4 lerpResult45_g248 = lerp( tex2D( _NormalMap, UV12_g248 ) , tex2D( _NormalMap, UV02_g248 ) , W02_g248);
				float4 lerpResult44_g248 = lerp( lerpResult46_g248 , lerpResult45_g248 , W12_g248);
				float4 Output_2D131_g248 = lerpResult44_g248;
				float localBicubicPrepare2_g246 = ( 0.0 );
				float2 appendResult34_g245 = (float2(break26_g245.x , break26_g245.y));
				float2 appendResult25_g245 = (float2(-break20_g245.z , 1.0));
				float2 temp_output_67_0_g245 = ( temp_output_65_0_g245 + ( temp_output_29_0_g245 * appendResult34_g245 * appendResult25_g245 ) );
				float2 Input_UV100_g246 = temp_output_67_0_g245;
				float2 UV2_g246 = Input_UV100_g246;
				float4 TexelSize2_g246 = _NormalMap_TexelSize;
				float2 UV02_g246 = float2( 0,0 );
				float2 UV12_g246 = float2( 0,0 );
				float2 UV22_g246 = float2( 0,0 );
				float2 UV32_g246 = float2( 0,0 );
				float W02_g246 = 0;
				float W12_g246 = 0;
				{
				{
				 UV2_g246 = UV2_g246 * TexelSize2_g246.zw - 0.5;
				    float2 f = frac( UV2_g246 );
				    UV2_g246 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g246.x - 0.5, UV2_g246.x + 1.5, UV2_g246.y - 0.5, UV2_g246.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g246.xyxy;
				    UV02_g246 = off.xz;
				    UV12_g246 = off.yz;
				    UV22_g246 = off.xw;
				    UV32_g246 = off.yw;
				    W02_g246 = s.x / ( s.x + s.y );
				 W12_g246 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g246 = lerp( tex2D( _NormalMap, UV32_g246 ) , tex2D( _NormalMap, UV22_g246 ) , W02_g246);
				float4 lerpResult45_g246 = lerp( tex2D( _NormalMap, UV12_g246 ) , tex2D( _NormalMap, UV02_g246 ) , W02_g246);
				float4 lerpResult44_g246 = lerp( lerpResult46_g246 , lerpResult45_g246 , W12_g246);
				float4 Output_2D131_g246 = lerpResult44_g246;
				float4 break11_g244 = ( saturate( ( ( projNormal10_g245.x * Output_2D131_g247 ) + ( projNormal10_g245.y * Output_2D131_g248 ) + ( projNormal10_g245.z * Output_2D131_g246 ) ) ) * _NormlalDistortionFactor );
				float2 appendResult13_g244 = (float2(break11_g244.r , break11_g244.g));
				float2 temp_output_65_0_g249 = ( appendResult12_g244 + appendResult13_g244 );
				float2 temp_output_68_0_g249 = ( ( appendResult27_g249 * appendResult21_g249 * temp_output_29_0_g249 ) + temp_output_65_0_g249 );
				float2 Input_UV100_g251 = temp_output_68_0_g249;
				float2 UV2_g251 = Input_UV100_g251;
				float4 TexelSize2_g251 = _NormalMap_TexelSize;
				float2 UV02_g251 = float2( 0,0 );
				float2 UV12_g251 = float2( 0,0 );
				float2 UV22_g251 = float2( 0,0 );
				float2 UV32_g251 = float2( 0,0 );
				float W02_g251 = 0;
				float W12_g251 = 0;
				{
				{
				 UV2_g251 = UV2_g251 * TexelSize2_g251.zw - 0.5;
				    float2 f = frac( UV2_g251 );
				    UV2_g251 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g251.x - 0.5, UV2_g251.x + 1.5, UV2_g251.y - 0.5, UV2_g251.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g251.xyxy;
				    UV02_g251 = off.xz;
				    UV12_g251 = off.yz;
				    UV22_g251 = off.xw;
				    UV32_g251 = off.yw;
				    W02_g251 = s.x / ( s.x + s.y );
				 W12_g251 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g251 = lerp( tex2D( _NormalMap, UV32_g251 ) , tex2D( _NormalMap, UV22_g251 ) , W02_g251);
				float4 lerpResult45_g251 = lerp( tex2D( _NormalMap, UV12_g251 ) , tex2D( _NormalMap, UV02_g251 ) , W02_g251);
				float4 lerpResult44_g251 = lerp( lerpResult46_g251 , lerpResult45_g251 , W12_g251);
				float4 Output_2D131_g251 = lerpResult44_g251;
				float localBicubicPrepare2_g252 = ( 0.0 );
				float2 appendResult32_g249 = (float2(break26_g249.x , break26_g249.z));
				float2 appendResult22_g249 = (float2(break20_g249.y , 1.0));
				float2 temp_output_66_0_g249 = ( ( temp_output_29_0_g249 * appendResult32_g249 * appendResult22_g249 ) + temp_output_65_0_g249 );
				float2 Input_UV100_g252 = temp_output_66_0_g249;
				float2 UV2_g252 = Input_UV100_g252;
				float4 TexelSize2_g252 = _NormalMap_TexelSize;
				float2 UV02_g252 = float2( 0,0 );
				float2 UV12_g252 = float2( 0,0 );
				float2 UV22_g252 = float2( 0,0 );
				float2 UV32_g252 = float2( 0,0 );
				float W02_g252 = 0;
				float W12_g252 = 0;
				{
				{
				 UV2_g252 = UV2_g252 * TexelSize2_g252.zw - 0.5;
				    float2 f = frac( UV2_g252 );
				    UV2_g252 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g252.x - 0.5, UV2_g252.x + 1.5, UV2_g252.y - 0.5, UV2_g252.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g252.xyxy;
				    UV02_g252 = off.xz;
				    UV12_g252 = off.yz;
				    UV22_g252 = off.xw;
				    UV32_g252 = off.yw;
				    W02_g252 = s.x / ( s.x + s.y );
				 W12_g252 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g252 = lerp( tex2D( _NormalMap, UV32_g252 ) , tex2D( _NormalMap, UV22_g252 ) , W02_g252);
				float4 lerpResult45_g252 = lerp( tex2D( _NormalMap, UV12_g252 ) , tex2D( _NormalMap, UV02_g252 ) , W02_g252);
				float4 lerpResult44_g252 = lerp( lerpResult46_g252 , lerpResult45_g252 , W12_g252);
				float4 Output_2D131_g252 = lerpResult44_g252;
				float localBicubicPrepare2_g250 = ( 0.0 );
				float2 appendResult34_g249 = (float2(break26_g249.x , break26_g249.y));
				float2 appendResult25_g249 = (float2(-break20_g249.z , 1.0));
				float2 temp_output_67_0_g249 = ( temp_output_65_0_g249 + ( temp_output_29_0_g249 * appendResult34_g249 * appendResult25_g249 ) );
				float2 Input_UV100_g250 = temp_output_67_0_g249;
				float2 UV2_g250 = Input_UV100_g250;
				float4 TexelSize2_g250 = _NormalMap_TexelSize;
				float2 UV02_g250 = float2( 0,0 );
				float2 UV12_g250 = float2( 0,0 );
				float2 UV22_g250 = float2( 0,0 );
				float2 UV32_g250 = float2( 0,0 );
				float W02_g250 = 0;
				float W12_g250 = 0;
				{
				{
				 UV2_g250 = UV2_g250 * TexelSize2_g250.zw - 0.5;
				    float2 f = frac( UV2_g250 );
				    UV2_g250 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g250.x - 0.5, UV2_g250.x + 1.5, UV2_g250.y - 0.5, UV2_g250.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g250.xyxy;
				    UV02_g250 = off.xz;
				    UV12_g250 = off.yz;
				    UV22_g250 = off.xw;
				    UV32_g250 = off.yw;
				    W02_g250 = s.x / ( s.x + s.y );
				 W12_g250 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g250 = lerp( tex2D( _NormalMap, UV32_g250 ) , tex2D( _NormalMap, UV22_g250 ) , W02_g250);
				float4 lerpResult45_g250 = lerp( tex2D( _NormalMap, UV12_g250 ) , tex2D( _NormalMap, UV02_g250 ) , W02_g250);
				float4 lerpResult44_g250 = lerp( lerpResult46_g250 , lerpResult45_g250 , W12_g250);
				float4 Output_2D131_g250 = lerpResult44_g250;
				float3 unpack18_g244 = UnpackNormalScale( saturate( ( ( projNormal10_g249.x * Output_2D131_g251 ) + ( projNormal10_g249.y * Output_2D131_g252 ) + ( projNormal10_g249.z * Output_2D131_g250 ) ) ), _NormalScale );
				unpack18_g244.z = lerp( 1, unpack18_g244.z, saturate(_NormalScale) );
				float3 normalUnpacked24 = unpack18_g244;
				float3 normalizeResult5_g253 = normalize( normalUnpacked24 );
				float dotResult14_g253 = dot( ase_tanViewDir , normalizeResult5_g253 );
				float3 temp_cast_4 = (5.0).xxx;
				float3 temp_output_4_0_g174 = pow( abs( packedInput.ase_normal ) , temp_cast_4 );
				float3 break6_g174 = temp_output_4_0_g174;
				float3 projNormal10_g174 = ( temp_output_4_0_g174 / ( break6_g174.x + break6_g174.y + break6_g174.z ) );
				float localBicubicPrepare2_g176 = ( 0.0 );
				float3 break26_g174 = packedInput.ase_texcoord6.xyz;
				float2 appendResult27_g174 = (float2(break26_g174.z , break26_g174.y));
				float3 nSign18_g174 = sign( packedInput.ase_normal );
				float3 break20_g174 = nSign18_g174;
				float2 appendResult21_g174 = (float2(break20_g174.x , 1.0));
				float temp_output_29_0_g174 = _DistortionTiling;
				float temp_output_10_0_g173 = ( _TimeParameters.x * _DistortionSpeed );
				float2 appendResult12_g173 = (float2(temp_output_10_0_g173 , temp_output_10_0_g173));
				float3 temp_cast_5 = (5.0).xxx;
				float3 temp_output_4_0_g178 = pow( abs( packedInput.ase_normal ) , temp_cast_5 );
				float3 break6_g178 = temp_output_4_0_g178;
				float3 projNormal10_g178 = ( temp_output_4_0_g178 / ( break6_g178.x + break6_g178.y + break6_g178.z ) );
				float localBicubicPrepare2_g180 = ( 0.0 );
				float3 break26_g178 = packedInput.ase_texcoord6.xyz;
				float2 appendResult27_g178 = (float2(break26_g178.z , break26_g178.y));
				float3 nSign18_g178 = sign( packedInput.ase_normal );
				float3 break20_g178 = nSign18_g178;
				float2 appendResult21_g178 = (float2(break20_g178.x , 1.0));
				float temp_output_29_0_g178 = _DistortionUVTiling;
				float temp_output_2_0_g173 = ( _TimeParameters.x * _DistortionUVSpeed );
				float2 appendResult5_g173 = (float2(temp_output_2_0_g173 , temp_output_2_0_g173));
				float2 temp_output_65_0_g178 = appendResult5_g173;
				float2 temp_output_68_0_g178 = ( ( appendResult27_g178 * appendResult21_g178 * temp_output_29_0_g178 ) + temp_output_65_0_g178 );
				float2 Input_UV100_g180 = temp_output_68_0_g178;
				float2 UV2_g180 = Input_UV100_g180;
				float4 TexelSize2_g180 = _DistortionUVMap_TexelSize;
				float2 UV02_g180 = float2( 0,0 );
				float2 UV12_g180 = float2( 0,0 );
				float2 UV22_g180 = float2( 0,0 );
				float2 UV32_g180 = float2( 0,0 );
				float W02_g180 = 0;
				float W12_g180 = 0;
				{
				{
				 UV2_g180 = UV2_g180 * TexelSize2_g180.zw - 0.5;
				    float2 f = frac( UV2_g180 );
				    UV2_g180 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g180.x - 0.5, UV2_g180.x + 1.5, UV2_g180.y - 0.5, UV2_g180.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g180.xyxy;
				    UV02_g180 = off.xz;
				    UV12_g180 = off.yz;
				    UV22_g180 = off.xw;
				    UV32_g180 = off.yw;
				    W02_g180 = s.x / ( s.x + s.y );
				 W12_g180 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g180 = lerp( tex2D( _DistortionUVMap, UV32_g180 ) , tex2D( _DistortionUVMap, UV22_g180 ) , W02_g180);
				float4 lerpResult45_g180 = lerp( tex2D( _DistortionUVMap, UV12_g180 ) , tex2D( _DistortionUVMap, UV02_g180 ) , W02_g180);
				float4 lerpResult44_g180 = lerp( lerpResult46_g180 , lerpResult45_g180 , W12_g180);
				float4 Output_2D131_g180 = lerpResult44_g180;
				float localBicubicPrepare2_g181 = ( 0.0 );
				float2 appendResult32_g178 = (float2(break26_g178.x , break26_g178.z));
				float2 appendResult22_g178 = (float2(break20_g178.y , 1.0));
				float2 temp_output_66_0_g178 = ( ( temp_output_29_0_g178 * appendResult32_g178 * appendResult22_g178 ) + temp_output_65_0_g178 );
				float2 Input_UV100_g181 = temp_output_66_0_g178;
				float2 UV2_g181 = Input_UV100_g181;
				float4 TexelSize2_g181 = _DistortionUVMap_TexelSize;
				float2 UV02_g181 = float2( 0,0 );
				float2 UV12_g181 = float2( 0,0 );
				float2 UV22_g181 = float2( 0,0 );
				float2 UV32_g181 = float2( 0,0 );
				float W02_g181 = 0;
				float W12_g181 = 0;
				{
				{
				 UV2_g181 = UV2_g181 * TexelSize2_g181.zw - 0.5;
				    float2 f = frac( UV2_g181 );
				    UV2_g181 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g181.x - 0.5, UV2_g181.x + 1.5, UV2_g181.y - 0.5, UV2_g181.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g181.xyxy;
				    UV02_g181 = off.xz;
				    UV12_g181 = off.yz;
				    UV22_g181 = off.xw;
				    UV32_g181 = off.yw;
				    W02_g181 = s.x / ( s.x + s.y );
				 W12_g181 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g181 = lerp( tex2D( _DistortionUVMap, UV32_g181 ) , tex2D( _DistortionUVMap, UV22_g181 ) , W02_g181);
				float4 lerpResult45_g181 = lerp( tex2D( _DistortionUVMap, UV12_g181 ) , tex2D( _DistortionUVMap, UV02_g181 ) , W02_g181);
				float4 lerpResult44_g181 = lerp( lerpResult46_g181 , lerpResult45_g181 , W12_g181);
				float4 Output_2D131_g181 = lerpResult44_g181;
				float localBicubicPrepare2_g179 = ( 0.0 );
				float2 appendResult34_g178 = (float2(break26_g178.x , break26_g178.y));
				float2 appendResult25_g178 = (float2(-break20_g178.z , 1.0));
				float2 temp_output_67_0_g178 = ( temp_output_65_0_g178 + ( temp_output_29_0_g178 * appendResult34_g178 * appendResult25_g178 ) );
				float2 Input_UV100_g179 = temp_output_67_0_g178;
				float2 UV2_g179 = Input_UV100_g179;
				float4 TexelSize2_g179 = _DistortionUVMap_TexelSize;
				float2 UV02_g179 = float2( 0,0 );
				float2 UV12_g179 = float2( 0,0 );
				float2 UV22_g179 = float2( 0,0 );
				float2 UV32_g179 = float2( 0,0 );
				float W02_g179 = 0;
				float W12_g179 = 0;
				{
				{
				 UV2_g179 = UV2_g179 * TexelSize2_g179.zw - 0.5;
				    float2 f = frac( UV2_g179 );
				    UV2_g179 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g179.x - 0.5, UV2_g179.x + 1.5, UV2_g179.y - 0.5, UV2_g179.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g179.xyxy;
				    UV02_g179 = off.xz;
				    UV12_g179 = off.yz;
				    UV22_g179 = off.xw;
				    UV32_g179 = off.yw;
				    W02_g179 = s.x / ( s.x + s.y );
				 W12_g179 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g179 = lerp( tex2D( _DistortionUVMap, UV32_g179 ) , tex2D( _DistortionUVMap, UV22_g179 ) , W02_g179);
				float4 lerpResult45_g179 = lerp( tex2D( _DistortionUVMap, UV12_g179 ) , tex2D( _DistortionUVMap, UV02_g179 ) , W02_g179);
				float4 lerpResult44_g179 = lerp( lerpResult46_g179 , lerpResult45_g179 , W12_g179);
				float4 Output_2D131_g179 = lerpResult44_g179;
				float4 break11_g173 = ( saturate( ( ( projNormal10_g178.x * Output_2D131_g180 ) + ( projNormal10_g178.y * Output_2D131_g181 ) + ( projNormal10_g178.z * Output_2D131_g179 ) ) ) * _DistortionFactor );
				float2 appendResult13_g173 = (float2(break11_g173.r , break11_g173.g));
				float2 temp_output_65_0_g174 = ( appendResult12_g173 + appendResult13_g173 );
				float2 temp_output_68_0_g174 = ( ( appendResult27_g174 * appendResult21_g174 * temp_output_29_0_g174 ) + temp_output_65_0_g174 );
				float2 Input_UV100_g176 = temp_output_68_0_g174;
				float2 UV2_g176 = Input_UV100_g176;
				float4 TexelSize2_g176 = _DistortionMap_TexelSize;
				float2 UV02_g176 = float2( 0,0 );
				float2 UV12_g176 = float2( 0,0 );
				float2 UV22_g176 = float2( 0,0 );
				float2 UV32_g176 = float2( 0,0 );
				float W02_g176 = 0;
				float W12_g176 = 0;
				{
				{
				 UV2_g176 = UV2_g176 * TexelSize2_g176.zw - 0.5;
				    float2 f = frac( UV2_g176 );
				    UV2_g176 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g176.x - 0.5, UV2_g176.x + 1.5, UV2_g176.y - 0.5, UV2_g176.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g176.xyxy;
				    UV02_g176 = off.xz;
				    UV12_g176 = off.yz;
				    UV22_g176 = off.xw;
				    UV32_g176 = off.yw;
				    W02_g176 = s.x / ( s.x + s.y );
				 W12_g176 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g176 = lerp( tex2D( _DistortionMap, UV32_g176 ) , tex2D( _DistortionMap, UV22_g176 ) , W02_g176);
				float4 lerpResult45_g176 = lerp( tex2D( _DistortionMap, UV12_g176 ) , tex2D( _DistortionMap, UV02_g176 ) , W02_g176);
				float4 lerpResult44_g176 = lerp( lerpResult46_g176 , lerpResult45_g176 , W12_g176);
				float4 Output_2D131_g176 = lerpResult44_g176;
				float localBicubicPrepare2_g177 = ( 0.0 );
				float2 appendResult32_g174 = (float2(break26_g174.x , break26_g174.z));
				float2 appendResult22_g174 = (float2(break20_g174.y , 1.0));
				float2 temp_output_66_0_g174 = ( ( temp_output_29_0_g174 * appendResult32_g174 * appendResult22_g174 ) + temp_output_65_0_g174 );
				float2 Input_UV100_g177 = temp_output_66_0_g174;
				float2 UV2_g177 = Input_UV100_g177;
				float4 TexelSize2_g177 = _DistortionMap_TexelSize;
				float2 UV02_g177 = float2( 0,0 );
				float2 UV12_g177 = float2( 0,0 );
				float2 UV22_g177 = float2( 0,0 );
				float2 UV32_g177 = float2( 0,0 );
				float W02_g177 = 0;
				float W12_g177 = 0;
				{
				{
				 UV2_g177 = UV2_g177 * TexelSize2_g177.zw - 0.5;
				    float2 f = frac( UV2_g177 );
				    UV2_g177 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g177.x - 0.5, UV2_g177.x + 1.5, UV2_g177.y - 0.5, UV2_g177.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g177.xyxy;
				    UV02_g177 = off.xz;
				    UV12_g177 = off.yz;
				    UV22_g177 = off.xw;
				    UV32_g177 = off.yw;
				    W02_g177 = s.x / ( s.x + s.y );
				 W12_g177 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g177 = lerp( tex2D( _DistortionMap, UV32_g177 ) , tex2D( _DistortionMap, UV22_g177 ) , W02_g177);
				float4 lerpResult45_g177 = lerp( tex2D( _DistortionMap, UV12_g177 ) , tex2D( _DistortionMap, UV02_g177 ) , W02_g177);
				float4 lerpResult44_g177 = lerp( lerpResult46_g177 , lerpResult45_g177 , W12_g177);
				float4 Output_2D131_g177 = lerpResult44_g177;
				float localBicubicPrepare2_g175 = ( 0.0 );
				float2 appendResult34_g174 = (float2(break26_g174.x , break26_g174.y));
				float2 appendResult25_g174 = (float2(-break20_g174.z , 1.0));
				float2 temp_output_67_0_g174 = ( temp_output_65_0_g174 + ( temp_output_29_0_g174 * appendResult34_g174 * appendResult25_g174 ) );
				float2 Input_UV100_g175 = temp_output_67_0_g174;
				float2 UV2_g175 = Input_UV100_g175;
				float4 TexelSize2_g175 = _DistortionMap_TexelSize;
				float2 UV02_g175 = float2( 0,0 );
				float2 UV12_g175 = float2( 0,0 );
				float2 UV22_g175 = float2( 0,0 );
				float2 UV32_g175 = float2( 0,0 );
				float W02_g175 = 0;
				float W12_g175 = 0;
				{
				{
				 UV2_g175 = UV2_g175 * TexelSize2_g175.zw - 0.5;
				    float2 f = frac( UV2_g175 );
				    UV2_g175 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g175.x - 0.5, UV2_g175.x + 1.5, UV2_g175.y - 0.5, UV2_g175.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g175.xyxy;
				    UV02_g175 = off.xz;
				    UV12_g175 = off.yz;
				    UV22_g175 = off.xw;
				    UV32_g175 = off.yw;
				    W02_g175 = s.x / ( s.x + s.y );
				 W12_g175 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g175 = lerp( tex2D( _DistortionMap, UV32_g175 ) , tex2D( _DistortionMap, UV22_g175 ) , W02_g175);
				float4 lerpResult45_g175 = lerp( tex2D( _DistortionMap, UV12_g175 ) , tex2D( _DistortionMap, UV02_g175 ) , W02_g175);
				float4 lerpResult44_g175 = lerp( lerpResult46_g175 , lerpResult45_g175 , W12_g175);
				float4 Output_2D131_g175 = lerpResult44_g175;
				float4 temp_cast_6 = (_DetailPow).xxxx;
				float4 temp_output_9_0 = saturate( ( pow( max( float4( 0,0,0,0 ) , saturate( ( ( projNormal10_g174.x * Output_2D131_g176 ) + ( projNormal10_g174.y * Output_2D131_g177 ) + ( projNormal10_g174.z * Output_2D131_g175 ) ) ) ) , temp_cast_6 ) * _DetailBoost ) );
				float4 lerpResult5 = lerp( _TintLow , _TintHigh , temp_output_9_0.r);
				
				float4 spec90 = ( _SpecularColor * temp_output_9_0 * _Specular );
				
				float4 temp_cast_9 = (0.0).xxxx;
				float clampResult20_g256 = clamp( sin( ( ( _TimeParameters.x ) * ( 2.0 * PI ) ) ) , 0.3 , 1.0 );
				float clampResult29_g256 = clamp( sin( ( ( _TimeParameters.x ) * ( 5.0 * PI ) ) ) , 0.5 , 1.0 );
				float clampResult30_g256 = clamp( sin( ( ( _TimeParameters.x ) * ( 10.0 * PI ) ) ) , 0.7 , 1.0 );
				float sine32_g256 = ( clampResult20_g256 * clampResult29_g256 * clampResult30_g256 );
				float3 temp_cast_10 = (3.0).xxx;
				float3 temp_output_4_0_g265 = pow( abs( packedInput.ase_normal ) , temp_cast_10 );
				float3 break6_g265 = temp_output_4_0_g265;
				float3 projNormal10_g265 = ( temp_output_4_0_g265 / ( break6_g265.x + break6_g265.y + break6_g265.z ) );
				float localBicubicPrepare2_g267 = ( 0.0 );
				float3 break26_g265 = packedInput.ase_texcoord6.xyz;
				float2 appendResult27_g265 = (float2(break26_g265.z , break26_g265.y));
				float3 nSign18_g265 = sign( packedInput.ase_normal );
				float3 break20_g265 = nSign18_g265;
				float2 appendResult21_g265 = (float2(break20_g265.x , 1.0));
				float temp_output_29_0_g265 = _LightingMaskATiling;
				float mulTime7_g256 = _TimeParameters.x * _LightingMaskAUVSpeed;
				float2 temp_cast_11 = (mulTime7_g256).xx;
				float2 temp_output_65_0_g265 = temp_cast_11;
				float2 temp_output_68_0_g265 = ( ( appendResult27_g265 * appendResult21_g265 * temp_output_29_0_g265 ) + temp_output_65_0_g265 );
				float2 Input_UV100_g267 = temp_output_68_0_g265;
				float2 UV2_g267 = Input_UV100_g267;
				float4 TexelSize2_g267 = _LightingMaskMap_TexelSize;
				float2 UV02_g267 = float2( 0,0 );
				float2 UV12_g267 = float2( 0,0 );
				float2 UV22_g267 = float2( 0,0 );
				float2 UV32_g267 = float2( 0,0 );
				float W02_g267 = 0;
				float W12_g267 = 0;
				{
				{
				 UV2_g267 = UV2_g267 * TexelSize2_g267.zw - 0.5;
				    float2 f = frac( UV2_g267 );
				    UV2_g267 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g267.x - 0.5, UV2_g267.x + 1.5, UV2_g267.y - 0.5, UV2_g267.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g267.xyxy;
				    UV02_g267 = off.xz;
				    UV12_g267 = off.yz;
				    UV22_g267 = off.xw;
				    UV32_g267 = off.yw;
				    W02_g267 = s.x / ( s.x + s.y );
				 W12_g267 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g267 = lerp( tex2D( _LightingMaskMap, UV32_g267 ) , tex2D( _LightingMaskMap, UV22_g267 ) , W02_g267);
				float4 lerpResult45_g267 = lerp( tex2D( _LightingMaskMap, UV12_g267 ) , tex2D( _LightingMaskMap, UV02_g267 ) , W02_g267);
				float4 lerpResult44_g267 = lerp( lerpResult46_g267 , lerpResult45_g267 , W12_g267);
				float4 Output_2D131_g267 = lerpResult44_g267;
				float localBicubicPrepare2_g268 = ( 0.0 );
				float2 appendResult32_g265 = (float2(break26_g265.x , break26_g265.z));
				float2 appendResult22_g265 = (float2(break20_g265.y , 1.0));
				float2 temp_output_66_0_g265 = ( ( temp_output_29_0_g265 * appendResult32_g265 * appendResult22_g265 ) + temp_output_65_0_g265 );
				float2 Input_UV100_g268 = temp_output_66_0_g265;
				float2 UV2_g268 = Input_UV100_g268;
				float4 TexelSize2_g268 = _LightingMaskMap_TexelSize;
				float2 UV02_g268 = float2( 0,0 );
				float2 UV12_g268 = float2( 0,0 );
				float2 UV22_g268 = float2( 0,0 );
				float2 UV32_g268 = float2( 0,0 );
				float W02_g268 = 0;
				float W12_g268 = 0;
				{
				{
				 UV2_g268 = UV2_g268 * TexelSize2_g268.zw - 0.5;
				    float2 f = frac( UV2_g268 );
				    UV2_g268 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g268.x - 0.5, UV2_g268.x + 1.5, UV2_g268.y - 0.5, UV2_g268.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g268.xyxy;
				    UV02_g268 = off.xz;
				    UV12_g268 = off.yz;
				    UV22_g268 = off.xw;
				    UV32_g268 = off.yw;
				    W02_g268 = s.x / ( s.x + s.y );
				 W12_g268 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g268 = lerp( tex2D( _LightingMaskMap, UV32_g268 ) , tex2D( _LightingMaskMap, UV22_g268 ) , W02_g268);
				float4 lerpResult45_g268 = lerp( tex2D( _LightingMaskMap, UV12_g268 ) , tex2D( _LightingMaskMap, UV02_g268 ) , W02_g268);
				float4 lerpResult44_g268 = lerp( lerpResult46_g268 , lerpResult45_g268 , W12_g268);
				float4 Output_2D131_g268 = lerpResult44_g268;
				float localBicubicPrepare2_g266 = ( 0.0 );
				float2 appendResult34_g265 = (float2(break26_g265.x , break26_g265.y));
				float2 appendResult25_g265 = (float2(-break20_g265.z , 1.0));
				float2 temp_output_67_0_g265 = ( temp_output_65_0_g265 + ( temp_output_29_0_g265 * appendResult34_g265 * appendResult25_g265 ) );
				float2 Input_UV100_g266 = temp_output_67_0_g265;
				float2 UV2_g266 = Input_UV100_g266;
				float4 TexelSize2_g266 = _LightingMaskMap_TexelSize;
				float2 UV02_g266 = float2( 0,0 );
				float2 UV12_g266 = float2( 0,0 );
				float2 UV22_g266 = float2( 0,0 );
				float2 UV32_g266 = float2( 0,0 );
				float W02_g266 = 0;
				float W12_g266 = 0;
				{
				{
				 UV2_g266 = UV2_g266 * TexelSize2_g266.zw - 0.5;
				    float2 f = frac( UV2_g266 );
				    UV2_g266 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g266.x - 0.5, UV2_g266.x + 1.5, UV2_g266.y - 0.5, UV2_g266.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g266.xyxy;
				    UV02_g266 = off.xz;
				    UV12_g266 = off.yz;
				    UV22_g266 = off.xw;
				    UV32_g266 = off.yw;
				    W02_g266 = s.x / ( s.x + s.y );
				 W12_g266 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g266 = lerp( tex2D( _LightingMaskMap, UV32_g266 ) , tex2D( _LightingMaskMap, UV22_g266 ) , W02_g266);
				float4 lerpResult45_g266 = lerp( tex2D( _LightingMaskMap, UV12_g266 ) , tex2D( _LightingMaskMap, UV02_g266 ) , W02_g266);
				float4 lerpResult44_g266 = lerp( lerpResult46_g266 , lerpResult45_g266 , W12_g266);
				float4 Output_2D131_g266 = lerpResult44_g266;
				float3 temp_cast_12 = (3.0).xxx;
				float3 temp_output_4_0_g269 = pow( abs( packedInput.ase_normal ) , temp_cast_12 );
				float3 break6_g269 = temp_output_4_0_g269;
				float3 projNormal10_g269 = ( temp_output_4_0_g269 / ( break6_g269.x + break6_g269.y + break6_g269.z ) );
				float localBicubicPrepare2_g271 = ( 0.0 );
				float3 break26_g269 = packedInput.ase_texcoord6.xyz;
				float2 appendResult27_g269 = (float2(break26_g269.z , break26_g269.y));
				float3 nSign18_g269 = sign( packedInput.ase_normal );
				float3 break20_g269 = nSign18_g269;
				float2 appendResult21_g269 = (float2(break20_g269.x , 1.0));
				float temp_output_29_0_g269 = _LightingMaskBTiling;
				float mulTime10_g256 = _TimeParameters.x * _LightingMaskBUVSpeed;
				float2 temp_cast_13 = (mulTime10_g256).xx;
				float2 temp_output_65_0_g269 = temp_cast_13;
				float2 temp_output_68_0_g269 = ( ( appendResult27_g269 * appendResult21_g269 * temp_output_29_0_g269 ) + temp_output_65_0_g269 );
				float2 Input_UV100_g271 = temp_output_68_0_g269;
				float2 UV2_g271 = Input_UV100_g271;
				float4 TexelSize2_g271 = _LightingMaskMap_TexelSize;
				float2 UV02_g271 = float2( 0,0 );
				float2 UV12_g271 = float2( 0,0 );
				float2 UV22_g271 = float2( 0,0 );
				float2 UV32_g271 = float2( 0,0 );
				float W02_g271 = 0;
				float W12_g271 = 0;
				{
				{
				 UV2_g271 = UV2_g271 * TexelSize2_g271.zw - 0.5;
				    float2 f = frac( UV2_g271 );
				    UV2_g271 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g271.x - 0.5, UV2_g271.x + 1.5, UV2_g271.y - 0.5, UV2_g271.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g271.xyxy;
				    UV02_g271 = off.xz;
				    UV12_g271 = off.yz;
				    UV22_g271 = off.xw;
				    UV32_g271 = off.yw;
				    W02_g271 = s.x / ( s.x + s.y );
				 W12_g271 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g271 = lerp( tex2D( _LightingMaskMap, UV32_g271 ) , tex2D( _LightingMaskMap, UV22_g271 ) , W02_g271);
				float4 lerpResult45_g271 = lerp( tex2D( _LightingMaskMap, UV12_g271 ) , tex2D( _LightingMaskMap, UV02_g271 ) , W02_g271);
				float4 lerpResult44_g271 = lerp( lerpResult46_g271 , lerpResult45_g271 , W12_g271);
				float4 Output_2D131_g271 = lerpResult44_g271;
				float localBicubicPrepare2_g272 = ( 0.0 );
				float2 appendResult32_g269 = (float2(break26_g269.x , break26_g269.z));
				float2 appendResult22_g269 = (float2(break20_g269.y , 1.0));
				float2 temp_output_66_0_g269 = ( ( temp_output_29_0_g269 * appendResult32_g269 * appendResult22_g269 ) + temp_output_65_0_g269 );
				float2 Input_UV100_g272 = temp_output_66_0_g269;
				float2 UV2_g272 = Input_UV100_g272;
				float4 TexelSize2_g272 = _LightingMaskMap_TexelSize;
				float2 UV02_g272 = float2( 0,0 );
				float2 UV12_g272 = float2( 0,0 );
				float2 UV22_g272 = float2( 0,0 );
				float2 UV32_g272 = float2( 0,0 );
				float W02_g272 = 0;
				float W12_g272 = 0;
				{
				{
				 UV2_g272 = UV2_g272 * TexelSize2_g272.zw - 0.5;
				    float2 f = frac( UV2_g272 );
				    UV2_g272 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g272.x - 0.5, UV2_g272.x + 1.5, UV2_g272.y - 0.5, UV2_g272.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g272.xyxy;
				    UV02_g272 = off.xz;
				    UV12_g272 = off.yz;
				    UV22_g272 = off.xw;
				    UV32_g272 = off.yw;
				    W02_g272 = s.x / ( s.x + s.y );
				 W12_g272 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g272 = lerp( tex2D( _LightingMaskMap, UV32_g272 ) , tex2D( _LightingMaskMap, UV22_g272 ) , W02_g272);
				float4 lerpResult45_g272 = lerp( tex2D( _LightingMaskMap, UV12_g272 ) , tex2D( _LightingMaskMap, UV02_g272 ) , W02_g272);
				float4 lerpResult44_g272 = lerp( lerpResult46_g272 , lerpResult45_g272 , W12_g272);
				float4 Output_2D131_g272 = lerpResult44_g272;
				float localBicubicPrepare2_g270 = ( 0.0 );
				float2 appendResult34_g269 = (float2(break26_g269.x , break26_g269.y));
				float2 appendResult25_g269 = (float2(-break20_g269.z , 1.0));
				float2 temp_output_67_0_g269 = ( temp_output_65_0_g269 + ( temp_output_29_0_g269 * appendResult34_g269 * appendResult25_g269 ) );
				float2 Input_UV100_g270 = temp_output_67_0_g269;
				float2 UV2_g270 = Input_UV100_g270;
				float4 TexelSize2_g270 = _LightingMaskMap_TexelSize;
				float2 UV02_g270 = float2( 0,0 );
				float2 UV12_g270 = float2( 0,0 );
				float2 UV22_g270 = float2( 0,0 );
				float2 UV32_g270 = float2( 0,0 );
				float W02_g270 = 0;
				float W12_g270 = 0;
				{
				{
				 UV2_g270 = UV2_g270 * TexelSize2_g270.zw - 0.5;
				    float2 f = frac( UV2_g270 );
				    UV2_g270 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g270.x - 0.5, UV2_g270.x + 1.5, UV2_g270.y - 0.5, UV2_g270.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g270.xyxy;
				    UV02_g270 = off.xz;
				    UV12_g270 = off.yz;
				    UV22_g270 = off.xw;
				    UV32_g270 = off.yw;
				    W02_g270 = s.x / ( s.x + s.y );
				 W12_g270 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g270 = lerp( tex2D( _LightingMaskMap, UV32_g270 ) , tex2D( _LightingMaskMap, UV22_g270 ) , W02_g270);
				float4 lerpResult45_g270 = lerp( tex2D( _LightingMaskMap, UV12_g270 ) , tex2D( _LightingMaskMap, UV02_g270 ) , W02_g270);
				float4 lerpResult44_g270 = lerp( lerpResult46_g270 , lerpResult45_g270 , W12_g270);
				float4 Output_2D131_g270 = lerpResult44_g270;
				float4 lightningMask14_g256 = ( saturate( ( ( projNormal10_g265.x * Output_2D131_g267 ) + ( projNormal10_g265.y * Output_2D131_g268 ) + ( projNormal10_g265.z * Output_2D131_g266 ) ) ) * saturate( ( ( projNormal10_g269.x * Output_2D131_g271 ) + ( projNormal10_g269.y * Output_2D131_g272 ) + ( projNormal10_g269.z * Output_2D131_g270 ) ) ) );
				float4 temp_cast_14 = (_LigntingMaskPow).xxxx;
				float4 lightningMaskSine39_g256 = saturate( pow( max( float4( 0,0,0,0 ) , ( _LightningSineMult * sine32_g256 * lightningMask14_g256 ) ) , temp_cast_14 ) );
				float3 temp_cast_15 = (3.0).xxx;
				float3 temp_output_4_0_g261 = pow( abs( packedInput.ase_normal ) , temp_cast_15 );
				float3 break6_g261 = temp_output_4_0_g261;
				float3 projNormal10_g261 = ( temp_output_4_0_g261 / ( break6_g261.x + break6_g261.y + break6_g261.z ) );
				float localBicubicPrepare2_g263 = ( 0.0 );
				float3 break26_g261 = packedInput.ase_texcoord6.xyz;
				float2 appendResult27_g261 = (float2(break26_g261.z , break26_g261.y));
				float3 nSign18_g261 = sign( packedInput.ase_normal );
				float3 break20_g261 = nSign18_g261;
				float2 appendResult21_g261 = (float2(break20_g261.x , 1.0));
				float temp_output_29_0_g261 = _LightingATiling;
				float mulTime45_g256 = _TimeParameters.x * _LightingAFrequency;
				float2 temp_cast_16 = (( floor( mulTime45_g256 ) * 1.0 )).xx;
				float2 temp_output_65_0_g261 = temp_cast_16;
				float2 temp_output_68_0_g261 = ( ( appendResult27_g261 * appendResult21_g261 * temp_output_29_0_g261 ) + temp_output_65_0_g261 );
				float2 Input_UV100_g263 = temp_output_68_0_g261;
				float2 UV2_g263 = Input_UV100_g263;
				float4 TexelSize2_g263 = _LightingMap_TexelSize;
				float2 UV02_g263 = float2( 0,0 );
				float2 UV12_g263 = float2( 0,0 );
				float2 UV22_g263 = float2( 0,0 );
				float2 UV32_g263 = float2( 0,0 );
				float W02_g263 = 0;
				float W12_g263 = 0;
				{
				{
				 UV2_g263 = UV2_g263 * TexelSize2_g263.zw - 0.5;
				    float2 f = frac( UV2_g263 );
				    UV2_g263 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g263.x - 0.5, UV2_g263.x + 1.5, UV2_g263.y - 0.5, UV2_g263.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g263.xyxy;
				    UV02_g263 = off.xz;
				    UV12_g263 = off.yz;
				    UV22_g263 = off.xw;
				    UV32_g263 = off.yw;
				    W02_g263 = s.x / ( s.x + s.y );
				 W12_g263 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g263 = lerp( tex2D( _LightingMap, UV32_g263 ) , tex2D( _LightingMap, UV22_g263 ) , W02_g263);
				float4 lerpResult45_g263 = lerp( tex2D( _LightingMap, UV12_g263 ) , tex2D( _LightingMap, UV02_g263 ) , W02_g263);
				float4 lerpResult44_g263 = lerp( lerpResult46_g263 , lerpResult45_g263 , W12_g263);
				float4 Output_2D131_g263 = lerpResult44_g263;
				float localBicubicPrepare2_g264 = ( 0.0 );
				float2 appendResult32_g261 = (float2(break26_g261.x , break26_g261.z));
				float2 appendResult22_g261 = (float2(break20_g261.y , 1.0));
				float2 temp_output_66_0_g261 = ( ( temp_output_29_0_g261 * appendResult32_g261 * appendResult22_g261 ) + temp_output_65_0_g261 );
				float2 Input_UV100_g264 = temp_output_66_0_g261;
				float2 UV2_g264 = Input_UV100_g264;
				float4 TexelSize2_g264 = _LightingMap_TexelSize;
				float2 UV02_g264 = float2( 0,0 );
				float2 UV12_g264 = float2( 0,0 );
				float2 UV22_g264 = float2( 0,0 );
				float2 UV32_g264 = float2( 0,0 );
				float W02_g264 = 0;
				float W12_g264 = 0;
				{
				{
				 UV2_g264 = UV2_g264 * TexelSize2_g264.zw - 0.5;
				    float2 f = frac( UV2_g264 );
				    UV2_g264 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g264.x - 0.5, UV2_g264.x + 1.5, UV2_g264.y - 0.5, UV2_g264.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g264.xyxy;
				    UV02_g264 = off.xz;
				    UV12_g264 = off.yz;
				    UV22_g264 = off.xw;
				    UV32_g264 = off.yw;
				    W02_g264 = s.x / ( s.x + s.y );
				 W12_g264 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g264 = lerp( tex2D( _LightingMap, UV32_g264 ) , tex2D( _LightingMap, UV22_g264 ) , W02_g264);
				float4 lerpResult45_g264 = lerp( tex2D( _LightingMap, UV12_g264 ) , tex2D( _LightingMap, UV02_g264 ) , W02_g264);
				float4 lerpResult44_g264 = lerp( lerpResult46_g264 , lerpResult45_g264 , W12_g264);
				float4 Output_2D131_g264 = lerpResult44_g264;
				float localBicubicPrepare2_g262 = ( 0.0 );
				float2 appendResult34_g261 = (float2(break26_g261.x , break26_g261.y));
				float2 appendResult25_g261 = (float2(-break20_g261.z , 1.0));
				float2 temp_output_67_0_g261 = ( temp_output_65_0_g261 + ( temp_output_29_0_g261 * appendResult34_g261 * appendResult25_g261 ) );
				float2 Input_UV100_g262 = temp_output_67_0_g261;
				float2 UV2_g262 = Input_UV100_g262;
				float4 TexelSize2_g262 = _LightingMap_TexelSize;
				float2 UV02_g262 = float2( 0,0 );
				float2 UV12_g262 = float2( 0,0 );
				float2 UV22_g262 = float2( 0,0 );
				float2 UV32_g262 = float2( 0,0 );
				float W02_g262 = 0;
				float W12_g262 = 0;
				{
				{
				 UV2_g262 = UV2_g262 * TexelSize2_g262.zw - 0.5;
				    float2 f = frac( UV2_g262 );
				    UV2_g262 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g262.x - 0.5, UV2_g262.x + 1.5, UV2_g262.y - 0.5, UV2_g262.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g262.xyxy;
				    UV02_g262 = off.xz;
				    UV12_g262 = off.yz;
				    UV22_g262 = off.xw;
				    UV32_g262 = off.yw;
				    W02_g262 = s.x / ( s.x + s.y );
				 W12_g262 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g262 = lerp( tex2D( _LightingMap, UV32_g262 ) , tex2D( _LightingMap, UV22_g262 ) , W02_g262);
				float4 lerpResult45_g262 = lerp( tex2D( _LightingMap, UV12_g262 ) , tex2D( _LightingMap, UV02_g262 ) , W02_g262);
				float4 lerpResult44_g262 = lerp( lerpResult46_g262 , lerpResult45_g262 , W12_g262);
				float4 Output_2D131_g262 = lerpResult44_g262;
				float3 temp_cast_17 = (3.0).xxx;
				float3 temp_output_4_0_g257 = pow( abs( packedInput.ase_normal ) , temp_cast_17 );
				float3 break6_g257 = temp_output_4_0_g257;
				float3 projNormal10_g257 = ( temp_output_4_0_g257 / ( break6_g257.x + break6_g257.y + break6_g257.z ) );
				float localBicubicPrepare2_g259 = ( 0.0 );
				float3 break26_g257 = packedInput.ase_texcoord6.xyz;
				float2 appendResult27_g257 = (float2(break26_g257.z , break26_g257.y));
				float3 nSign18_g257 = sign( packedInput.ase_normal );
				float3 break20_g257 = nSign18_g257;
				float2 appendResult21_g257 = (float2(break20_g257.x , 1.0));
				float temp_output_29_0_g257 = _LightingBTiling;
				float mulTime46_g256 = _TimeParameters.x * _LightingBFrequency;
				float2 temp_cast_18 = (( 1.0 * floor( mulTime46_g256 ) )).xx;
				float2 temp_output_65_0_g257 = temp_cast_18;
				float2 temp_output_68_0_g257 = ( ( appendResult27_g257 * appendResult21_g257 * temp_output_29_0_g257 ) + temp_output_65_0_g257 );
				float2 Input_UV100_g259 = temp_output_68_0_g257;
				float2 UV2_g259 = Input_UV100_g259;
				float4 TexelSize2_g259 = _LightingMap_TexelSize;
				float2 UV02_g259 = float2( 0,0 );
				float2 UV12_g259 = float2( 0,0 );
				float2 UV22_g259 = float2( 0,0 );
				float2 UV32_g259 = float2( 0,0 );
				float W02_g259 = 0;
				float W12_g259 = 0;
				{
				{
				 UV2_g259 = UV2_g259 * TexelSize2_g259.zw - 0.5;
				    float2 f = frac( UV2_g259 );
				    UV2_g259 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g259.x - 0.5, UV2_g259.x + 1.5, UV2_g259.y - 0.5, UV2_g259.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g259.xyxy;
				    UV02_g259 = off.xz;
				    UV12_g259 = off.yz;
				    UV22_g259 = off.xw;
				    UV32_g259 = off.yw;
				    W02_g259 = s.x / ( s.x + s.y );
				 W12_g259 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g259 = lerp( tex2D( _LightingMap, UV32_g259 ) , tex2D( _LightingMap, UV22_g259 ) , W02_g259);
				float4 lerpResult45_g259 = lerp( tex2D( _LightingMap, UV12_g259 ) , tex2D( _LightingMap, UV02_g259 ) , W02_g259);
				float4 lerpResult44_g259 = lerp( lerpResult46_g259 , lerpResult45_g259 , W12_g259);
				float4 Output_2D131_g259 = lerpResult44_g259;
				float localBicubicPrepare2_g260 = ( 0.0 );
				float2 appendResult32_g257 = (float2(break26_g257.x , break26_g257.z));
				float2 appendResult22_g257 = (float2(break20_g257.y , 1.0));
				float2 temp_output_66_0_g257 = ( ( temp_output_29_0_g257 * appendResult32_g257 * appendResult22_g257 ) + temp_output_65_0_g257 );
				float2 Input_UV100_g260 = temp_output_66_0_g257;
				float2 UV2_g260 = Input_UV100_g260;
				float4 TexelSize2_g260 = _LightingMap_TexelSize;
				float2 UV02_g260 = float2( 0,0 );
				float2 UV12_g260 = float2( 0,0 );
				float2 UV22_g260 = float2( 0,0 );
				float2 UV32_g260 = float2( 0,0 );
				float W02_g260 = 0;
				float W12_g260 = 0;
				{
				{
				 UV2_g260 = UV2_g260 * TexelSize2_g260.zw - 0.5;
				    float2 f = frac( UV2_g260 );
				    UV2_g260 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g260.x - 0.5, UV2_g260.x + 1.5, UV2_g260.y - 0.5, UV2_g260.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g260.xyxy;
				    UV02_g260 = off.xz;
				    UV12_g260 = off.yz;
				    UV22_g260 = off.xw;
				    UV32_g260 = off.yw;
				    W02_g260 = s.x / ( s.x + s.y );
				 W12_g260 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g260 = lerp( tex2D( _LightingMap, UV32_g260 ) , tex2D( _LightingMap, UV22_g260 ) , W02_g260);
				float4 lerpResult45_g260 = lerp( tex2D( _LightingMap, UV12_g260 ) , tex2D( _LightingMap, UV02_g260 ) , W02_g260);
				float4 lerpResult44_g260 = lerp( lerpResult46_g260 , lerpResult45_g260 , W12_g260);
				float4 Output_2D131_g260 = lerpResult44_g260;
				float localBicubicPrepare2_g258 = ( 0.0 );
				float2 appendResult34_g257 = (float2(break26_g257.x , break26_g257.y));
				float2 appendResult25_g257 = (float2(-break20_g257.z , 1.0));
				float2 temp_output_67_0_g257 = ( temp_output_65_0_g257 + ( temp_output_29_0_g257 * appendResult34_g257 * appendResult25_g257 ) );
				float2 Input_UV100_g258 = temp_output_67_0_g257;
				float2 UV2_g258 = Input_UV100_g258;
				float4 TexelSize2_g258 = _LightingMap_TexelSize;
				float2 UV02_g258 = float2( 0,0 );
				float2 UV12_g258 = float2( 0,0 );
				float2 UV22_g258 = float2( 0,0 );
				float2 UV32_g258 = float2( 0,0 );
				float W02_g258 = 0;
				float W12_g258 = 0;
				{
				{
				 UV2_g258 = UV2_g258 * TexelSize2_g258.zw - 0.5;
				    float2 f = frac( UV2_g258 );
				    UV2_g258 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g258.x - 0.5, UV2_g258.x + 1.5, UV2_g258.y - 0.5, UV2_g258.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g258.xyxy;
				    UV02_g258 = off.xz;
				    UV12_g258 = off.yz;
				    UV22_g258 = off.xw;
				    UV32_g258 = off.yw;
				    W02_g258 = s.x / ( s.x + s.y );
				 W12_g258 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g258 = lerp( tex2D( _LightingMap, UV32_g258 ) , tex2D( _LightingMap, UV22_g258 ) , W02_g258);
				float4 lerpResult45_g258 = lerp( tex2D( _LightingMap, UV12_g258 ) , tex2D( _LightingMap, UV02_g258 ) , W02_g258);
				float4 lerpResult44_g258 = lerp( lerpResult46_g258 , lerpResult45_g258 , W12_g258);
				float4 Output_2D131_g258 = lerpResult44_g258;
				float lightning50_g256 = ( saturate( ( ( projNormal10_g261.x * Output_2D131_g263 ) + ( projNormal10_g261.y * Output_2D131_g264 ) + ( projNormal10_g261.z * Output_2D131_g262 ) ) ) * saturate( ( ( projNormal10_g257.x * Output_2D131_g259 ) + ( projNormal10_g257.y * Output_2D131_g260 ) + ( projNormal10_g257.z * Output_2D131_g258 ) ) ) * _LightningBoost ).r;
				
				surfaceDescription.BaseColor = ( saturate( ( ( ( tex2D( _ScatterMap, ( ( _ScatterCenterShift + appendResult10_g255 ) * _ScatterStretch ) ) * _ScatterColor ) * _ScatterBoost ) + _ScatterIndirect ) ) * ( float4( ( ( saturate( pow( max( 0.0 , saturate( ( 1.0 - dotResult14_g253 ) ) ) , _FresnelPower ) ) * _FrenselMult ) * (_FresnelColor).rgb ) , 0.0 ) + saturate( lerpResult5 ) ) ).rgb;
				surfaceDescription.Normal = normalUnpacked24;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = 0;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = spec90.rgb;
				#endif

				surfaceDescription.Emission = max( temp_cast_9 , ( lightningMaskSine39_g256 * lightning50_g256 * _LightningColor ) ).rgb;
				surfaceDescription.Smoothness = _Smoothness;
				surfaceDescription.Occlusion = 1;
				surfaceDescription.Alpha = 1;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				#ifdef _ALPHATEST_SHADOW_ON
				surfaceDescription.AlphaClipThresholdShadow = 0.5;
				#endif

				surfaceDescription.AlphaClipThresholdDepthPrepass = 0.5;
				surfaceDescription.AlphaClipThresholdDepthPostpass = 0.5;

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceDescription.SpecularAAScreenSpaceVariance = 0;
				surfaceDescription.SpecularAAThreshold = 0;
				#endif

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceDescription.SpecularOcclusion = 0;
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceDescription.Thickness = 0;
				#endif

				#ifdef _HAS_REFRACTION
				surfaceDescription.RefractionIndex = 1;
				surfaceDescription.RefractionColor = float3( 1, 1, 1 );
				surfaceDescription.RefractionDistance = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceDescription.SubsurfaceMask = 1;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceDescription.TransmissionMask = 1;
				surfaceDescription.DiffusionProfile = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceDescription.Anisotropy = 1;
				surfaceDescription.Tangent = float3( 1, 0, 0 );
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceDescription.IridescenceMask = 0;
				surfaceDescription.IridescenceThickness = 0;
				#endif

				#ifdef ASE_BAKEDGI
				surfaceDescription.BakedGI = 0;
				#endif
				#ifdef ASE_BAKEDBACKGI
				surfaceDescription.BakedBackGI = 0;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				#ifdef UNITY_VIRTUAL_TEXTURING
				surfaceDescription.VTPackedFeedback = float4(1.0f,1.0f,1.0f,1.0f);
				#endif

				GetSurfaceAndBuiltinData( surfaceDescription, input, V, posInput, surfaceData, builtinData );
				ENCODE_INTO_GBUFFER( surfaceData, builtinData, posInput.positionSS, outGBuffer );
				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "META"
			Tags { "LightMode"="Meta" }

			Cull Off

			HLSLPROGRAM

            #define _SPECULAR_OCCLUSION_FROM_AO 1
            #pragma multi_compile_instancing
            #pragma instancing_options renderinglayer
            #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
            #define _ENERGY_CONSERVING_SPECULAR 1
            #define SUPPORT_BLENDMODE_PRESERVE_SPECULAR_LIGHTING
            #define ASE_SRP_VERSION 140004


            #pragma shader_feature _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
            #pragma shader_feature_local_fragment _ _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ALPHATEST_ON

			#pragma shader_feature _ EDITOR_VISUALIZATION

			#pragma vertex Vert
			#pragma fragment Frag

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"

			#define SHADERPASS SHADERPASS_LIGHT_TRANSPORT

			#ifndef SHADER_UNLIT
			#if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
			#define VARYINGS_NEED_CULLFACE
			#endif
			#endif

		    #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
		    #endif

			#if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
			#if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
				#define WRITE_NORMAL_BUFFER
			#endif
			#endif

			#ifndef DEBUG_DISPLAY
				#if !defined(_SURFACE_TYPE_TRANSPARENT)
					#if SHADERPASS == SHADERPASS_FORWARD
					#define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
					#elif SHADERPASS == SHADERPASS_GBUFFER
					#define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
					#endif
				#endif
			#endif

			#if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define _DEFERRED_CAPABLE_MATERIAL
			#endif

			#if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
			#define _WRITE_TRANSPARENT_MOTION_VECTOR
			#endif

			CBUFFER_START( UnityPerMaterial )
			float4 _DistortionUVMap_TexelSize;
			float4 _LightningColor;
			float4 _SpecularColor;
			float4 _TintHigh;
			float4 _TintLow;
			float4 _FresnelColor;
			float4 _LightingMaskMap_TexelSize;
			float4 _NormalMap_TexelSize;
			float4 _DistortionMap_TexelSize;
			float4 _LightingMap_TexelSize;
			float4 _ScatterColor;
			float _LightingATiling;
			float _LightingMaskBUVSpeed;
			float _DetailBoost;
			float _LightingAFrequency;
			float _LightingMaskAUVSpeed;
			float _LightingBTiling;
			float _LightingBFrequency;
			float _LightingMaskATiling;
			float _LightningSineMult;
			float _Specular;
			float _LightningBoost;
			float _LigntingMaskPow;
			float _LightingMaskBTiling;
			float _ScatterCenterShift;
			float _DistortionFactor;
			float _ScatterStretch;
			float _ScatterBoost;
			float _ScatterIndirect;
			float _NormalTiling;
			float _NormalSpeed;
			float _NormalUVTiling;
			float _NormalUVSpeed;
			float _NormlalDistortionFactor;
			float _NormalScale;
			float _FresnelPower;
			float _FrenselMult;
			float _DistortionTiling;
			float _DistortionSpeed;
			float _DistortionUVTiling;
			float _DistortionUVSpeed;
			float _DetailPow;
			float _Smoothness;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
            #ifdef SUPPORT_BLENDMODE_PRESERVE_SPECULAR_LIGHTING
			float _EnableBlendModePreserveSpecularLighting;
            #endif
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef ASE_TESSELLATION
			float _TessPhongStrength;
			float _TessValue;
			float _TessMin;
			float _TessMax;
			float _TessEdgeLength;
			float _TessMaxDisp;
			#endif
			CBUFFER_END

			// Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
			float4 _SelectionID;
            #endif

			// Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
			int _ObjectId;
			int _PassValue;
            #endif

			sampler2D _ScatterMap;
			sampler2D _NormalMap;
			sampler2D _DistortionMap;
			sampler2D _DistortionUVMap;
			sampler2D _LightingMaskMap;
			sampler2D _LightingMap;


            #ifdef DEBUG_DISPLAY
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
            #endif

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			// Setup DECALS_OFF so the shader stripper can remove variants
            #define HAVE_DECALS ( (defined(DECALS_3RT) || defined(DECALS_4RT)) && !defined(_DISABLE_DECALS) )
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"

			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_NORMAL
			#define ASE_NEEDS_FRAG_POSITION


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
			#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv0 : TEXCOORD0;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float4 uv3 : TEXCOORD3;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				#ifdef EDITOR_VISUALIZATION
				float2 VizUV : TEXCOORD0;
				float4 LightCoord : TEXCOORD1;
				#endif
				float3 ase_normal : NORMAL;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			
			void BuildSurfaceData(FragInputs fragInputs, inout GlobalSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data
				surfaceData.baseColor =					surfaceDescription.BaseColor;
				surfaceData.perceptualSmoothness =		surfaceDescription.Smoothness;
				surfaceData.ambientOcclusion =			surfaceDescription.Occlusion;
				surfaceData.metallic =					surfaceDescription.Metallic;
				surfaceData.coatMask =					surfaceDescription.CoatMask;

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceData.specularOcclusion =			surfaceDescription.SpecularOcclusion;
				#endif
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.subsurfaceMask =			surfaceDescription.SubsurfaceMask;
				#endif
				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceData.thickness = 				surfaceDescription.Thickness;
				#endif
				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceData.diffusionProfileHash =		asuint(surfaceDescription.DiffusionProfile);
				surfaceData.transmissionMask =			surfaceDescription.TransmissionMask;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.specularColor =				surfaceDescription.Specular;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.anisotropy =				surfaceDescription.Anisotropy;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.iridescenceMask =			surfaceDescription.IridescenceMask;
				surfaceData.iridescenceThickness =		surfaceDescription.IridescenceThickness;
				#endif

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.ior = surfaceDescription.RefractionIndex;
					surfaceData.transmittanceColor = surfaceDescription.RefractionColor;
					surfaceData.atDistance = surfaceDescription.RefractionDistance;

					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif

				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
                #ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				surfaceData.normalWS = float3(0, 1, 0);
                #endif
				#ifdef _MATERIAL_FEATURE_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				normalTS = surfaceDescription.Normal;
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );

				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				bentNormalWS = surfaceData.normalWS;

				#ifdef ASE_BENT_NORMAL
				GetNormalWS( fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants );
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.tangentWS = TransformTangentToWorld( surfaceDescription.Tangent, fragInputs.tangentToWorld );
				#endif
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

                #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
                #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
                #endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceData.perceptualSmoothness = GeometricNormalFiltering( surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[ 2 ], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold );
				#endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(GlobalSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				#ifdef _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				builtinData.emissiveColor = surfaceDescription.Emission;

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			#if SHADERPASS == SHADERPASS_LIGHT_TRANSPORT
			#define SCENEPICKINGPASS
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/PickingSpaceTransforms.hlsl"
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/MetaPass.hlsl"

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh  )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);

				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.positionOS).xyz ) );
				outputPackedVaryingsMeshToPS.ase_texcoord2.xyz = ase_worldPos;
				float3 ase_worldTangent = TransformObjectToWorldDir(inputMesh.tangentOS.xyz);
				outputPackedVaryingsMeshToPS.ase_texcoord3.xyz = ase_worldTangent;
				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
				outputPackedVaryingsMeshToPS.ase_texcoord4.xyz = ase_worldNormal;
				float ase_vertexTangentSign = inputMesh.tangentOS.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				outputPackedVaryingsMeshToPS.ase_texcoord5.xyz = ase_worldBitangent;
				
				outputPackedVaryingsMeshToPS.ase_normal = inputMesh.normalOS;
				outputPackedVaryingsMeshToPS.ase_texcoord6 = float4(inputMesh.positionOS,1);
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord2.w = 0;
				outputPackedVaryingsMeshToPS.ase_texcoord3.w = 0;
				outputPackedVaryingsMeshToPS.ase_texcoord4.w = 0;
				outputPackedVaryingsMeshToPS.ase_texcoord5.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue =  defaultVertexValue ;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS =  inputMesh.normalOS ;
				inputMesh.tangentOS =  inputMesh.tangentOS ;

				outputPackedVaryingsMeshToPS.positionCS = UnityMetaVertexPosition(inputMesh.positionOS, inputMesh.uv1.xy, inputMesh.uv2.xy, unity_LightmapST, unity_DynamicLightmapST);


				#ifdef EDITOR_VISUALIZATION
					float2 vizUV = 0;
					float4 lightCoord = 0;
					UnityEditorVizData(inputMesh.positionOS.xyz, inputMesh.uv0.xy, inputMesh.uv1.xy, inputMesh.uv2.xy, vizUV, lightCoord);

					outputPackedVaryingsMeshToPS.VizUV.xy = vizUV;
					outputPackedVaryingsMeshToPS.LightCoord = lightCoord;
				#endif

				return outputPackedVaryingsMeshToPS;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv0 : TEXCOORD0;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float4 uv3 : TEXCOORD3;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.uv0 = v.uv0;
				o.uv1 = v.uv1;
				o.uv2 = v.uv2;
				o.uv3 = v.uv3;
				
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.uv0 = patch[0].uv0 * bary.x + patch[1].uv0 * bary.y + patch[2].uv0 * bary.z;
				o.uv1 = patch[0].uv1 * bary.x + patch[1].uv1 * bary.y + patch[2].uv1 * bary.z;
				o.uv2 = patch[0].uv2 * bary.x + patch[1].uv2 * bary.y + patch[2].uv2 * bary.z;
				o.uv3 = patch[0].uv3 * bary.x + patch[1].uv3 * bary.y + patch[2].uv3 * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			float4 Frag(PackedVaryingsMeshToPS packedInput  ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( packedInput );
				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE(packedInput.cullFace, true, false);
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);
				float3 V = float3(1.0, 1.0, 1.0);

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GlobalSurfaceDescription surfaceDescription = (GlobalSurfaceDescription)0;
				float3 temp_output_1_0_g255 = packedInput.ase_normal;
				float3 normalizeResult7_g254 = normalize( float3( 0,0,0 ) );
				float dotResult4_g255 = dot( temp_output_1_0_g255 , normalizeResult7_g254 );
				float3 ase_worldPos = packedInput.ase_texcoord2.xyz;
				float3 ase_worldViewDir = ( _WorldSpaceCameraPos.xyz - ase_worldPos );
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 normalizeResult8_g254 = normalize( ase_worldViewDir );
				float dotResult7_g255 = dot( temp_output_1_0_g255 , normalizeResult8_g254 );
				float2 appendResult10_g255 = (float2(( ( dotResult4_g255 / 2.0 ) + 0.5 ) , dotResult7_g255));
				float3 ase_worldTangent = packedInput.ase_texcoord3.xyz;
				float3 ase_worldNormal = packedInput.ase_texcoord4.xyz;
				float3 ase_worldBitangent = packedInput.ase_texcoord5.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 ase_tanViewDir =  tanToWorld0 * ase_worldViewDir.x + tanToWorld1 * ase_worldViewDir.y  + tanToWorld2 * ase_worldViewDir.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float3 temp_cast_0 = (5.0).xxx;
				float3 temp_output_4_0_g249 = pow( abs( packedInput.ase_normal ) , temp_cast_0 );
				float3 break6_g249 = temp_output_4_0_g249;
				float3 projNormal10_g249 = ( temp_output_4_0_g249 / ( break6_g249.x + break6_g249.y + break6_g249.z ) );
				float localBicubicPrepare2_g251 = ( 0.0 );
				float3 break26_g249 = packedInput.ase_texcoord6.xyz;
				float2 appendResult27_g249 = (float2(break26_g249.z , break26_g249.y));
				float3 nSign18_g249 = sign( packedInput.ase_normal );
				float3 break20_g249 = nSign18_g249;
				float2 appendResult21_g249 = (float2(break20_g249.x , 1.0));
				float temp_output_29_0_g249 = _NormalTiling;
				float temp_output_10_0_g244 = ( _TimeParameters.x * _NormalSpeed );
				float2 appendResult12_g244 = (float2(temp_output_10_0_g244 , temp_output_10_0_g244));
				float3 temp_cast_1 = (5.0).xxx;
				float3 temp_output_4_0_g245 = pow( abs( packedInput.ase_normal ) , temp_cast_1 );
				float3 break6_g245 = temp_output_4_0_g245;
				float3 projNormal10_g245 = ( temp_output_4_0_g245 / ( break6_g245.x + break6_g245.y + break6_g245.z ) );
				float localBicubicPrepare2_g247 = ( 0.0 );
				float3 break26_g245 = packedInput.ase_texcoord6.xyz;
				float2 appendResult27_g245 = (float2(break26_g245.z , break26_g245.y));
				float3 nSign18_g245 = sign( packedInput.ase_normal );
				float3 break20_g245 = nSign18_g245;
				float2 appendResult21_g245 = (float2(break20_g245.x , 1.0));
				float temp_output_29_0_g245 = _NormalUVTiling;
				float temp_output_2_0_g244 = ( _TimeParameters.x * _NormalUVSpeed );
				float2 appendResult5_g244 = (float2(temp_output_2_0_g244 , temp_output_2_0_g244));
				float2 temp_output_65_0_g245 = appendResult5_g244;
				float2 temp_output_68_0_g245 = ( ( appendResult27_g245 * appendResult21_g245 * temp_output_29_0_g245 ) + temp_output_65_0_g245 );
				float2 Input_UV100_g247 = temp_output_68_0_g245;
				float2 UV2_g247 = Input_UV100_g247;
				float4 TexelSize2_g247 = _NormalMap_TexelSize;
				float2 UV02_g247 = float2( 0,0 );
				float2 UV12_g247 = float2( 0,0 );
				float2 UV22_g247 = float2( 0,0 );
				float2 UV32_g247 = float2( 0,0 );
				float W02_g247 = 0;
				float W12_g247 = 0;
				{
				{
				 UV2_g247 = UV2_g247 * TexelSize2_g247.zw - 0.5;
				    float2 f = frac( UV2_g247 );
				    UV2_g247 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g247.x - 0.5, UV2_g247.x + 1.5, UV2_g247.y - 0.5, UV2_g247.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g247.xyxy;
				    UV02_g247 = off.xz;
				    UV12_g247 = off.yz;
				    UV22_g247 = off.xw;
				    UV32_g247 = off.yw;
				    W02_g247 = s.x / ( s.x + s.y );
				 W12_g247 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g247 = lerp( tex2D( _NormalMap, UV32_g247 ) , tex2D( _NormalMap, UV22_g247 ) , W02_g247);
				float4 lerpResult45_g247 = lerp( tex2D( _NormalMap, UV12_g247 ) , tex2D( _NormalMap, UV02_g247 ) , W02_g247);
				float4 lerpResult44_g247 = lerp( lerpResult46_g247 , lerpResult45_g247 , W12_g247);
				float4 Output_2D131_g247 = lerpResult44_g247;
				float localBicubicPrepare2_g248 = ( 0.0 );
				float2 appendResult32_g245 = (float2(break26_g245.x , break26_g245.z));
				float2 appendResult22_g245 = (float2(break20_g245.y , 1.0));
				float2 temp_output_66_0_g245 = ( ( temp_output_29_0_g245 * appendResult32_g245 * appendResult22_g245 ) + temp_output_65_0_g245 );
				float2 Input_UV100_g248 = temp_output_66_0_g245;
				float2 UV2_g248 = Input_UV100_g248;
				float4 TexelSize2_g248 = _NormalMap_TexelSize;
				float2 UV02_g248 = float2( 0,0 );
				float2 UV12_g248 = float2( 0,0 );
				float2 UV22_g248 = float2( 0,0 );
				float2 UV32_g248 = float2( 0,0 );
				float W02_g248 = 0;
				float W12_g248 = 0;
				{
				{
				 UV2_g248 = UV2_g248 * TexelSize2_g248.zw - 0.5;
				    float2 f = frac( UV2_g248 );
				    UV2_g248 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g248.x - 0.5, UV2_g248.x + 1.5, UV2_g248.y - 0.5, UV2_g248.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g248.xyxy;
				    UV02_g248 = off.xz;
				    UV12_g248 = off.yz;
				    UV22_g248 = off.xw;
				    UV32_g248 = off.yw;
				    W02_g248 = s.x / ( s.x + s.y );
				 W12_g248 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g248 = lerp( tex2D( _NormalMap, UV32_g248 ) , tex2D( _NormalMap, UV22_g248 ) , W02_g248);
				float4 lerpResult45_g248 = lerp( tex2D( _NormalMap, UV12_g248 ) , tex2D( _NormalMap, UV02_g248 ) , W02_g248);
				float4 lerpResult44_g248 = lerp( lerpResult46_g248 , lerpResult45_g248 , W12_g248);
				float4 Output_2D131_g248 = lerpResult44_g248;
				float localBicubicPrepare2_g246 = ( 0.0 );
				float2 appendResult34_g245 = (float2(break26_g245.x , break26_g245.y));
				float2 appendResult25_g245 = (float2(-break20_g245.z , 1.0));
				float2 temp_output_67_0_g245 = ( temp_output_65_0_g245 + ( temp_output_29_0_g245 * appendResult34_g245 * appendResult25_g245 ) );
				float2 Input_UV100_g246 = temp_output_67_0_g245;
				float2 UV2_g246 = Input_UV100_g246;
				float4 TexelSize2_g246 = _NormalMap_TexelSize;
				float2 UV02_g246 = float2( 0,0 );
				float2 UV12_g246 = float2( 0,0 );
				float2 UV22_g246 = float2( 0,0 );
				float2 UV32_g246 = float2( 0,0 );
				float W02_g246 = 0;
				float W12_g246 = 0;
				{
				{
				 UV2_g246 = UV2_g246 * TexelSize2_g246.zw - 0.5;
				    float2 f = frac( UV2_g246 );
				    UV2_g246 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g246.x - 0.5, UV2_g246.x + 1.5, UV2_g246.y - 0.5, UV2_g246.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g246.xyxy;
				    UV02_g246 = off.xz;
				    UV12_g246 = off.yz;
				    UV22_g246 = off.xw;
				    UV32_g246 = off.yw;
				    W02_g246 = s.x / ( s.x + s.y );
				 W12_g246 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g246 = lerp( tex2D( _NormalMap, UV32_g246 ) , tex2D( _NormalMap, UV22_g246 ) , W02_g246);
				float4 lerpResult45_g246 = lerp( tex2D( _NormalMap, UV12_g246 ) , tex2D( _NormalMap, UV02_g246 ) , W02_g246);
				float4 lerpResult44_g246 = lerp( lerpResult46_g246 , lerpResult45_g246 , W12_g246);
				float4 Output_2D131_g246 = lerpResult44_g246;
				float4 break11_g244 = ( saturate( ( ( projNormal10_g245.x * Output_2D131_g247 ) + ( projNormal10_g245.y * Output_2D131_g248 ) + ( projNormal10_g245.z * Output_2D131_g246 ) ) ) * _NormlalDistortionFactor );
				float2 appendResult13_g244 = (float2(break11_g244.r , break11_g244.g));
				float2 temp_output_65_0_g249 = ( appendResult12_g244 + appendResult13_g244 );
				float2 temp_output_68_0_g249 = ( ( appendResult27_g249 * appendResult21_g249 * temp_output_29_0_g249 ) + temp_output_65_0_g249 );
				float2 Input_UV100_g251 = temp_output_68_0_g249;
				float2 UV2_g251 = Input_UV100_g251;
				float4 TexelSize2_g251 = _NormalMap_TexelSize;
				float2 UV02_g251 = float2( 0,0 );
				float2 UV12_g251 = float2( 0,0 );
				float2 UV22_g251 = float2( 0,0 );
				float2 UV32_g251 = float2( 0,0 );
				float W02_g251 = 0;
				float W12_g251 = 0;
				{
				{
				 UV2_g251 = UV2_g251 * TexelSize2_g251.zw - 0.5;
				    float2 f = frac( UV2_g251 );
				    UV2_g251 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g251.x - 0.5, UV2_g251.x + 1.5, UV2_g251.y - 0.5, UV2_g251.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g251.xyxy;
				    UV02_g251 = off.xz;
				    UV12_g251 = off.yz;
				    UV22_g251 = off.xw;
				    UV32_g251 = off.yw;
				    W02_g251 = s.x / ( s.x + s.y );
				 W12_g251 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g251 = lerp( tex2D( _NormalMap, UV32_g251 ) , tex2D( _NormalMap, UV22_g251 ) , W02_g251);
				float4 lerpResult45_g251 = lerp( tex2D( _NormalMap, UV12_g251 ) , tex2D( _NormalMap, UV02_g251 ) , W02_g251);
				float4 lerpResult44_g251 = lerp( lerpResult46_g251 , lerpResult45_g251 , W12_g251);
				float4 Output_2D131_g251 = lerpResult44_g251;
				float localBicubicPrepare2_g252 = ( 0.0 );
				float2 appendResult32_g249 = (float2(break26_g249.x , break26_g249.z));
				float2 appendResult22_g249 = (float2(break20_g249.y , 1.0));
				float2 temp_output_66_0_g249 = ( ( temp_output_29_0_g249 * appendResult32_g249 * appendResult22_g249 ) + temp_output_65_0_g249 );
				float2 Input_UV100_g252 = temp_output_66_0_g249;
				float2 UV2_g252 = Input_UV100_g252;
				float4 TexelSize2_g252 = _NormalMap_TexelSize;
				float2 UV02_g252 = float2( 0,0 );
				float2 UV12_g252 = float2( 0,0 );
				float2 UV22_g252 = float2( 0,0 );
				float2 UV32_g252 = float2( 0,0 );
				float W02_g252 = 0;
				float W12_g252 = 0;
				{
				{
				 UV2_g252 = UV2_g252 * TexelSize2_g252.zw - 0.5;
				    float2 f = frac( UV2_g252 );
				    UV2_g252 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g252.x - 0.5, UV2_g252.x + 1.5, UV2_g252.y - 0.5, UV2_g252.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g252.xyxy;
				    UV02_g252 = off.xz;
				    UV12_g252 = off.yz;
				    UV22_g252 = off.xw;
				    UV32_g252 = off.yw;
				    W02_g252 = s.x / ( s.x + s.y );
				 W12_g252 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g252 = lerp( tex2D( _NormalMap, UV32_g252 ) , tex2D( _NormalMap, UV22_g252 ) , W02_g252);
				float4 lerpResult45_g252 = lerp( tex2D( _NormalMap, UV12_g252 ) , tex2D( _NormalMap, UV02_g252 ) , W02_g252);
				float4 lerpResult44_g252 = lerp( lerpResult46_g252 , lerpResult45_g252 , W12_g252);
				float4 Output_2D131_g252 = lerpResult44_g252;
				float localBicubicPrepare2_g250 = ( 0.0 );
				float2 appendResult34_g249 = (float2(break26_g249.x , break26_g249.y));
				float2 appendResult25_g249 = (float2(-break20_g249.z , 1.0));
				float2 temp_output_67_0_g249 = ( temp_output_65_0_g249 + ( temp_output_29_0_g249 * appendResult34_g249 * appendResult25_g249 ) );
				float2 Input_UV100_g250 = temp_output_67_0_g249;
				float2 UV2_g250 = Input_UV100_g250;
				float4 TexelSize2_g250 = _NormalMap_TexelSize;
				float2 UV02_g250 = float2( 0,0 );
				float2 UV12_g250 = float2( 0,0 );
				float2 UV22_g250 = float2( 0,0 );
				float2 UV32_g250 = float2( 0,0 );
				float W02_g250 = 0;
				float W12_g250 = 0;
				{
				{
				 UV2_g250 = UV2_g250 * TexelSize2_g250.zw - 0.5;
				    float2 f = frac( UV2_g250 );
				    UV2_g250 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g250.x - 0.5, UV2_g250.x + 1.5, UV2_g250.y - 0.5, UV2_g250.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g250.xyxy;
				    UV02_g250 = off.xz;
				    UV12_g250 = off.yz;
				    UV22_g250 = off.xw;
				    UV32_g250 = off.yw;
				    W02_g250 = s.x / ( s.x + s.y );
				 W12_g250 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g250 = lerp( tex2D( _NormalMap, UV32_g250 ) , tex2D( _NormalMap, UV22_g250 ) , W02_g250);
				float4 lerpResult45_g250 = lerp( tex2D( _NormalMap, UV12_g250 ) , tex2D( _NormalMap, UV02_g250 ) , W02_g250);
				float4 lerpResult44_g250 = lerp( lerpResult46_g250 , lerpResult45_g250 , W12_g250);
				float4 Output_2D131_g250 = lerpResult44_g250;
				float3 unpack18_g244 = UnpackNormalScale( saturate( ( ( projNormal10_g249.x * Output_2D131_g251 ) + ( projNormal10_g249.y * Output_2D131_g252 ) + ( projNormal10_g249.z * Output_2D131_g250 ) ) ), _NormalScale );
				unpack18_g244.z = lerp( 1, unpack18_g244.z, saturate(_NormalScale) );
				float3 normalUnpacked24 = unpack18_g244;
				float3 normalizeResult5_g253 = normalize( normalUnpacked24 );
				float dotResult14_g253 = dot( ase_tanViewDir , normalizeResult5_g253 );
				float3 temp_cast_4 = (5.0).xxx;
				float3 temp_output_4_0_g174 = pow( abs( packedInput.ase_normal ) , temp_cast_4 );
				float3 break6_g174 = temp_output_4_0_g174;
				float3 projNormal10_g174 = ( temp_output_4_0_g174 / ( break6_g174.x + break6_g174.y + break6_g174.z ) );
				float localBicubicPrepare2_g176 = ( 0.0 );
				float3 break26_g174 = packedInput.ase_texcoord6.xyz;
				float2 appendResult27_g174 = (float2(break26_g174.z , break26_g174.y));
				float3 nSign18_g174 = sign( packedInput.ase_normal );
				float3 break20_g174 = nSign18_g174;
				float2 appendResult21_g174 = (float2(break20_g174.x , 1.0));
				float temp_output_29_0_g174 = _DistortionTiling;
				float temp_output_10_0_g173 = ( _TimeParameters.x * _DistortionSpeed );
				float2 appendResult12_g173 = (float2(temp_output_10_0_g173 , temp_output_10_0_g173));
				float3 temp_cast_5 = (5.0).xxx;
				float3 temp_output_4_0_g178 = pow( abs( packedInput.ase_normal ) , temp_cast_5 );
				float3 break6_g178 = temp_output_4_0_g178;
				float3 projNormal10_g178 = ( temp_output_4_0_g178 / ( break6_g178.x + break6_g178.y + break6_g178.z ) );
				float localBicubicPrepare2_g180 = ( 0.0 );
				float3 break26_g178 = packedInput.ase_texcoord6.xyz;
				float2 appendResult27_g178 = (float2(break26_g178.z , break26_g178.y));
				float3 nSign18_g178 = sign( packedInput.ase_normal );
				float3 break20_g178 = nSign18_g178;
				float2 appendResult21_g178 = (float2(break20_g178.x , 1.0));
				float temp_output_29_0_g178 = _DistortionUVTiling;
				float temp_output_2_0_g173 = ( _TimeParameters.x * _DistortionUVSpeed );
				float2 appendResult5_g173 = (float2(temp_output_2_0_g173 , temp_output_2_0_g173));
				float2 temp_output_65_0_g178 = appendResult5_g173;
				float2 temp_output_68_0_g178 = ( ( appendResult27_g178 * appendResult21_g178 * temp_output_29_0_g178 ) + temp_output_65_0_g178 );
				float2 Input_UV100_g180 = temp_output_68_0_g178;
				float2 UV2_g180 = Input_UV100_g180;
				float4 TexelSize2_g180 = _DistortionUVMap_TexelSize;
				float2 UV02_g180 = float2( 0,0 );
				float2 UV12_g180 = float2( 0,0 );
				float2 UV22_g180 = float2( 0,0 );
				float2 UV32_g180 = float2( 0,0 );
				float W02_g180 = 0;
				float W12_g180 = 0;
				{
				{
				 UV2_g180 = UV2_g180 * TexelSize2_g180.zw - 0.5;
				    float2 f = frac( UV2_g180 );
				    UV2_g180 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g180.x - 0.5, UV2_g180.x + 1.5, UV2_g180.y - 0.5, UV2_g180.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g180.xyxy;
				    UV02_g180 = off.xz;
				    UV12_g180 = off.yz;
				    UV22_g180 = off.xw;
				    UV32_g180 = off.yw;
				    W02_g180 = s.x / ( s.x + s.y );
				 W12_g180 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g180 = lerp( tex2D( _DistortionUVMap, UV32_g180 ) , tex2D( _DistortionUVMap, UV22_g180 ) , W02_g180);
				float4 lerpResult45_g180 = lerp( tex2D( _DistortionUVMap, UV12_g180 ) , tex2D( _DistortionUVMap, UV02_g180 ) , W02_g180);
				float4 lerpResult44_g180 = lerp( lerpResult46_g180 , lerpResult45_g180 , W12_g180);
				float4 Output_2D131_g180 = lerpResult44_g180;
				float localBicubicPrepare2_g181 = ( 0.0 );
				float2 appendResult32_g178 = (float2(break26_g178.x , break26_g178.z));
				float2 appendResult22_g178 = (float2(break20_g178.y , 1.0));
				float2 temp_output_66_0_g178 = ( ( temp_output_29_0_g178 * appendResult32_g178 * appendResult22_g178 ) + temp_output_65_0_g178 );
				float2 Input_UV100_g181 = temp_output_66_0_g178;
				float2 UV2_g181 = Input_UV100_g181;
				float4 TexelSize2_g181 = _DistortionUVMap_TexelSize;
				float2 UV02_g181 = float2( 0,0 );
				float2 UV12_g181 = float2( 0,0 );
				float2 UV22_g181 = float2( 0,0 );
				float2 UV32_g181 = float2( 0,0 );
				float W02_g181 = 0;
				float W12_g181 = 0;
				{
				{
				 UV2_g181 = UV2_g181 * TexelSize2_g181.zw - 0.5;
				    float2 f = frac( UV2_g181 );
				    UV2_g181 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g181.x - 0.5, UV2_g181.x + 1.5, UV2_g181.y - 0.5, UV2_g181.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g181.xyxy;
				    UV02_g181 = off.xz;
				    UV12_g181 = off.yz;
				    UV22_g181 = off.xw;
				    UV32_g181 = off.yw;
				    W02_g181 = s.x / ( s.x + s.y );
				 W12_g181 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g181 = lerp( tex2D( _DistortionUVMap, UV32_g181 ) , tex2D( _DistortionUVMap, UV22_g181 ) , W02_g181);
				float4 lerpResult45_g181 = lerp( tex2D( _DistortionUVMap, UV12_g181 ) , tex2D( _DistortionUVMap, UV02_g181 ) , W02_g181);
				float4 lerpResult44_g181 = lerp( lerpResult46_g181 , lerpResult45_g181 , W12_g181);
				float4 Output_2D131_g181 = lerpResult44_g181;
				float localBicubicPrepare2_g179 = ( 0.0 );
				float2 appendResult34_g178 = (float2(break26_g178.x , break26_g178.y));
				float2 appendResult25_g178 = (float2(-break20_g178.z , 1.0));
				float2 temp_output_67_0_g178 = ( temp_output_65_0_g178 + ( temp_output_29_0_g178 * appendResult34_g178 * appendResult25_g178 ) );
				float2 Input_UV100_g179 = temp_output_67_0_g178;
				float2 UV2_g179 = Input_UV100_g179;
				float4 TexelSize2_g179 = _DistortionUVMap_TexelSize;
				float2 UV02_g179 = float2( 0,0 );
				float2 UV12_g179 = float2( 0,0 );
				float2 UV22_g179 = float2( 0,0 );
				float2 UV32_g179 = float2( 0,0 );
				float W02_g179 = 0;
				float W12_g179 = 0;
				{
				{
				 UV2_g179 = UV2_g179 * TexelSize2_g179.zw - 0.5;
				    float2 f = frac( UV2_g179 );
				    UV2_g179 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g179.x - 0.5, UV2_g179.x + 1.5, UV2_g179.y - 0.5, UV2_g179.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g179.xyxy;
				    UV02_g179 = off.xz;
				    UV12_g179 = off.yz;
				    UV22_g179 = off.xw;
				    UV32_g179 = off.yw;
				    W02_g179 = s.x / ( s.x + s.y );
				 W12_g179 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g179 = lerp( tex2D( _DistortionUVMap, UV32_g179 ) , tex2D( _DistortionUVMap, UV22_g179 ) , W02_g179);
				float4 lerpResult45_g179 = lerp( tex2D( _DistortionUVMap, UV12_g179 ) , tex2D( _DistortionUVMap, UV02_g179 ) , W02_g179);
				float4 lerpResult44_g179 = lerp( lerpResult46_g179 , lerpResult45_g179 , W12_g179);
				float4 Output_2D131_g179 = lerpResult44_g179;
				float4 break11_g173 = ( saturate( ( ( projNormal10_g178.x * Output_2D131_g180 ) + ( projNormal10_g178.y * Output_2D131_g181 ) + ( projNormal10_g178.z * Output_2D131_g179 ) ) ) * _DistortionFactor );
				float2 appendResult13_g173 = (float2(break11_g173.r , break11_g173.g));
				float2 temp_output_65_0_g174 = ( appendResult12_g173 + appendResult13_g173 );
				float2 temp_output_68_0_g174 = ( ( appendResult27_g174 * appendResult21_g174 * temp_output_29_0_g174 ) + temp_output_65_0_g174 );
				float2 Input_UV100_g176 = temp_output_68_0_g174;
				float2 UV2_g176 = Input_UV100_g176;
				float4 TexelSize2_g176 = _DistortionMap_TexelSize;
				float2 UV02_g176 = float2( 0,0 );
				float2 UV12_g176 = float2( 0,0 );
				float2 UV22_g176 = float2( 0,0 );
				float2 UV32_g176 = float2( 0,0 );
				float W02_g176 = 0;
				float W12_g176 = 0;
				{
				{
				 UV2_g176 = UV2_g176 * TexelSize2_g176.zw - 0.5;
				    float2 f = frac( UV2_g176 );
				    UV2_g176 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g176.x - 0.5, UV2_g176.x + 1.5, UV2_g176.y - 0.5, UV2_g176.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g176.xyxy;
				    UV02_g176 = off.xz;
				    UV12_g176 = off.yz;
				    UV22_g176 = off.xw;
				    UV32_g176 = off.yw;
				    W02_g176 = s.x / ( s.x + s.y );
				 W12_g176 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g176 = lerp( tex2D( _DistortionMap, UV32_g176 ) , tex2D( _DistortionMap, UV22_g176 ) , W02_g176);
				float4 lerpResult45_g176 = lerp( tex2D( _DistortionMap, UV12_g176 ) , tex2D( _DistortionMap, UV02_g176 ) , W02_g176);
				float4 lerpResult44_g176 = lerp( lerpResult46_g176 , lerpResult45_g176 , W12_g176);
				float4 Output_2D131_g176 = lerpResult44_g176;
				float localBicubicPrepare2_g177 = ( 0.0 );
				float2 appendResult32_g174 = (float2(break26_g174.x , break26_g174.z));
				float2 appendResult22_g174 = (float2(break20_g174.y , 1.0));
				float2 temp_output_66_0_g174 = ( ( temp_output_29_0_g174 * appendResult32_g174 * appendResult22_g174 ) + temp_output_65_0_g174 );
				float2 Input_UV100_g177 = temp_output_66_0_g174;
				float2 UV2_g177 = Input_UV100_g177;
				float4 TexelSize2_g177 = _DistortionMap_TexelSize;
				float2 UV02_g177 = float2( 0,0 );
				float2 UV12_g177 = float2( 0,0 );
				float2 UV22_g177 = float2( 0,0 );
				float2 UV32_g177 = float2( 0,0 );
				float W02_g177 = 0;
				float W12_g177 = 0;
				{
				{
				 UV2_g177 = UV2_g177 * TexelSize2_g177.zw - 0.5;
				    float2 f = frac( UV2_g177 );
				    UV2_g177 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g177.x - 0.5, UV2_g177.x + 1.5, UV2_g177.y - 0.5, UV2_g177.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g177.xyxy;
				    UV02_g177 = off.xz;
				    UV12_g177 = off.yz;
				    UV22_g177 = off.xw;
				    UV32_g177 = off.yw;
				    W02_g177 = s.x / ( s.x + s.y );
				 W12_g177 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g177 = lerp( tex2D( _DistortionMap, UV32_g177 ) , tex2D( _DistortionMap, UV22_g177 ) , W02_g177);
				float4 lerpResult45_g177 = lerp( tex2D( _DistortionMap, UV12_g177 ) , tex2D( _DistortionMap, UV02_g177 ) , W02_g177);
				float4 lerpResult44_g177 = lerp( lerpResult46_g177 , lerpResult45_g177 , W12_g177);
				float4 Output_2D131_g177 = lerpResult44_g177;
				float localBicubicPrepare2_g175 = ( 0.0 );
				float2 appendResult34_g174 = (float2(break26_g174.x , break26_g174.y));
				float2 appendResult25_g174 = (float2(-break20_g174.z , 1.0));
				float2 temp_output_67_0_g174 = ( temp_output_65_0_g174 + ( temp_output_29_0_g174 * appendResult34_g174 * appendResult25_g174 ) );
				float2 Input_UV100_g175 = temp_output_67_0_g174;
				float2 UV2_g175 = Input_UV100_g175;
				float4 TexelSize2_g175 = _DistortionMap_TexelSize;
				float2 UV02_g175 = float2( 0,0 );
				float2 UV12_g175 = float2( 0,0 );
				float2 UV22_g175 = float2( 0,0 );
				float2 UV32_g175 = float2( 0,0 );
				float W02_g175 = 0;
				float W12_g175 = 0;
				{
				{
				 UV2_g175 = UV2_g175 * TexelSize2_g175.zw - 0.5;
				    float2 f = frac( UV2_g175 );
				    UV2_g175 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g175.x - 0.5, UV2_g175.x + 1.5, UV2_g175.y - 0.5, UV2_g175.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g175.xyxy;
				    UV02_g175 = off.xz;
				    UV12_g175 = off.yz;
				    UV22_g175 = off.xw;
				    UV32_g175 = off.yw;
				    W02_g175 = s.x / ( s.x + s.y );
				 W12_g175 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g175 = lerp( tex2D( _DistortionMap, UV32_g175 ) , tex2D( _DistortionMap, UV22_g175 ) , W02_g175);
				float4 lerpResult45_g175 = lerp( tex2D( _DistortionMap, UV12_g175 ) , tex2D( _DistortionMap, UV02_g175 ) , W02_g175);
				float4 lerpResult44_g175 = lerp( lerpResult46_g175 , lerpResult45_g175 , W12_g175);
				float4 Output_2D131_g175 = lerpResult44_g175;
				float4 temp_cast_6 = (_DetailPow).xxxx;
				float4 temp_output_9_0 = saturate( ( pow( max( float4( 0,0,0,0 ) , saturate( ( ( projNormal10_g174.x * Output_2D131_g176 ) + ( projNormal10_g174.y * Output_2D131_g177 ) + ( projNormal10_g174.z * Output_2D131_g175 ) ) ) ) , temp_cast_6 ) * _DetailBoost ) );
				float4 lerpResult5 = lerp( _TintLow , _TintHigh , temp_output_9_0.r);
				
				float4 spec90 = ( _SpecularColor * temp_output_9_0 * _Specular );
				
				float4 temp_cast_9 = (0.0).xxxx;
				float clampResult20_g256 = clamp( sin( ( ( _TimeParameters.x ) * ( 2.0 * PI ) ) ) , 0.3 , 1.0 );
				float clampResult29_g256 = clamp( sin( ( ( _TimeParameters.x ) * ( 5.0 * PI ) ) ) , 0.5 , 1.0 );
				float clampResult30_g256 = clamp( sin( ( ( _TimeParameters.x ) * ( 10.0 * PI ) ) ) , 0.7 , 1.0 );
				float sine32_g256 = ( clampResult20_g256 * clampResult29_g256 * clampResult30_g256 );
				float3 temp_cast_10 = (3.0).xxx;
				float3 temp_output_4_0_g265 = pow( abs( packedInput.ase_normal ) , temp_cast_10 );
				float3 break6_g265 = temp_output_4_0_g265;
				float3 projNormal10_g265 = ( temp_output_4_0_g265 / ( break6_g265.x + break6_g265.y + break6_g265.z ) );
				float localBicubicPrepare2_g267 = ( 0.0 );
				float3 break26_g265 = packedInput.ase_texcoord6.xyz;
				float2 appendResult27_g265 = (float2(break26_g265.z , break26_g265.y));
				float3 nSign18_g265 = sign( packedInput.ase_normal );
				float3 break20_g265 = nSign18_g265;
				float2 appendResult21_g265 = (float2(break20_g265.x , 1.0));
				float temp_output_29_0_g265 = _LightingMaskATiling;
				float mulTime7_g256 = _TimeParameters.x * _LightingMaskAUVSpeed;
				float2 temp_cast_11 = (mulTime7_g256).xx;
				float2 temp_output_65_0_g265 = temp_cast_11;
				float2 temp_output_68_0_g265 = ( ( appendResult27_g265 * appendResult21_g265 * temp_output_29_0_g265 ) + temp_output_65_0_g265 );
				float2 Input_UV100_g267 = temp_output_68_0_g265;
				float2 UV2_g267 = Input_UV100_g267;
				float4 TexelSize2_g267 = _LightingMaskMap_TexelSize;
				float2 UV02_g267 = float2( 0,0 );
				float2 UV12_g267 = float2( 0,0 );
				float2 UV22_g267 = float2( 0,0 );
				float2 UV32_g267 = float2( 0,0 );
				float W02_g267 = 0;
				float W12_g267 = 0;
				{
				{
				 UV2_g267 = UV2_g267 * TexelSize2_g267.zw - 0.5;
				    float2 f = frac( UV2_g267 );
				    UV2_g267 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g267.x - 0.5, UV2_g267.x + 1.5, UV2_g267.y - 0.5, UV2_g267.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g267.xyxy;
				    UV02_g267 = off.xz;
				    UV12_g267 = off.yz;
				    UV22_g267 = off.xw;
				    UV32_g267 = off.yw;
				    W02_g267 = s.x / ( s.x + s.y );
				 W12_g267 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g267 = lerp( tex2D( _LightingMaskMap, UV32_g267 ) , tex2D( _LightingMaskMap, UV22_g267 ) , W02_g267);
				float4 lerpResult45_g267 = lerp( tex2D( _LightingMaskMap, UV12_g267 ) , tex2D( _LightingMaskMap, UV02_g267 ) , W02_g267);
				float4 lerpResult44_g267 = lerp( lerpResult46_g267 , lerpResult45_g267 , W12_g267);
				float4 Output_2D131_g267 = lerpResult44_g267;
				float localBicubicPrepare2_g268 = ( 0.0 );
				float2 appendResult32_g265 = (float2(break26_g265.x , break26_g265.z));
				float2 appendResult22_g265 = (float2(break20_g265.y , 1.0));
				float2 temp_output_66_0_g265 = ( ( temp_output_29_0_g265 * appendResult32_g265 * appendResult22_g265 ) + temp_output_65_0_g265 );
				float2 Input_UV100_g268 = temp_output_66_0_g265;
				float2 UV2_g268 = Input_UV100_g268;
				float4 TexelSize2_g268 = _LightingMaskMap_TexelSize;
				float2 UV02_g268 = float2( 0,0 );
				float2 UV12_g268 = float2( 0,0 );
				float2 UV22_g268 = float2( 0,0 );
				float2 UV32_g268 = float2( 0,0 );
				float W02_g268 = 0;
				float W12_g268 = 0;
				{
				{
				 UV2_g268 = UV2_g268 * TexelSize2_g268.zw - 0.5;
				    float2 f = frac( UV2_g268 );
				    UV2_g268 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g268.x - 0.5, UV2_g268.x + 1.5, UV2_g268.y - 0.5, UV2_g268.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g268.xyxy;
				    UV02_g268 = off.xz;
				    UV12_g268 = off.yz;
				    UV22_g268 = off.xw;
				    UV32_g268 = off.yw;
				    W02_g268 = s.x / ( s.x + s.y );
				 W12_g268 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g268 = lerp( tex2D( _LightingMaskMap, UV32_g268 ) , tex2D( _LightingMaskMap, UV22_g268 ) , W02_g268);
				float4 lerpResult45_g268 = lerp( tex2D( _LightingMaskMap, UV12_g268 ) , tex2D( _LightingMaskMap, UV02_g268 ) , W02_g268);
				float4 lerpResult44_g268 = lerp( lerpResult46_g268 , lerpResult45_g268 , W12_g268);
				float4 Output_2D131_g268 = lerpResult44_g268;
				float localBicubicPrepare2_g266 = ( 0.0 );
				float2 appendResult34_g265 = (float2(break26_g265.x , break26_g265.y));
				float2 appendResult25_g265 = (float2(-break20_g265.z , 1.0));
				float2 temp_output_67_0_g265 = ( temp_output_65_0_g265 + ( temp_output_29_0_g265 * appendResult34_g265 * appendResult25_g265 ) );
				float2 Input_UV100_g266 = temp_output_67_0_g265;
				float2 UV2_g266 = Input_UV100_g266;
				float4 TexelSize2_g266 = _LightingMaskMap_TexelSize;
				float2 UV02_g266 = float2( 0,0 );
				float2 UV12_g266 = float2( 0,0 );
				float2 UV22_g266 = float2( 0,0 );
				float2 UV32_g266 = float2( 0,0 );
				float W02_g266 = 0;
				float W12_g266 = 0;
				{
				{
				 UV2_g266 = UV2_g266 * TexelSize2_g266.zw - 0.5;
				    float2 f = frac( UV2_g266 );
				    UV2_g266 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g266.x - 0.5, UV2_g266.x + 1.5, UV2_g266.y - 0.5, UV2_g266.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g266.xyxy;
				    UV02_g266 = off.xz;
				    UV12_g266 = off.yz;
				    UV22_g266 = off.xw;
				    UV32_g266 = off.yw;
				    W02_g266 = s.x / ( s.x + s.y );
				 W12_g266 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g266 = lerp( tex2D( _LightingMaskMap, UV32_g266 ) , tex2D( _LightingMaskMap, UV22_g266 ) , W02_g266);
				float4 lerpResult45_g266 = lerp( tex2D( _LightingMaskMap, UV12_g266 ) , tex2D( _LightingMaskMap, UV02_g266 ) , W02_g266);
				float4 lerpResult44_g266 = lerp( lerpResult46_g266 , lerpResult45_g266 , W12_g266);
				float4 Output_2D131_g266 = lerpResult44_g266;
				float3 temp_cast_12 = (3.0).xxx;
				float3 temp_output_4_0_g269 = pow( abs( packedInput.ase_normal ) , temp_cast_12 );
				float3 break6_g269 = temp_output_4_0_g269;
				float3 projNormal10_g269 = ( temp_output_4_0_g269 / ( break6_g269.x + break6_g269.y + break6_g269.z ) );
				float localBicubicPrepare2_g271 = ( 0.0 );
				float3 break26_g269 = packedInput.ase_texcoord6.xyz;
				float2 appendResult27_g269 = (float2(break26_g269.z , break26_g269.y));
				float3 nSign18_g269 = sign( packedInput.ase_normal );
				float3 break20_g269 = nSign18_g269;
				float2 appendResult21_g269 = (float2(break20_g269.x , 1.0));
				float temp_output_29_0_g269 = _LightingMaskBTiling;
				float mulTime10_g256 = _TimeParameters.x * _LightingMaskBUVSpeed;
				float2 temp_cast_13 = (mulTime10_g256).xx;
				float2 temp_output_65_0_g269 = temp_cast_13;
				float2 temp_output_68_0_g269 = ( ( appendResult27_g269 * appendResult21_g269 * temp_output_29_0_g269 ) + temp_output_65_0_g269 );
				float2 Input_UV100_g271 = temp_output_68_0_g269;
				float2 UV2_g271 = Input_UV100_g271;
				float4 TexelSize2_g271 = _LightingMaskMap_TexelSize;
				float2 UV02_g271 = float2( 0,0 );
				float2 UV12_g271 = float2( 0,0 );
				float2 UV22_g271 = float2( 0,0 );
				float2 UV32_g271 = float2( 0,0 );
				float W02_g271 = 0;
				float W12_g271 = 0;
				{
				{
				 UV2_g271 = UV2_g271 * TexelSize2_g271.zw - 0.5;
				    float2 f = frac( UV2_g271 );
				    UV2_g271 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g271.x - 0.5, UV2_g271.x + 1.5, UV2_g271.y - 0.5, UV2_g271.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g271.xyxy;
				    UV02_g271 = off.xz;
				    UV12_g271 = off.yz;
				    UV22_g271 = off.xw;
				    UV32_g271 = off.yw;
				    W02_g271 = s.x / ( s.x + s.y );
				 W12_g271 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g271 = lerp( tex2D( _LightingMaskMap, UV32_g271 ) , tex2D( _LightingMaskMap, UV22_g271 ) , W02_g271);
				float4 lerpResult45_g271 = lerp( tex2D( _LightingMaskMap, UV12_g271 ) , tex2D( _LightingMaskMap, UV02_g271 ) , W02_g271);
				float4 lerpResult44_g271 = lerp( lerpResult46_g271 , lerpResult45_g271 , W12_g271);
				float4 Output_2D131_g271 = lerpResult44_g271;
				float localBicubicPrepare2_g272 = ( 0.0 );
				float2 appendResult32_g269 = (float2(break26_g269.x , break26_g269.z));
				float2 appendResult22_g269 = (float2(break20_g269.y , 1.0));
				float2 temp_output_66_0_g269 = ( ( temp_output_29_0_g269 * appendResult32_g269 * appendResult22_g269 ) + temp_output_65_0_g269 );
				float2 Input_UV100_g272 = temp_output_66_0_g269;
				float2 UV2_g272 = Input_UV100_g272;
				float4 TexelSize2_g272 = _LightingMaskMap_TexelSize;
				float2 UV02_g272 = float2( 0,0 );
				float2 UV12_g272 = float2( 0,0 );
				float2 UV22_g272 = float2( 0,0 );
				float2 UV32_g272 = float2( 0,0 );
				float W02_g272 = 0;
				float W12_g272 = 0;
				{
				{
				 UV2_g272 = UV2_g272 * TexelSize2_g272.zw - 0.5;
				    float2 f = frac( UV2_g272 );
				    UV2_g272 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g272.x - 0.5, UV2_g272.x + 1.5, UV2_g272.y - 0.5, UV2_g272.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g272.xyxy;
				    UV02_g272 = off.xz;
				    UV12_g272 = off.yz;
				    UV22_g272 = off.xw;
				    UV32_g272 = off.yw;
				    W02_g272 = s.x / ( s.x + s.y );
				 W12_g272 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g272 = lerp( tex2D( _LightingMaskMap, UV32_g272 ) , tex2D( _LightingMaskMap, UV22_g272 ) , W02_g272);
				float4 lerpResult45_g272 = lerp( tex2D( _LightingMaskMap, UV12_g272 ) , tex2D( _LightingMaskMap, UV02_g272 ) , W02_g272);
				float4 lerpResult44_g272 = lerp( lerpResult46_g272 , lerpResult45_g272 , W12_g272);
				float4 Output_2D131_g272 = lerpResult44_g272;
				float localBicubicPrepare2_g270 = ( 0.0 );
				float2 appendResult34_g269 = (float2(break26_g269.x , break26_g269.y));
				float2 appendResult25_g269 = (float2(-break20_g269.z , 1.0));
				float2 temp_output_67_0_g269 = ( temp_output_65_0_g269 + ( temp_output_29_0_g269 * appendResult34_g269 * appendResult25_g269 ) );
				float2 Input_UV100_g270 = temp_output_67_0_g269;
				float2 UV2_g270 = Input_UV100_g270;
				float4 TexelSize2_g270 = _LightingMaskMap_TexelSize;
				float2 UV02_g270 = float2( 0,0 );
				float2 UV12_g270 = float2( 0,0 );
				float2 UV22_g270 = float2( 0,0 );
				float2 UV32_g270 = float2( 0,0 );
				float W02_g270 = 0;
				float W12_g270 = 0;
				{
				{
				 UV2_g270 = UV2_g270 * TexelSize2_g270.zw - 0.5;
				    float2 f = frac( UV2_g270 );
				    UV2_g270 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g270.x - 0.5, UV2_g270.x + 1.5, UV2_g270.y - 0.5, UV2_g270.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g270.xyxy;
				    UV02_g270 = off.xz;
				    UV12_g270 = off.yz;
				    UV22_g270 = off.xw;
				    UV32_g270 = off.yw;
				    W02_g270 = s.x / ( s.x + s.y );
				 W12_g270 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g270 = lerp( tex2D( _LightingMaskMap, UV32_g270 ) , tex2D( _LightingMaskMap, UV22_g270 ) , W02_g270);
				float4 lerpResult45_g270 = lerp( tex2D( _LightingMaskMap, UV12_g270 ) , tex2D( _LightingMaskMap, UV02_g270 ) , W02_g270);
				float4 lerpResult44_g270 = lerp( lerpResult46_g270 , lerpResult45_g270 , W12_g270);
				float4 Output_2D131_g270 = lerpResult44_g270;
				float4 lightningMask14_g256 = ( saturate( ( ( projNormal10_g265.x * Output_2D131_g267 ) + ( projNormal10_g265.y * Output_2D131_g268 ) + ( projNormal10_g265.z * Output_2D131_g266 ) ) ) * saturate( ( ( projNormal10_g269.x * Output_2D131_g271 ) + ( projNormal10_g269.y * Output_2D131_g272 ) + ( projNormal10_g269.z * Output_2D131_g270 ) ) ) );
				float4 temp_cast_14 = (_LigntingMaskPow).xxxx;
				float4 lightningMaskSine39_g256 = saturate( pow( max( float4( 0,0,0,0 ) , ( _LightningSineMult * sine32_g256 * lightningMask14_g256 ) ) , temp_cast_14 ) );
				float3 temp_cast_15 = (3.0).xxx;
				float3 temp_output_4_0_g261 = pow( abs( packedInput.ase_normal ) , temp_cast_15 );
				float3 break6_g261 = temp_output_4_0_g261;
				float3 projNormal10_g261 = ( temp_output_4_0_g261 / ( break6_g261.x + break6_g261.y + break6_g261.z ) );
				float localBicubicPrepare2_g263 = ( 0.0 );
				float3 break26_g261 = packedInput.ase_texcoord6.xyz;
				float2 appendResult27_g261 = (float2(break26_g261.z , break26_g261.y));
				float3 nSign18_g261 = sign( packedInput.ase_normal );
				float3 break20_g261 = nSign18_g261;
				float2 appendResult21_g261 = (float2(break20_g261.x , 1.0));
				float temp_output_29_0_g261 = _LightingATiling;
				float mulTime45_g256 = _TimeParameters.x * _LightingAFrequency;
				float2 temp_cast_16 = (( floor( mulTime45_g256 ) * 1.0 )).xx;
				float2 temp_output_65_0_g261 = temp_cast_16;
				float2 temp_output_68_0_g261 = ( ( appendResult27_g261 * appendResult21_g261 * temp_output_29_0_g261 ) + temp_output_65_0_g261 );
				float2 Input_UV100_g263 = temp_output_68_0_g261;
				float2 UV2_g263 = Input_UV100_g263;
				float4 TexelSize2_g263 = _LightingMap_TexelSize;
				float2 UV02_g263 = float2( 0,0 );
				float2 UV12_g263 = float2( 0,0 );
				float2 UV22_g263 = float2( 0,0 );
				float2 UV32_g263 = float2( 0,0 );
				float W02_g263 = 0;
				float W12_g263 = 0;
				{
				{
				 UV2_g263 = UV2_g263 * TexelSize2_g263.zw - 0.5;
				    float2 f = frac( UV2_g263 );
				    UV2_g263 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g263.x - 0.5, UV2_g263.x + 1.5, UV2_g263.y - 0.5, UV2_g263.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g263.xyxy;
				    UV02_g263 = off.xz;
				    UV12_g263 = off.yz;
				    UV22_g263 = off.xw;
				    UV32_g263 = off.yw;
				    W02_g263 = s.x / ( s.x + s.y );
				 W12_g263 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g263 = lerp( tex2D( _LightingMap, UV32_g263 ) , tex2D( _LightingMap, UV22_g263 ) , W02_g263);
				float4 lerpResult45_g263 = lerp( tex2D( _LightingMap, UV12_g263 ) , tex2D( _LightingMap, UV02_g263 ) , W02_g263);
				float4 lerpResult44_g263 = lerp( lerpResult46_g263 , lerpResult45_g263 , W12_g263);
				float4 Output_2D131_g263 = lerpResult44_g263;
				float localBicubicPrepare2_g264 = ( 0.0 );
				float2 appendResult32_g261 = (float2(break26_g261.x , break26_g261.z));
				float2 appendResult22_g261 = (float2(break20_g261.y , 1.0));
				float2 temp_output_66_0_g261 = ( ( temp_output_29_0_g261 * appendResult32_g261 * appendResult22_g261 ) + temp_output_65_0_g261 );
				float2 Input_UV100_g264 = temp_output_66_0_g261;
				float2 UV2_g264 = Input_UV100_g264;
				float4 TexelSize2_g264 = _LightingMap_TexelSize;
				float2 UV02_g264 = float2( 0,0 );
				float2 UV12_g264 = float2( 0,0 );
				float2 UV22_g264 = float2( 0,0 );
				float2 UV32_g264 = float2( 0,0 );
				float W02_g264 = 0;
				float W12_g264 = 0;
				{
				{
				 UV2_g264 = UV2_g264 * TexelSize2_g264.zw - 0.5;
				    float2 f = frac( UV2_g264 );
				    UV2_g264 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g264.x - 0.5, UV2_g264.x + 1.5, UV2_g264.y - 0.5, UV2_g264.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g264.xyxy;
				    UV02_g264 = off.xz;
				    UV12_g264 = off.yz;
				    UV22_g264 = off.xw;
				    UV32_g264 = off.yw;
				    W02_g264 = s.x / ( s.x + s.y );
				 W12_g264 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g264 = lerp( tex2D( _LightingMap, UV32_g264 ) , tex2D( _LightingMap, UV22_g264 ) , W02_g264);
				float4 lerpResult45_g264 = lerp( tex2D( _LightingMap, UV12_g264 ) , tex2D( _LightingMap, UV02_g264 ) , W02_g264);
				float4 lerpResult44_g264 = lerp( lerpResult46_g264 , lerpResult45_g264 , W12_g264);
				float4 Output_2D131_g264 = lerpResult44_g264;
				float localBicubicPrepare2_g262 = ( 0.0 );
				float2 appendResult34_g261 = (float2(break26_g261.x , break26_g261.y));
				float2 appendResult25_g261 = (float2(-break20_g261.z , 1.0));
				float2 temp_output_67_0_g261 = ( temp_output_65_0_g261 + ( temp_output_29_0_g261 * appendResult34_g261 * appendResult25_g261 ) );
				float2 Input_UV100_g262 = temp_output_67_0_g261;
				float2 UV2_g262 = Input_UV100_g262;
				float4 TexelSize2_g262 = _LightingMap_TexelSize;
				float2 UV02_g262 = float2( 0,0 );
				float2 UV12_g262 = float2( 0,0 );
				float2 UV22_g262 = float2( 0,0 );
				float2 UV32_g262 = float2( 0,0 );
				float W02_g262 = 0;
				float W12_g262 = 0;
				{
				{
				 UV2_g262 = UV2_g262 * TexelSize2_g262.zw - 0.5;
				    float2 f = frac( UV2_g262 );
				    UV2_g262 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g262.x - 0.5, UV2_g262.x + 1.5, UV2_g262.y - 0.5, UV2_g262.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g262.xyxy;
				    UV02_g262 = off.xz;
				    UV12_g262 = off.yz;
				    UV22_g262 = off.xw;
				    UV32_g262 = off.yw;
				    W02_g262 = s.x / ( s.x + s.y );
				 W12_g262 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g262 = lerp( tex2D( _LightingMap, UV32_g262 ) , tex2D( _LightingMap, UV22_g262 ) , W02_g262);
				float4 lerpResult45_g262 = lerp( tex2D( _LightingMap, UV12_g262 ) , tex2D( _LightingMap, UV02_g262 ) , W02_g262);
				float4 lerpResult44_g262 = lerp( lerpResult46_g262 , lerpResult45_g262 , W12_g262);
				float4 Output_2D131_g262 = lerpResult44_g262;
				float3 temp_cast_17 = (3.0).xxx;
				float3 temp_output_4_0_g257 = pow( abs( packedInput.ase_normal ) , temp_cast_17 );
				float3 break6_g257 = temp_output_4_0_g257;
				float3 projNormal10_g257 = ( temp_output_4_0_g257 / ( break6_g257.x + break6_g257.y + break6_g257.z ) );
				float localBicubicPrepare2_g259 = ( 0.0 );
				float3 break26_g257 = packedInput.ase_texcoord6.xyz;
				float2 appendResult27_g257 = (float2(break26_g257.z , break26_g257.y));
				float3 nSign18_g257 = sign( packedInput.ase_normal );
				float3 break20_g257 = nSign18_g257;
				float2 appendResult21_g257 = (float2(break20_g257.x , 1.0));
				float temp_output_29_0_g257 = _LightingBTiling;
				float mulTime46_g256 = _TimeParameters.x * _LightingBFrequency;
				float2 temp_cast_18 = (( 1.0 * floor( mulTime46_g256 ) )).xx;
				float2 temp_output_65_0_g257 = temp_cast_18;
				float2 temp_output_68_0_g257 = ( ( appendResult27_g257 * appendResult21_g257 * temp_output_29_0_g257 ) + temp_output_65_0_g257 );
				float2 Input_UV100_g259 = temp_output_68_0_g257;
				float2 UV2_g259 = Input_UV100_g259;
				float4 TexelSize2_g259 = _LightingMap_TexelSize;
				float2 UV02_g259 = float2( 0,0 );
				float2 UV12_g259 = float2( 0,0 );
				float2 UV22_g259 = float2( 0,0 );
				float2 UV32_g259 = float2( 0,0 );
				float W02_g259 = 0;
				float W12_g259 = 0;
				{
				{
				 UV2_g259 = UV2_g259 * TexelSize2_g259.zw - 0.5;
				    float2 f = frac( UV2_g259 );
				    UV2_g259 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g259.x - 0.5, UV2_g259.x + 1.5, UV2_g259.y - 0.5, UV2_g259.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g259.xyxy;
				    UV02_g259 = off.xz;
				    UV12_g259 = off.yz;
				    UV22_g259 = off.xw;
				    UV32_g259 = off.yw;
				    W02_g259 = s.x / ( s.x + s.y );
				 W12_g259 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g259 = lerp( tex2D( _LightingMap, UV32_g259 ) , tex2D( _LightingMap, UV22_g259 ) , W02_g259);
				float4 lerpResult45_g259 = lerp( tex2D( _LightingMap, UV12_g259 ) , tex2D( _LightingMap, UV02_g259 ) , W02_g259);
				float4 lerpResult44_g259 = lerp( lerpResult46_g259 , lerpResult45_g259 , W12_g259);
				float4 Output_2D131_g259 = lerpResult44_g259;
				float localBicubicPrepare2_g260 = ( 0.0 );
				float2 appendResult32_g257 = (float2(break26_g257.x , break26_g257.z));
				float2 appendResult22_g257 = (float2(break20_g257.y , 1.0));
				float2 temp_output_66_0_g257 = ( ( temp_output_29_0_g257 * appendResult32_g257 * appendResult22_g257 ) + temp_output_65_0_g257 );
				float2 Input_UV100_g260 = temp_output_66_0_g257;
				float2 UV2_g260 = Input_UV100_g260;
				float4 TexelSize2_g260 = _LightingMap_TexelSize;
				float2 UV02_g260 = float2( 0,0 );
				float2 UV12_g260 = float2( 0,0 );
				float2 UV22_g260 = float2( 0,0 );
				float2 UV32_g260 = float2( 0,0 );
				float W02_g260 = 0;
				float W12_g260 = 0;
				{
				{
				 UV2_g260 = UV2_g260 * TexelSize2_g260.zw - 0.5;
				    float2 f = frac( UV2_g260 );
				    UV2_g260 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g260.x - 0.5, UV2_g260.x + 1.5, UV2_g260.y - 0.5, UV2_g260.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g260.xyxy;
				    UV02_g260 = off.xz;
				    UV12_g260 = off.yz;
				    UV22_g260 = off.xw;
				    UV32_g260 = off.yw;
				    W02_g260 = s.x / ( s.x + s.y );
				 W12_g260 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g260 = lerp( tex2D( _LightingMap, UV32_g260 ) , tex2D( _LightingMap, UV22_g260 ) , W02_g260);
				float4 lerpResult45_g260 = lerp( tex2D( _LightingMap, UV12_g260 ) , tex2D( _LightingMap, UV02_g260 ) , W02_g260);
				float4 lerpResult44_g260 = lerp( lerpResult46_g260 , lerpResult45_g260 , W12_g260);
				float4 Output_2D131_g260 = lerpResult44_g260;
				float localBicubicPrepare2_g258 = ( 0.0 );
				float2 appendResult34_g257 = (float2(break26_g257.x , break26_g257.y));
				float2 appendResult25_g257 = (float2(-break20_g257.z , 1.0));
				float2 temp_output_67_0_g257 = ( temp_output_65_0_g257 + ( temp_output_29_0_g257 * appendResult34_g257 * appendResult25_g257 ) );
				float2 Input_UV100_g258 = temp_output_67_0_g257;
				float2 UV2_g258 = Input_UV100_g258;
				float4 TexelSize2_g258 = _LightingMap_TexelSize;
				float2 UV02_g258 = float2( 0,0 );
				float2 UV12_g258 = float2( 0,0 );
				float2 UV22_g258 = float2( 0,0 );
				float2 UV32_g258 = float2( 0,0 );
				float W02_g258 = 0;
				float W12_g258 = 0;
				{
				{
				 UV2_g258 = UV2_g258 * TexelSize2_g258.zw - 0.5;
				    float2 f = frac( UV2_g258 );
				    UV2_g258 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g258.x - 0.5, UV2_g258.x + 1.5, UV2_g258.y - 0.5, UV2_g258.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g258.xyxy;
				    UV02_g258 = off.xz;
				    UV12_g258 = off.yz;
				    UV22_g258 = off.xw;
				    UV32_g258 = off.yw;
				    W02_g258 = s.x / ( s.x + s.y );
				 W12_g258 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g258 = lerp( tex2D( _LightingMap, UV32_g258 ) , tex2D( _LightingMap, UV22_g258 ) , W02_g258);
				float4 lerpResult45_g258 = lerp( tex2D( _LightingMap, UV12_g258 ) , tex2D( _LightingMap, UV02_g258 ) , W02_g258);
				float4 lerpResult44_g258 = lerp( lerpResult46_g258 , lerpResult45_g258 , W12_g258);
				float4 Output_2D131_g258 = lerpResult44_g258;
				float lightning50_g256 = ( saturate( ( ( projNormal10_g261.x * Output_2D131_g263 ) + ( projNormal10_g261.y * Output_2D131_g264 ) + ( projNormal10_g261.z * Output_2D131_g262 ) ) ) * saturate( ( ( projNormal10_g257.x * Output_2D131_g259 ) + ( projNormal10_g257.y * Output_2D131_g260 ) + ( projNormal10_g257.z * Output_2D131_g258 ) ) ) * _LightningBoost ).r;
				
				surfaceDescription.BaseColor = ( saturate( ( ( ( tex2D( _ScatterMap, ( ( _ScatterCenterShift + appendResult10_g255 ) * _ScatterStretch ) ) * _ScatterColor ) * _ScatterBoost ) + _ScatterIndirect ) ) * ( float4( ( ( saturate( pow( max( 0.0 , saturate( ( 1.0 - dotResult14_g253 ) ) ) , _FresnelPower ) ) * _FrenselMult ) * (_FresnelColor).rgb ) , 0.0 ) + saturate( lerpResult5 ) ) ).rgb;
				surfaceDescription.Normal = normalUnpacked24;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = 0;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = spec90.rgb;
				#endif

				surfaceDescription.Emission = max( temp_cast_9 , ( lightningMaskSine39_g256 * lightning50_g256 * _LightningColor ) ).rgb;
				surfaceDescription.Smoothness = _Smoothness;
				surfaceDescription.Occlusion = 1;
				surfaceDescription.Alpha = 1;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceDescription.SpecularAAScreenSpaceVariance = 0;
				surfaceDescription.SpecularAAThreshold = 0;
				#endif

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceDescription.SpecularOcclusion = 0;
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceDescription.Thickness = 1;
				#endif

				#ifdef _HAS_REFRACTION
				surfaceDescription.RefractionIndex = 1;
				surfaceDescription.RefractionColor = float3( 1, 1, 1 );
				surfaceDescription.RefractionDistance = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceDescription.SubsurfaceMask = 1;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceDescription.TransmissionMask = 1;
				surfaceDescription.DiffusionProfile = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceDescription.Anisotropy = 1;
				surfaceDescription.Tangent = float3( 1, 0, 0 );
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceDescription.IridescenceMask = 0;
				surfaceDescription.IridescenceThickness = 0;
				#endif

				GetSurfaceAndBuiltinData(surfaceDescription,input, V, posInput, surfaceData, builtinData);

				BSDFData bsdfData = ConvertSurfaceDataToBSDFData(input.positionSS.xy, surfaceData);
				LightTransportData lightTransportData = GetLightTransportData(surfaceData, builtinData, bsdfData);

				float4 res = float4( 0.0, 0.0, 0.0, 1.0 );
				UnityMetaInput metaInput;
				metaInput.Albedo = lightTransportData.diffuseColor.rgb;
				metaInput.Emission = lightTransportData.emissiveColor;

			#ifdef EDITOR_VISUALIZATION
				metaInput.VizUV = packedInput.VizUV;
				metaInput.LightCoord = packedInput.LightCoord;
			#endif
				res = UnityMetaFragment(metaInput);

				return res;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }

			Cull [_CullMode]
			ZWrite On
			ZClip [_ZClip]
			ZTest LEqual
			ColorMask 0

			HLSLPROGRAM

            #define _SPECULAR_OCCLUSION_FROM_AO 1
            #pragma multi_compile_instancing
            #pragma instancing_options renderinglayer
            #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
            #define _ENERGY_CONSERVING_SPECULAR 1
            #define SUPPORT_BLENDMODE_PRESERVE_SPECULAR_LIGHTING
            #define ASE_SRP_VERSION 140004


            #pragma shader_feature _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
            #pragma shader_feature_local_fragment _ _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ALPHATEST_ON

			#pragma multi_compile_fragment _ SHADOWS_SHADOWMASK

			#pragma vertex Vert
			#pragma fragment Frag

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			//#define USE_LEGACY_UNITY_MATRIX_VARIABLES

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"

			#define SHADERPASS SHADERPASS_SHADOWS

			#ifndef SHADER_UNLIT
			#if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
			#define VARYINGS_NEED_CULLFACE
			#endif
			#endif

		    #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
		    #endif

		    #if (SHADERPASS == SHADERPASS_PATH_TRACING) && !defined(_DOUBLESIDED_ON) && (defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE))
			#undef  _REFRACTION_PLANE
			#undef  _REFRACTION_SPHERE
			#define _REFRACTION_THIN
		    #endif

			#if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
			#if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
			#define WRITE_NORMAL_BUFFER
			#endif
			#endif

			#ifndef DEBUG_DISPLAY
				#if !defined(_SURFACE_TYPE_TRANSPARENT)
					#if SHADERPASS == SHADERPASS_FORWARD
					#define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
					#elif SHADERPASS == SHADERPASS_GBUFFER
					#define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
					#endif
				#endif
			#endif

			#if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define _DEFERRED_CAPABLE_MATERIAL
			#endif

			#if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
			#define _WRITE_TRANSPARENT_MOTION_VECTOR
			#endif

			CBUFFER_START( UnityPerMaterial )
			float4 _DistortionUVMap_TexelSize;
			float4 _LightningColor;
			float4 _SpecularColor;
			float4 _TintHigh;
			float4 _TintLow;
			float4 _FresnelColor;
			float4 _LightingMaskMap_TexelSize;
			float4 _NormalMap_TexelSize;
			float4 _DistortionMap_TexelSize;
			float4 _LightingMap_TexelSize;
			float4 _ScatterColor;
			float _LightingATiling;
			float _LightingMaskBUVSpeed;
			float _DetailBoost;
			float _LightingAFrequency;
			float _LightingMaskAUVSpeed;
			float _LightingBTiling;
			float _LightingBFrequency;
			float _LightingMaskATiling;
			float _LightningSineMult;
			float _Specular;
			float _LightningBoost;
			float _LigntingMaskPow;
			float _LightingMaskBTiling;
			float _ScatterCenterShift;
			float _DistortionFactor;
			float _ScatterStretch;
			float _ScatterBoost;
			float _ScatterIndirect;
			float _NormalTiling;
			float _NormalSpeed;
			float _NormalUVTiling;
			float _NormalUVSpeed;
			float _NormlalDistortionFactor;
			float _NormalScale;
			float _FresnelPower;
			float _FrenselMult;
			float _DistortionTiling;
			float _DistortionSpeed;
			float _DistortionUVTiling;
			float _DistortionUVSpeed;
			float _DetailPow;
			float _Smoothness;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
            #ifdef SUPPORT_BLENDMODE_PRESERVE_SPECULAR_LIGHTING
			float _EnableBlendModePreserveSpecularLighting;
            #endif
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef ASE_TESSELLATION
			float _TessPhongStrength;
			float _TessValue;
			float _TessMin;
			float _TessMax;
			float _TessEdgeLength;
			float _TessMaxDisp;
			#endif
			CBUFFER_END

			// Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
			float4 _SelectionID;
            #endif

			// Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
			int _ObjectId;
			int _PassValue;
            #endif

			

            #ifdef DEBUG_DISPLAY
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
            #endif

            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			// Setup DECALS_OFF so the shader stripper can remove variants
            #define HAVE_DECALS ( (defined(DECALS_3RT) || defined(DECALS_4RT)) && !defined(_DISABLE_DECALS) )
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"

			

			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
			#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 positionRWS : TEXCOORD0;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			
			void BuildSurfaceData(FragInputs fragInputs, inout AlphaSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif


				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
                #ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				surfaceData.normalWS = float3(0, 1, 0);
                #endif
				#ifdef _MATERIAL_FEATURE_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );

				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				bentNormalWS = surfaceData.normalWS;
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

                #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
                #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
                #endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(AlphaSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				#ifdef _ALPHATEST_ON
				#ifdef _ALPHATEST_SHADOW_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdShadow );
				#else
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif
				#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;
				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue =  defaultVertexValue ;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS =  inputMesh.normalOS ;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.positionRWS.xyz = positionRWS;
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			#if defined(WRITE_NORMAL_BUFFER) && defined(WRITE_MSAA_DEPTH)
			#define SV_TARGET_DECAL SV_Target2
			#elif defined(WRITE_NORMAL_BUFFER) || defined(WRITE_MSAA_DEPTH)
			#define SV_TARGET_DECAL SV_Target1
			#else
			#define SV_TARGET_DECAL SV_Target0
			#endif

			void Frag( PackedVaryingsMeshToPS packedInput
						#if defined(SCENESELECTIONPASS) || defined(SCENEPICKINGPASS)
						, out float4 outColor : SV_Target0
						#else
							#ifdef WRITE_MSAA_DEPTH
							, out float4 depthColor : SV_Target0
								#ifdef WRITE_NORMAL_BUFFER
								, out float4 outNormalBuffer : SV_Target1
								#endif
							#else
								#ifdef WRITE_NORMAL_BUFFER
								, out float4 outNormalBuffer : SV_Target0
								#endif
							#endif

							#if defined(WRITE_DECAL_BUFFER) && !defined(_DISABLE_DECALS)
							, out float4 outDecalBuffer : SV_TARGET_DECAL
							#endif
						#endif

						#if defined(_DEPTHOFFSET_ON) && !defined(SCENEPICKINGPASS)
						, out float outputDepth : SV_Depth
						#endif
						
					)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );

				float3 positionRWS = packedInput.positionRWS.xyz;

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);

				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				input.positionRWS = positionRWS;

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false );
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				AlphaSurfaceDescription surfaceDescription = (AlphaSurfaceDescription)0;
				
				surfaceDescription.Alpha = 1;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				#ifdef _ALPHATEST_SHADOW_ON
				surfaceDescription.AlphaClipThresholdShadow = 0.5;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription, input, V, posInput, surfaceData, builtinData);

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				float bias = max(abs(ddx(posInput.deviceDepth)), abs(ddy(posInput.deviceDepth))) * _SlopeScaleDepthBias;
				outputDepth += bias;
				#endif

				#ifdef WRITE_MSAA_DEPTH
				depthColor = packedInput.vmesh.positionCS.z;

				#ifdef _ALPHATOMASK_ON
				depthColor.a = SharpenAlpha(builtinData.opacity, builtinData.alphaClipTreshold);
				#endif
				#endif

				#if defined(WRITE_NORMAL_BUFFER)
				EncodeIntoNormalBuffer(ConvertSurfaceDataToNormalData(surfaceData), outNormalBuffer);
				#endif

				#if defined(WRITE_DECAL_BUFFER) && !defined(_DISABLE_DECALS)
				DecalPrepassData decalPrepassData;
				decalPrepassData.geomNormalWS = surfaceData.geomNormalWS;
				decalPrepassData.decalLayerMask = GetMeshRenderingDecalLayer();
				EncodeIntoDecalPrepassBuffer(decalPrepassData, outDecalBuffer);
				#endif
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "SceneSelectionPass"
			Tags { "LightMode"="SceneSelectionPass" }

			Cull Off

			HLSLPROGRAM

            #define _SPECULAR_OCCLUSION_FROM_AO 1
            #pragma multi_compile_instancing
            #pragma instancing_options renderinglayer
            #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
            #define _ENERGY_CONSERVING_SPECULAR 1
            #define SUPPORT_BLENDMODE_PRESERVE_SPECULAR_LIGHTING
            #define ASE_SRP_VERSION 140004


            #pragma shader_feature _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
            #pragma shader_feature_local_fragment _ _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ALPHATEST_ON

			#pragma editor_sync_compilation

			#pragma vertex Vert
			#pragma fragment Frag

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"

			#define SHADERPASS SHADERPASS_DEPTH_ONLY
		    #define SCENESELECTIONPASS 1

			#ifndef SHADER_UNLIT
			#if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
			#define VARYINGS_NEED_CULLFACE
			#endif
			#endif

		    #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
		    #endif

		    #if (SHADERPASS == SHADERPASS_PATH_TRACING) && !defined(_DOUBLESIDED_ON) && (defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE))
			#undef  _REFRACTION_PLANE
			#undef  _REFRACTION_SPHERE
			#define _REFRACTION_THIN
		    #endif

			#if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
			#if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
				#define WRITE_NORMAL_BUFFER
			#endif
			#endif

			#ifndef DEBUG_DISPLAY
				#if !defined(_SURFACE_TYPE_TRANSPARENT)
					#if SHADERPASS == SHADERPASS_FORWARD
					#define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
					#elif SHADERPASS == SHADERPASS_GBUFFER
					#define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
					#endif
				#endif
			#endif

			#if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define _DEFERRED_CAPABLE_MATERIAL
			#endif

			#if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
			#define _WRITE_TRANSPARENT_MOTION_VECTOR
			#endif

			CBUFFER_START( UnityPerMaterial )
			float4 _DistortionUVMap_TexelSize;
			float4 _LightningColor;
			float4 _SpecularColor;
			float4 _TintHigh;
			float4 _TintLow;
			float4 _FresnelColor;
			float4 _LightingMaskMap_TexelSize;
			float4 _NormalMap_TexelSize;
			float4 _DistortionMap_TexelSize;
			float4 _LightingMap_TexelSize;
			float4 _ScatterColor;
			float _LightingATiling;
			float _LightingMaskBUVSpeed;
			float _DetailBoost;
			float _LightingAFrequency;
			float _LightingMaskAUVSpeed;
			float _LightingBTiling;
			float _LightingBFrequency;
			float _LightingMaskATiling;
			float _LightningSineMult;
			float _Specular;
			float _LightningBoost;
			float _LigntingMaskPow;
			float _LightingMaskBTiling;
			float _ScatterCenterShift;
			float _DistortionFactor;
			float _ScatterStretch;
			float _ScatterBoost;
			float _ScatterIndirect;
			float _NormalTiling;
			float _NormalSpeed;
			float _NormalUVTiling;
			float _NormalUVSpeed;
			float _NormlalDistortionFactor;
			float _NormalScale;
			float _FresnelPower;
			float _FrenselMult;
			float _DistortionTiling;
			float _DistortionSpeed;
			float _DistortionUVTiling;
			float _DistortionUVSpeed;
			float _DetailPow;
			float _Smoothness;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
            #ifdef SUPPORT_BLENDMODE_PRESERVE_SPECULAR_LIGHTING
			float _EnableBlendModePreserveSpecularLighting;
            #endif
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef ASE_TESSELLATION
			float _TessPhongStrength;
			float _TessValue;
			float _TessMin;
			float _TessMax;
			float _TessEdgeLength;
			float _TessMaxDisp;
			#endif
			CBUFFER_END

			// Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
			float4 _SelectionID;
            #endif

			// Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
			int _ObjectId;
			int _PassValue;
            #endif

			

            #ifdef DEBUG_DISPLAY
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
            #endif

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/PickingSpaceTransforms.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			// Setup DECALS_OFF so the shader stripper can remove variants
            #define HAVE_DECALS ( (defined(DECALS_3RT) || defined(DECALS_4RT)) && !defined(_DISABLE_DECALS) )
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"

			

			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
			#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 positionRWS : TEXCOORD0;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			
			void BuildSurfaceData(FragInputs fragInputs, inout SceneSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif


				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
                #ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				surfaceData.normalWS = float3(0, 1, 0);
                #endif
				#ifdef _MATERIAL_FEATURE_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );

				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				bentNormalWS = surfaceData.normalWS;
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

                #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
                #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
                #endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(SceneSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				#ifdef _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;
				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue =  defaultVertexValue ;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS =  inputMesh.normalOS ;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.positionRWS.xyz = positionRWS;
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			#if defined(WRITE_NORMAL_BUFFER) && defined(WRITE_MSAA_DEPTH)
			#define SV_TARGET_DECAL SV_Target2
			#elif defined(WRITE_NORMAL_BUFFER) || defined(WRITE_MSAA_DEPTH)
			#define SV_TARGET_DECAL SV_Target1
			#else
			#define SV_TARGET_DECAL SV_Target0
			#endif

			void Frag( PackedVaryingsMeshToPS packedInput
						, out float4 outColor : SV_Target0
						#if defined(_DEPTHOFFSET_ON) && !defined(SCENEPICKINGPASS)
						, out float outputDepth : SV_Depth
						#endif
						
					)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );

				float3 positionRWS = packedInput.positionRWS.xyz;

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);

				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				input.positionRWS = positionRWS;

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false );
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				SceneSurfaceDescription surfaceDescription = (SceneSurfaceDescription)0;
				
				surfaceDescription.Alpha = 1;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription, input, V, posInput, surfaceData, builtinData);

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif

				outColor = float4( _ObjectId, _PassValue, 1.0, 1.0 );
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "DepthOnly"
			Tags { "LightMode"="DepthOnly" }

			Cull [_CullMode]

			ZWrite On

			Stencil
			{
				Ref [_StencilRefDepth]
				WriteMask [_StencilWriteMaskDepth]
				Comp Always
				Pass Replace
			}


			HLSLPROGRAM

            #define _SPECULAR_OCCLUSION_FROM_AO 1
            #pragma multi_compile_instancing
            #pragma instancing_options renderinglayer
            #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
            #define _ENERGY_CONSERVING_SPECULAR 1
            #define SUPPORT_BLENDMODE_PRESERVE_SPECULAR_LIGHTING
            #define ASE_SRP_VERSION 140004


            #pragma shader_feature _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
            #pragma shader_feature_local_fragment _ _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ALPHATEST_ON

			#pragma multi_compile _ WRITE_NORMAL_BUFFER
			#pragma multi_compile_fragment _ WRITE_MSAA_DEPTH
			#pragma multi_compile _ WRITE_DECAL_BUFFER

			#pragma vertex Vert
			#pragma fragment Frag

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"

			#define SHADERPASS SHADERPASS_DEPTH_ONLY

			#ifndef SHADER_UNLIT
			#if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
			#define VARYINGS_NEED_CULLFACE
			#endif
			#endif

		    #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
		    #endif

		    #if (SHADERPASS == SHADERPASS_PATH_TRACING) && !defined(_DOUBLESIDED_ON) && (defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE))
			#undef  _REFRACTION_PLANE
			#undef  _REFRACTION_SPHERE
			#define _REFRACTION_THIN
		    #endif

			#if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
			#if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
				#define WRITE_NORMAL_BUFFER
			#endif
			#endif

			#ifndef DEBUG_DISPLAY
				#if !defined(_SURFACE_TYPE_TRANSPARENT)
					#if SHADERPASS == SHADERPASS_FORWARD
					#define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
					#elif SHADERPASS == SHADERPASS_GBUFFER
					#define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
					#endif
				#endif
			#endif

			#if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define _DEFERRED_CAPABLE_MATERIAL
			#endif

			#if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
			#define _WRITE_TRANSPARENT_MOTION_VECTOR
			#endif

			CBUFFER_START( UnityPerMaterial )
			float4 _DistortionUVMap_TexelSize;
			float4 _LightningColor;
			float4 _SpecularColor;
			float4 _TintHigh;
			float4 _TintLow;
			float4 _FresnelColor;
			float4 _LightingMaskMap_TexelSize;
			float4 _NormalMap_TexelSize;
			float4 _DistortionMap_TexelSize;
			float4 _LightingMap_TexelSize;
			float4 _ScatterColor;
			float _LightingATiling;
			float _LightingMaskBUVSpeed;
			float _DetailBoost;
			float _LightingAFrequency;
			float _LightingMaskAUVSpeed;
			float _LightingBTiling;
			float _LightingBFrequency;
			float _LightingMaskATiling;
			float _LightningSineMult;
			float _Specular;
			float _LightningBoost;
			float _LigntingMaskPow;
			float _LightingMaskBTiling;
			float _ScatterCenterShift;
			float _DistortionFactor;
			float _ScatterStretch;
			float _ScatterBoost;
			float _ScatterIndirect;
			float _NormalTiling;
			float _NormalSpeed;
			float _NormalUVTiling;
			float _NormalUVSpeed;
			float _NormlalDistortionFactor;
			float _NormalScale;
			float _FresnelPower;
			float _FrenselMult;
			float _DistortionTiling;
			float _DistortionSpeed;
			float _DistortionUVTiling;
			float _DistortionUVSpeed;
			float _DetailPow;
			float _Smoothness;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
            #ifdef SUPPORT_BLENDMODE_PRESERVE_SPECULAR_LIGHTING
			float _EnableBlendModePreserveSpecularLighting;
            #endif
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef ASE_TESSELLATION
			float _TessPhongStrength;
			float _TessValue;
			float _TessMin;
			float _TessMax;
			float _TessEdgeLength;
			float _TessMaxDisp;
			#endif
			CBUFFER_END

			// Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
			float4 _SelectionID;
            #endif

			// Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
			int _ObjectId;
			int _PassValue;
            #endif

			sampler2D _NormalMap;


            #ifdef DEBUG_DISPLAY
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
            #endif

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			// Setup DECALS_OFF so the shader stripper can remove variants
            #define HAVE_DECALS ( (defined(DECALS_3RT) || defined(DECALS_4RT)) && !defined(_DISABLE_DECALS) )
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"

			#define ASE_NEEDS_FRAG_NORMAL
			#define ASE_NEEDS_FRAG_POSITION


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
			#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 positionRWS : TEXCOORD0;
				float3 normalWS : TEXCOORD1;
				float4 tangentWS : TEXCOORD2;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord3 : TEXCOORD3;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			
			void BuildSurfaceData(FragInputs fragInputs, inout SmoothSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data
				surfaceData.perceptualSmoothness =		surfaceDescription.Smoothness;

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif


				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
                #ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				surfaceData.normalWS = float3(0, 1, 0);
                #endif
				#ifdef _MATERIAL_FEATURE_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				normalTS = surfaceDescription.Normal;
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );

				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				bentNormalWS = surfaceData.normalWS;
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

                #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
                #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
                #endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(SmoothSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				#ifdef _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			#if defined(WRITE_DECAL_BUFFER) && !defined(_DISABLE_DECALS)
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalPrepassBuffer.hlsl"
			#endif
			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				outputPackedVaryingsMeshToPS.ase_normal = inputMesh.normalOS;
				outputPackedVaryingsMeshToPS.ase_texcoord3 = float4(inputMesh.positionOS,1);

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue =  defaultVertexValue ;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS =  inputMesh.normalOS ;
				inputMesh.tangentOS =  inputMesh.tangentOS ;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normalOS);
				float4 tangentWS = float4(TransformObjectToWorldDir(inputMesh.tangentOS.xyz), inputMesh.tangentOS.w);

				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.positionRWS.xyz = positionRWS;
				outputPackedVaryingsMeshToPS.normalWS.xyz = normalWS;
				outputPackedVaryingsMeshToPS.tangentWS.xyzw = tangentWS;
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			#if defined(WRITE_NORMAL_BUFFER) && defined(WRITE_MSAA_DEPTH)
			#define SV_TARGET_DECAL SV_Target2
			#elif defined(WRITE_NORMAL_BUFFER) || defined(WRITE_MSAA_DEPTH)
			#define SV_TARGET_DECAL SV_Target1
			#else
			#define SV_TARGET_DECAL SV_Target0
			#endif

			void Frag( PackedVaryingsMeshToPS packedInput
						#if defined(SCENESELECTIONPASS) || defined(SCENEPICKINGPASS)
						, out float4 outColor : SV_Target0
						#else
							#ifdef WRITE_MSAA_DEPTH
							, out float4 depthColor : SV_Target0
								#ifdef WRITE_NORMAL_BUFFER
								, out float4 outNormalBuffer : SV_Target1
								#endif
							#else
								#ifdef WRITE_NORMAL_BUFFER
								, out float4 outNormalBuffer : SV_Target0
								#endif
							#endif

							#if defined(WRITE_DECAL_BUFFER) && !defined(_DISABLE_DECALS)
							, out float4 outDecalBuffer : SV_TARGET_DECAL
							#endif
						#endif

						#if defined(_DEPTHOFFSET_ON) && !defined(SCENEPICKINGPASS)
						, out float outputDepth : SV_Depth
						#endif
						
					)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );

				float3 positionRWS = packedInput.positionRWS.xyz;
				float3 normalWS = packedInput.normalWS.xyz;
				float4 tangentWS = packedInput.tangentWS.xyzw;

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);

				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				input.positionRWS = positionRWS;
				input.tangentToWorld = BuildTangentToWorld(tangentWS, normalWS);

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false );
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				SmoothSurfaceDescription surfaceDescription = (SmoothSurfaceDescription)0;
				float3 temp_cast_0 = (5.0).xxx;
				float3 temp_output_4_0_g249 = pow( abs( packedInput.ase_normal ) , temp_cast_0 );
				float3 break6_g249 = temp_output_4_0_g249;
				float3 projNormal10_g249 = ( temp_output_4_0_g249 / ( break6_g249.x + break6_g249.y + break6_g249.z ) );
				float localBicubicPrepare2_g251 = ( 0.0 );
				float3 break26_g249 = packedInput.ase_texcoord3.xyz;
				float2 appendResult27_g249 = (float2(break26_g249.z , break26_g249.y));
				float3 nSign18_g249 = sign( packedInput.ase_normal );
				float3 break20_g249 = nSign18_g249;
				float2 appendResult21_g249 = (float2(break20_g249.x , 1.0));
				float temp_output_29_0_g249 = _NormalTiling;
				float temp_output_10_0_g244 = ( _TimeParameters.x * _NormalSpeed );
				float2 appendResult12_g244 = (float2(temp_output_10_0_g244 , temp_output_10_0_g244));
				float3 temp_cast_1 = (5.0).xxx;
				float3 temp_output_4_0_g245 = pow( abs( packedInput.ase_normal ) , temp_cast_1 );
				float3 break6_g245 = temp_output_4_0_g245;
				float3 projNormal10_g245 = ( temp_output_4_0_g245 / ( break6_g245.x + break6_g245.y + break6_g245.z ) );
				float localBicubicPrepare2_g247 = ( 0.0 );
				float3 break26_g245 = packedInput.ase_texcoord3.xyz;
				float2 appendResult27_g245 = (float2(break26_g245.z , break26_g245.y));
				float3 nSign18_g245 = sign( packedInput.ase_normal );
				float3 break20_g245 = nSign18_g245;
				float2 appendResult21_g245 = (float2(break20_g245.x , 1.0));
				float temp_output_29_0_g245 = _NormalUVTiling;
				float temp_output_2_0_g244 = ( _TimeParameters.x * _NormalUVSpeed );
				float2 appendResult5_g244 = (float2(temp_output_2_0_g244 , temp_output_2_0_g244));
				float2 temp_output_65_0_g245 = appendResult5_g244;
				float2 temp_output_68_0_g245 = ( ( appendResult27_g245 * appendResult21_g245 * temp_output_29_0_g245 ) + temp_output_65_0_g245 );
				float2 Input_UV100_g247 = temp_output_68_0_g245;
				float2 UV2_g247 = Input_UV100_g247;
				float4 TexelSize2_g247 = _NormalMap_TexelSize;
				float2 UV02_g247 = float2( 0,0 );
				float2 UV12_g247 = float2( 0,0 );
				float2 UV22_g247 = float2( 0,0 );
				float2 UV32_g247 = float2( 0,0 );
				float W02_g247 = 0;
				float W12_g247 = 0;
				{
				{
				 UV2_g247 = UV2_g247 * TexelSize2_g247.zw - 0.5;
				    float2 f = frac( UV2_g247 );
				    UV2_g247 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g247.x - 0.5, UV2_g247.x + 1.5, UV2_g247.y - 0.5, UV2_g247.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g247.xyxy;
				    UV02_g247 = off.xz;
				    UV12_g247 = off.yz;
				    UV22_g247 = off.xw;
				    UV32_g247 = off.yw;
				    W02_g247 = s.x / ( s.x + s.y );
				 W12_g247 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g247 = lerp( tex2D( _NormalMap, UV32_g247 ) , tex2D( _NormalMap, UV22_g247 ) , W02_g247);
				float4 lerpResult45_g247 = lerp( tex2D( _NormalMap, UV12_g247 ) , tex2D( _NormalMap, UV02_g247 ) , W02_g247);
				float4 lerpResult44_g247 = lerp( lerpResult46_g247 , lerpResult45_g247 , W12_g247);
				float4 Output_2D131_g247 = lerpResult44_g247;
				float localBicubicPrepare2_g248 = ( 0.0 );
				float2 appendResult32_g245 = (float2(break26_g245.x , break26_g245.z));
				float2 appendResult22_g245 = (float2(break20_g245.y , 1.0));
				float2 temp_output_66_0_g245 = ( ( temp_output_29_0_g245 * appendResult32_g245 * appendResult22_g245 ) + temp_output_65_0_g245 );
				float2 Input_UV100_g248 = temp_output_66_0_g245;
				float2 UV2_g248 = Input_UV100_g248;
				float4 TexelSize2_g248 = _NormalMap_TexelSize;
				float2 UV02_g248 = float2( 0,0 );
				float2 UV12_g248 = float2( 0,0 );
				float2 UV22_g248 = float2( 0,0 );
				float2 UV32_g248 = float2( 0,0 );
				float W02_g248 = 0;
				float W12_g248 = 0;
				{
				{
				 UV2_g248 = UV2_g248 * TexelSize2_g248.zw - 0.5;
				    float2 f = frac( UV2_g248 );
				    UV2_g248 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g248.x - 0.5, UV2_g248.x + 1.5, UV2_g248.y - 0.5, UV2_g248.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g248.xyxy;
				    UV02_g248 = off.xz;
				    UV12_g248 = off.yz;
				    UV22_g248 = off.xw;
				    UV32_g248 = off.yw;
				    W02_g248 = s.x / ( s.x + s.y );
				 W12_g248 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g248 = lerp( tex2D( _NormalMap, UV32_g248 ) , tex2D( _NormalMap, UV22_g248 ) , W02_g248);
				float4 lerpResult45_g248 = lerp( tex2D( _NormalMap, UV12_g248 ) , tex2D( _NormalMap, UV02_g248 ) , W02_g248);
				float4 lerpResult44_g248 = lerp( lerpResult46_g248 , lerpResult45_g248 , W12_g248);
				float4 Output_2D131_g248 = lerpResult44_g248;
				float localBicubicPrepare2_g246 = ( 0.0 );
				float2 appendResult34_g245 = (float2(break26_g245.x , break26_g245.y));
				float2 appendResult25_g245 = (float2(-break20_g245.z , 1.0));
				float2 temp_output_67_0_g245 = ( temp_output_65_0_g245 + ( temp_output_29_0_g245 * appendResult34_g245 * appendResult25_g245 ) );
				float2 Input_UV100_g246 = temp_output_67_0_g245;
				float2 UV2_g246 = Input_UV100_g246;
				float4 TexelSize2_g246 = _NormalMap_TexelSize;
				float2 UV02_g246 = float2( 0,0 );
				float2 UV12_g246 = float2( 0,0 );
				float2 UV22_g246 = float2( 0,0 );
				float2 UV32_g246 = float2( 0,0 );
				float W02_g246 = 0;
				float W12_g246 = 0;
				{
				{
				 UV2_g246 = UV2_g246 * TexelSize2_g246.zw - 0.5;
				    float2 f = frac( UV2_g246 );
				    UV2_g246 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g246.x - 0.5, UV2_g246.x + 1.5, UV2_g246.y - 0.5, UV2_g246.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g246.xyxy;
				    UV02_g246 = off.xz;
				    UV12_g246 = off.yz;
				    UV22_g246 = off.xw;
				    UV32_g246 = off.yw;
				    W02_g246 = s.x / ( s.x + s.y );
				 W12_g246 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g246 = lerp( tex2D( _NormalMap, UV32_g246 ) , tex2D( _NormalMap, UV22_g246 ) , W02_g246);
				float4 lerpResult45_g246 = lerp( tex2D( _NormalMap, UV12_g246 ) , tex2D( _NormalMap, UV02_g246 ) , W02_g246);
				float4 lerpResult44_g246 = lerp( lerpResult46_g246 , lerpResult45_g246 , W12_g246);
				float4 Output_2D131_g246 = lerpResult44_g246;
				float4 break11_g244 = ( saturate( ( ( projNormal10_g245.x * Output_2D131_g247 ) + ( projNormal10_g245.y * Output_2D131_g248 ) + ( projNormal10_g245.z * Output_2D131_g246 ) ) ) * _NormlalDistortionFactor );
				float2 appendResult13_g244 = (float2(break11_g244.r , break11_g244.g));
				float2 temp_output_65_0_g249 = ( appendResult12_g244 + appendResult13_g244 );
				float2 temp_output_68_0_g249 = ( ( appendResult27_g249 * appendResult21_g249 * temp_output_29_0_g249 ) + temp_output_65_0_g249 );
				float2 Input_UV100_g251 = temp_output_68_0_g249;
				float2 UV2_g251 = Input_UV100_g251;
				float4 TexelSize2_g251 = _NormalMap_TexelSize;
				float2 UV02_g251 = float2( 0,0 );
				float2 UV12_g251 = float2( 0,0 );
				float2 UV22_g251 = float2( 0,0 );
				float2 UV32_g251 = float2( 0,0 );
				float W02_g251 = 0;
				float W12_g251 = 0;
				{
				{
				 UV2_g251 = UV2_g251 * TexelSize2_g251.zw - 0.5;
				    float2 f = frac( UV2_g251 );
				    UV2_g251 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g251.x - 0.5, UV2_g251.x + 1.5, UV2_g251.y - 0.5, UV2_g251.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g251.xyxy;
				    UV02_g251 = off.xz;
				    UV12_g251 = off.yz;
				    UV22_g251 = off.xw;
				    UV32_g251 = off.yw;
				    W02_g251 = s.x / ( s.x + s.y );
				 W12_g251 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g251 = lerp( tex2D( _NormalMap, UV32_g251 ) , tex2D( _NormalMap, UV22_g251 ) , W02_g251);
				float4 lerpResult45_g251 = lerp( tex2D( _NormalMap, UV12_g251 ) , tex2D( _NormalMap, UV02_g251 ) , W02_g251);
				float4 lerpResult44_g251 = lerp( lerpResult46_g251 , lerpResult45_g251 , W12_g251);
				float4 Output_2D131_g251 = lerpResult44_g251;
				float localBicubicPrepare2_g252 = ( 0.0 );
				float2 appendResult32_g249 = (float2(break26_g249.x , break26_g249.z));
				float2 appendResult22_g249 = (float2(break20_g249.y , 1.0));
				float2 temp_output_66_0_g249 = ( ( temp_output_29_0_g249 * appendResult32_g249 * appendResult22_g249 ) + temp_output_65_0_g249 );
				float2 Input_UV100_g252 = temp_output_66_0_g249;
				float2 UV2_g252 = Input_UV100_g252;
				float4 TexelSize2_g252 = _NormalMap_TexelSize;
				float2 UV02_g252 = float2( 0,0 );
				float2 UV12_g252 = float2( 0,0 );
				float2 UV22_g252 = float2( 0,0 );
				float2 UV32_g252 = float2( 0,0 );
				float W02_g252 = 0;
				float W12_g252 = 0;
				{
				{
				 UV2_g252 = UV2_g252 * TexelSize2_g252.zw - 0.5;
				    float2 f = frac( UV2_g252 );
				    UV2_g252 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g252.x - 0.5, UV2_g252.x + 1.5, UV2_g252.y - 0.5, UV2_g252.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g252.xyxy;
				    UV02_g252 = off.xz;
				    UV12_g252 = off.yz;
				    UV22_g252 = off.xw;
				    UV32_g252 = off.yw;
				    W02_g252 = s.x / ( s.x + s.y );
				 W12_g252 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g252 = lerp( tex2D( _NormalMap, UV32_g252 ) , tex2D( _NormalMap, UV22_g252 ) , W02_g252);
				float4 lerpResult45_g252 = lerp( tex2D( _NormalMap, UV12_g252 ) , tex2D( _NormalMap, UV02_g252 ) , W02_g252);
				float4 lerpResult44_g252 = lerp( lerpResult46_g252 , lerpResult45_g252 , W12_g252);
				float4 Output_2D131_g252 = lerpResult44_g252;
				float localBicubicPrepare2_g250 = ( 0.0 );
				float2 appendResult34_g249 = (float2(break26_g249.x , break26_g249.y));
				float2 appendResult25_g249 = (float2(-break20_g249.z , 1.0));
				float2 temp_output_67_0_g249 = ( temp_output_65_0_g249 + ( temp_output_29_0_g249 * appendResult34_g249 * appendResult25_g249 ) );
				float2 Input_UV100_g250 = temp_output_67_0_g249;
				float2 UV2_g250 = Input_UV100_g250;
				float4 TexelSize2_g250 = _NormalMap_TexelSize;
				float2 UV02_g250 = float2( 0,0 );
				float2 UV12_g250 = float2( 0,0 );
				float2 UV22_g250 = float2( 0,0 );
				float2 UV32_g250 = float2( 0,0 );
				float W02_g250 = 0;
				float W12_g250 = 0;
				{
				{
				 UV2_g250 = UV2_g250 * TexelSize2_g250.zw - 0.5;
				    float2 f = frac( UV2_g250 );
				    UV2_g250 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g250.x - 0.5, UV2_g250.x + 1.5, UV2_g250.y - 0.5, UV2_g250.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g250.xyxy;
				    UV02_g250 = off.xz;
				    UV12_g250 = off.yz;
				    UV22_g250 = off.xw;
				    UV32_g250 = off.yw;
				    W02_g250 = s.x / ( s.x + s.y );
				 W12_g250 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g250 = lerp( tex2D( _NormalMap, UV32_g250 ) , tex2D( _NormalMap, UV22_g250 ) , W02_g250);
				float4 lerpResult45_g250 = lerp( tex2D( _NormalMap, UV12_g250 ) , tex2D( _NormalMap, UV02_g250 ) , W02_g250);
				float4 lerpResult44_g250 = lerp( lerpResult46_g250 , lerpResult45_g250 , W12_g250);
				float4 Output_2D131_g250 = lerpResult44_g250;
				float3 unpack18_g244 = UnpackNormalScale( saturate( ( ( projNormal10_g249.x * Output_2D131_g251 ) + ( projNormal10_g249.y * Output_2D131_g252 ) + ( projNormal10_g249.z * Output_2D131_g250 ) ) ), _NormalScale );
				unpack18_g244.z = lerp( 1, unpack18_g244.z, saturate(_NormalScale) );
				float3 normalUnpacked24 = unpack18_g244;
				
				surfaceDescription.Normal = normalUnpacked24;
				surfaceDescription.Smoothness = _Smoothness;
				surfaceDescription.Alpha = 1;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription, input, V, posInput, surfaceData, builtinData);

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif

				#ifdef WRITE_MSAA_DEPTH
					depthColor = packedInput.positionCS.z;
					#ifdef _ALPHATOMASK_ON
						depthColor.a = SharpenAlpha(builtinData.opacity, builtinData.alphaClipTreshold);
					#endif
				#endif

				#if defined(WRITE_NORMAL_BUFFER)
				EncodeIntoNormalBuffer(ConvertSurfaceDataToNormalData(surfaceData), outNormalBuffer);
				#endif

				#if defined(WRITE_DECAL_BUFFER) && !defined(_DISABLE_DECALS)
				DecalPrepassData decalPrepassData;
				decalPrepassData.geomNormalWS = surfaceData.geomNormalWS;
				decalPrepassData.decalLayerMask = GetMeshRenderingDecalLayer();
				EncodeIntoDecalPrepassBuffer(decalPrepassData, outDecalBuffer);
				#endif
			}

			ENDHLSL
		}

		
		Pass
		{

			
			Name "Motion Vectors"
			Tags { "LightMode"="MotionVectors" }

			Cull [_CullMode]

			ZWrite On

			Stencil
			{
				Ref [_StencilRefMV]
				WriteMask [_StencilWriteMaskMV]
				Comp Always
				Pass Replace
			}


			HLSLPROGRAM

            #define _SPECULAR_OCCLUSION_FROM_AO 1
            #pragma multi_compile_instancing
            #pragma instancing_options renderinglayer
            #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
            #define _ENERGY_CONSERVING_SPECULAR 1
            #define SUPPORT_BLENDMODE_PRESERVE_SPECULAR_LIGHTING
            #define ASE_SRP_VERSION 140004


            #pragma shader_feature _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
            #pragma shader_feature_local_fragment _ _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ALPHATEST_ON

			#pragma multi_compile _ WRITE_NORMAL_BUFFER
			#pragma multi_compile_fragment _ WRITE_MSAA_DEPTH
			#pragma multi_compile _ WRITE_DECAL_BUFFER

			#pragma vertex Vert
			#pragma fragment Frag

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"

			#define SHADERPASS SHADERPASS_MOTION_VECTORS

			#ifndef SHADER_UNLIT
			#if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
			#define VARYINGS_NEED_CULLFACE
			#endif
			#endif

		    #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
		    #endif

		    #if (SHADERPASS == SHADERPASS_PATH_TRACING) && !defined(_DOUBLESIDED_ON) && (defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE))
			#undef  _REFRACTION_PLANE
			#undef  _REFRACTION_SPHERE
			#define _REFRACTION_THIN
		    #endif

			#if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
			#if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
				#define WRITE_NORMAL_BUFFER
			#endif
			#endif

			#ifndef DEBUG_DISPLAY
				#if !defined(_SURFACE_TYPE_TRANSPARENT)
					#if SHADERPASS == SHADERPASS_FORWARD
					#define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
					#elif SHADERPASS == SHADERPASS_GBUFFER
					#define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
					#endif
				#endif
			#endif

			#if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define _DEFERRED_CAPABLE_MATERIAL
			#endif

			#if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
			#define _WRITE_TRANSPARENT_MOTION_VECTOR
			#endif

			CBUFFER_START( UnityPerMaterial )
			float4 _DistortionUVMap_TexelSize;
			float4 _LightningColor;
			float4 _SpecularColor;
			float4 _TintHigh;
			float4 _TintLow;
			float4 _FresnelColor;
			float4 _LightingMaskMap_TexelSize;
			float4 _NormalMap_TexelSize;
			float4 _DistortionMap_TexelSize;
			float4 _LightingMap_TexelSize;
			float4 _ScatterColor;
			float _LightingATiling;
			float _LightingMaskBUVSpeed;
			float _DetailBoost;
			float _LightingAFrequency;
			float _LightingMaskAUVSpeed;
			float _LightingBTiling;
			float _LightingBFrequency;
			float _LightingMaskATiling;
			float _LightningSineMult;
			float _Specular;
			float _LightningBoost;
			float _LigntingMaskPow;
			float _LightingMaskBTiling;
			float _ScatterCenterShift;
			float _DistortionFactor;
			float _ScatterStretch;
			float _ScatterBoost;
			float _ScatterIndirect;
			float _NormalTiling;
			float _NormalSpeed;
			float _NormalUVTiling;
			float _NormalUVSpeed;
			float _NormlalDistortionFactor;
			float _NormalScale;
			float _FresnelPower;
			float _FrenselMult;
			float _DistortionTiling;
			float _DistortionSpeed;
			float _DistortionUVTiling;
			float _DistortionUVSpeed;
			float _DetailPow;
			float _Smoothness;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
            #ifdef SUPPORT_BLENDMODE_PRESERVE_SPECULAR_LIGHTING
			float _EnableBlendModePreserveSpecularLighting;
            #endif
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef ASE_TESSELLATION
			float _TessPhongStrength;
			float _TessValue;
			float _TessMin;
			float _TessMax;
			float _TessEdgeLength;
			float _TessMaxDisp;
			#endif
			CBUFFER_END

			// Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
			float4 _SelectionID;
            #endif

			// Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
			int _ObjectId;
			int _PassValue;
            #endif

			sampler2D _NormalMap;


            #ifdef DEBUG_DISPLAY
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
            #endif

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			// Setup DECALS_OFF so the shader stripper can remove variants
            #define HAVE_DECALS ( (defined(DECALS_3RT) || defined(DECALS_4RT)) && !defined(_DISABLE_DECALS) )
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"

			#define ASE_NEEDS_FRAG_NORMAL
			#define ASE_NEEDS_FRAG_POSITION


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
			#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float3 previousPositionOS : TEXCOORD4;
				#if defined (_ADD_PRECOMPUTED_VELOCITY)
					float3 precomputedVelocity : TEXCOORD5;
				#endif
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 vmeshPositionCS : SV_Position;
				float3 vmeshInterp00 : TEXCOORD0;
				float3 vpassInterpolators0 : TEXCOORD1; //interpolators0
				float3 vpassInterpolators1 : TEXCOORD2; //interpolators1
				float3 ase_normal : NORMAL;
				float4 ase_texcoord3 : TEXCOORD3;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			
			void BuildSurfaceData(FragInputs fragInputs, inout SmoothSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data
				surfaceData.perceptualSmoothness =		surfaceDescription.Smoothness;

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif

				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
                #ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				surfaceData.normalWS = float3(0, 1, 0);
                #endif
				#ifdef _MATERIAL_FEATURE_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				normalTS = surfaceDescription.Normal;
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );

				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				bentNormalWS = surfaceData.normalWS;
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

                #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
                #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
                #endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(SmoothSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				#ifdef _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			AttributesMesh ApplyMeshModification(AttributesMesh inputMesh, float3 timeParameters, inout PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS )
			{
				_TimeParameters.xyz = timeParameters;
				outputPackedVaryingsMeshToPS.ase_normal = inputMesh.normalOS;
				outputPackedVaryingsMeshToPS.ase_texcoord3 = float4(inputMesh.positionOS,1);

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue =  defaultVertexValue ;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif
				inputMesh.normalOS =  inputMesh.normalOS ;
				return inputMesh;
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh)
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS = (PackedVaryingsMeshToPS)0;
				AttributesMesh defaultMesh = inputMesh;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				inputMesh = ApplyMeshModification( inputMesh, _TimeParameters.xyz, outputPackedVaryingsMeshToPS);

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normalOS);

				float3 VMESHpositionRWS = positionRWS;
				float4 VMESHpositionCS = TransformWorldToHClip(positionRWS);

				float4 VPASSpreviousPositionCS;
				float4 VPASSpositionCS = mul(UNITY_MATRIX_UNJITTERED_VP, float4(VMESHpositionRWS, 1.0));

				bool forceNoMotion = unity_MotionVectorsParams.y == 0.0;
				if (forceNoMotion)
				{
					VPASSpreviousPositionCS = float4(0.0, 0.0, 0.0, 1.0);
				}
				else
				{
					bool hasDeformation = unity_MotionVectorsParams.x > 0.0;
					float3 effectivePositionOS = (hasDeformation ? inputMesh.previousPositionOS : defaultMesh.positionOS);
					#if defined(_ADD_PRECOMPUTED_VELOCITY)
					effectivePositionOS -= inputMesh.precomputedVelocity;
					#endif

					#if defined(HAVE_MESH_MODIFICATION)
						AttributesMesh previousMesh = defaultMesh;
						previousMesh.positionOS = effectivePositionOS ;
						PackedVaryingsMeshToPS test = (PackedVaryingsMeshToPS)0;
						float3 curTime = _TimeParameters.xyz;
						previousMesh = ApplyMeshModification(previousMesh, _LastTimeParameters.xyz, test);
						_TimeParameters.xyz = curTime;
						float3 previousPositionRWS = TransformPreviousObjectToWorld(previousMesh.positionOS);
					#else
						float3 previousPositionRWS = TransformPreviousObjectToWorld(effectivePositionOS);
					#endif

					#ifdef ATTRIBUTES_NEED_NORMAL
						float3 normalWS = TransformPreviousObjectToWorldNormal(defaultMesh.normalOS);
					#else
						float3 normalWS = float3(0.0, 0.0, 0.0);
					#endif

					#if defined(HAVE_VERTEX_MODIFICATION)
						//ApplyVertexModification(inputMesh, normalWS, previousPositionRWS, _LastTimeParameters.xyz);
					#endif

					#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
						if (_TransparentCameraOnlyMotionVectors > 0)
						{
							previousPositionRWS = VMESHpositionRWS.xyz;
						}
					#endif

					VPASSpreviousPositionCS = mul(UNITY_MATRIX_PREV_VP, float4(previousPositionRWS, 1.0));
				}

				outputPackedVaryingsMeshToPS.vmeshPositionCS = VMESHpositionCS;
				outputPackedVaryingsMeshToPS.vmeshInterp00.xyz = VMESHpositionRWS;

				outputPackedVaryingsMeshToPS.vpassInterpolators0 = float3(VPASSpositionCS.xyw);
				outputPackedVaryingsMeshToPS.vpassInterpolators1 = float3(VPASSpreviousPositionCS.xyw);
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(WRITE_DECAL_BUFFER) && !defined(_DISABLE_DECALS)
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalPrepassBuffer.hlsl"
			#endif

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float3 previousPositionOS : TEXCOORD4;
				#if defined (_ADD_PRECOMPUTED_VELOCITY)
					float3 precomputedVelocity : TEXCOORD5;
				#endif
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.previousPositionOS = v.previousPositionOS;
				#if defined (_ADD_PRECOMPUTED_VELOCITY)
				o.precomputedVelocity = v.precomputedVelocity;
				#endif
				
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.previousPositionOS = patch[0].previousPositionOS * bary.x + patch[1].previousPositionOS * bary.y + patch[2].previousPositionOS * bary.z;
				#if defined (_ADD_PRECOMPUTED_VELOCITY)
					o.precomputedVelocity = patch[0].precomputedVelocity * bary.x + patch[1].precomputedVelocity * bary.y + patch[2].precomputedVelocity * bary.z;
				#endif
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			#if defined(WRITE_DECAL_BUFFER) && defined(WRITE_MSAA_DEPTH)
			#define SV_TARGET_NORMAL SV_Target3
			#elif defined(WRITE_DECAL_BUFFER) || defined(WRITE_MSAA_DEPTH)
			#define SV_TARGET_NORMAL SV_Target2
			#else
			#define SV_TARGET_NORMAL SV_Target1
			#endif

			void Frag( PackedVaryingsMeshToPS packedInput
				#ifdef WRITE_MSAA_DEPTH
					, out float4 depthColor : SV_Target0
					, out float4 outMotionVector : SV_Target1
						#ifdef WRITE_DECAL_BUFFER
						, out float4 outDecalBuffer : SV_Target2
						#endif
					#else
					, out float4 outMotionVector : SV_Target0
						#ifdef WRITE_DECAL_BUFFER
						, out float4 outDecalBuffer : SV_Target1
						#endif
					#endif

					#ifdef WRITE_NORMAL_BUFFER
					, out float4 outNormalBuffer : SV_TARGET_NORMAL
					#endif

					#ifdef _DEPTHOFFSET_ON
					, out float outputDepth : SV_Depth
					#endif
				
				)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );
				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.vmeshPositionCS;
				input.positionRWS = packedInput.vmeshInterp00.xyz;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				SurfaceData surfaceData;
				BuiltinData builtinData;

				SmoothSurfaceDescription surfaceDescription = (SmoothSurfaceDescription)0;
				float3 temp_cast_0 = (5.0).xxx;
				float3 temp_output_4_0_g249 = pow( abs( packedInput.ase_normal ) , temp_cast_0 );
				float3 break6_g249 = temp_output_4_0_g249;
				float3 projNormal10_g249 = ( temp_output_4_0_g249 / ( break6_g249.x + break6_g249.y + break6_g249.z ) );
				float localBicubicPrepare2_g251 = ( 0.0 );
				float3 break26_g249 = packedInput.ase_texcoord3.xyz;
				float2 appendResult27_g249 = (float2(break26_g249.z , break26_g249.y));
				float3 nSign18_g249 = sign( packedInput.ase_normal );
				float3 break20_g249 = nSign18_g249;
				float2 appendResult21_g249 = (float2(break20_g249.x , 1.0));
				float temp_output_29_0_g249 = _NormalTiling;
				float temp_output_10_0_g244 = ( _TimeParameters.x * _NormalSpeed );
				float2 appendResult12_g244 = (float2(temp_output_10_0_g244 , temp_output_10_0_g244));
				float3 temp_cast_1 = (5.0).xxx;
				float3 temp_output_4_0_g245 = pow( abs( packedInput.ase_normal ) , temp_cast_1 );
				float3 break6_g245 = temp_output_4_0_g245;
				float3 projNormal10_g245 = ( temp_output_4_0_g245 / ( break6_g245.x + break6_g245.y + break6_g245.z ) );
				float localBicubicPrepare2_g247 = ( 0.0 );
				float3 break26_g245 = packedInput.ase_texcoord3.xyz;
				float2 appendResult27_g245 = (float2(break26_g245.z , break26_g245.y));
				float3 nSign18_g245 = sign( packedInput.ase_normal );
				float3 break20_g245 = nSign18_g245;
				float2 appendResult21_g245 = (float2(break20_g245.x , 1.0));
				float temp_output_29_0_g245 = _NormalUVTiling;
				float temp_output_2_0_g244 = ( _TimeParameters.x * _NormalUVSpeed );
				float2 appendResult5_g244 = (float2(temp_output_2_0_g244 , temp_output_2_0_g244));
				float2 temp_output_65_0_g245 = appendResult5_g244;
				float2 temp_output_68_0_g245 = ( ( appendResult27_g245 * appendResult21_g245 * temp_output_29_0_g245 ) + temp_output_65_0_g245 );
				float2 Input_UV100_g247 = temp_output_68_0_g245;
				float2 UV2_g247 = Input_UV100_g247;
				float4 TexelSize2_g247 = _NormalMap_TexelSize;
				float2 UV02_g247 = float2( 0,0 );
				float2 UV12_g247 = float2( 0,0 );
				float2 UV22_g247 = float2( 0,0 );
				float2 UV32_g247 = float2( 0,0 );
				float W02_g247 = 0;
				float W12_g247 = 0;
				{
				{
				 UV2_g247 = UV2_g247 * TexelSize2_g247.zw - 0.5;
				    float2 f = frac( UV2_g247 );
				    UV2_g247 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g247.x - 0.5, UV2_g247.x + 1.5, UV2_g247.y - 0.5, UV2_g247.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g247.xyxy;
				    UV02_g247 = off.xz;
				    UV12_g247 = off.yz;
				    UV22_g247 = off.xw;
				    UV32_g247 = off.yw;
				    W02_g247 = s.x / ( s.x + s.y );
				 W12_g247 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g247 = lerp( tex2D( _NormalMap, UV32_g247 ) , tex2D( _NormalMap, UV22_g247 ) , W02_g247);
				float4 lerpResult45_g247 = lerp( tex2D( _NormalMap, UV12_g247 ) , tex2D( _NormalMap, UV02_g247 ) , W02_g247);
				float4 lerpResult44_g247 = lerp( lerpResult46_g247 , lerpResult45_g247 , W12_g247);
				float4 Output_2D131_g247 = lerpResult44_g247;
				float localBicubicPrepare2_g248 = ( 0.0 );
				float2 appendResult32_g245 = (float2(break26_g245.x , break26_g245.z));
				float2 appendResult22_g245 = (float2(break20_g245.y , 1.0));
				float2 temp_output_66_0_g245 = ( ( temp_output_29_0_g245 * appendResult32_g245 * appendResult22_g245 ) + temp_output_65_0_g245 );
				float2 Input_UV100_g248 = temp_output_66_0_g245;
				float2 UV2_g248 = Input_UV100_g248;
				float4 TexelSize2_g248 = _NormalMap_TexelSize;
				float2 UV02_g248 = float2( 0,0 );
				float2 UV12_g248 = float2( 0,0 );
				float2 UV22_g248 = float2( 0,0 );
				float2 UV32_g248 = float2( 0,0 );
				float W02_g248 = 0;
				float W12_g248 = 0;
				{
				{
				 UV2_g248 = UV2_g248 * TexelSize2_g248.zw - 0.5;
				    float2 f = frac( UV2_g248 );
				    UV2_g248 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g248.x - 0.5, UV2_g248.x + 1.5, UV2_g248.y - 0.5, UV2_g248.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g248.xyxy;
				    UV02_g248 = off.xz;
				    UV12_g248 = off.yz;
				    UV22_g248 = off.xw;
				    UV32_g248 = off.yw;
				    W02_g248 = s.x / ( s.x + s.y );
				 W12_g248 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g248 = lerp( tex2D( _NormalMap, UV32_g248 ) , tex2D( _NormalMap, UV22_g248 ) , W02_g248);
				float4 lerpResult45_g248 = lerp( tex2D( _NormalMap, UV12_g248 ) , tex2D( _NormalMap, UV02_g248 ) , W02_g248);
				float4 lerpResult44_g248 = lerp( lerpResult46_g248 , lerpResult45_g248 , W12_g248);
				float4 Output_2D131_g248 = lerpResult44_g248;
				float localBicubicPrepare2_g246 = ( 0.0 );
				float2 appendResult34_g245 = (float2(break26_g245.x , break26_g245.y));
				float2 appendResult25_g245 = (float2(-break20_g245.z , 1.0));
				float2 temp_output_67_0_g245 = ( temp_output_65_0_g245 + ( temp_output_29_0_g245 * appendResult34_g245 * appendResult25_g245 ) );
				float2 Input_UV100_g246 = temp_output_67_0_g245;
				float2 UV2_g246 = Input_UV100_g246;
				float4 TexelSize2_g246 = _NormalMap_TexelSize;
				float2 UV02_g246 = float2( 0,0 );
				float2 UV12_g246 = float2( 0,0 );
				float2 UV22_g246 = float2( 0,0 );
				float2 UV32_g246 = float2( 0,0 );
				float W02_g246 = 0;
				float W12_g246 = 0;
				{
				{
				 UV2_g246 = UV2_g246 * TexelSize2_g246.zw - 0.5;
				    float2 f = frac( UV2_g246 );
				    UV2_g246 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g246.x - 0.5, UV2_g246.x + 1.5, UV2_g246.y - 0.5, UV2_g246.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g246.xyxy;
				    UV02_g246 = off.xz;
				    UV12_g246 = off.yz;
				    UV22_g246 = off.xw;
				    UV32_g246 = off.yw;
				    W02_g246 = s.x / ( s.x + s.y );
				 W12_g246 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g246 = lerp( tex2D( _NormalMap, UV32_g246 ) , tex2D( _NormalMap, UV22_g246 ) , W02_g246);
				float4 lerpResult45_g246 = lerp( tex2D( _NormalMap, UV12_g246 ) , tex2D( _NormalMap, UV02_g246 ) , W02_g246);
				float4 lerpResult44_g246 = lerp( lerpResult46_g246 , lerpResult45_g246 , W12_g246);
				float4 Output_2D131_g246 = lerpResult44_g246;
				float4 break11_g244 = ( saturate( ( ( projNormal10_g245.x * Output_2D131_g247 ) + ( projNormal10_g245.y * Output_2D131_g248 ) + ( projNormal10_g245.z * Output_2D131_g246 ) ) ) * _NormlalDistortionFactor );
				float2 appendResult13_g244 = (float2(break11_g244.r , break11_g244.g));
				float2 temp_output_65_0_g249 = ( appendResult12_g244 + appendResult13_g244 );
				float2 temp_output_68_0_g249 = ( ( appendResult27_g249 * appendResult21_g249 * temp_output_29_0_g249 ) + temp_output_65_0_g249 );
				float2 Input_UV100_g251 = temp_output_68_0_g249;
				float2 UV2_g251 = Input_UV100_g251;
				float4 TexelSize2_g251 = _NormalMap_TexelSize;
				float2 UV02_g251 = float2( 0,0 );
				float2 UV12_g251 = float2( 0,0 );
				float2 UV22_g251 = float2( 0,0 );
				float2 UV32_g251 = float2( 0,0 );
				float W02_g251 = 0;
				float W12_g251 = 0;
				{
				{
				 UV2_g251 = UV2_g251 * TexelSize2_g251.zw - 0.5;
				    float2 f = frac( UV2_g251 );
				    UV2_g251 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g251.x - 0.5, UV2_g251.x + 1.5, UV2_g251.y - 0.5, UV2_g251.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g251.xyxy;
				    UV02_g251 = off.xz;
				    UV12_g251 = off.yz;
				    UV22_g251 = off.xw;
				    UV32_g251 = off.yw;
				    W02_g251 = s.x / ( s.x + s.y );
				 W12_g251 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g251 = lerp( tex2D( _NormalMap, UV32_g251 ) , tex2D( _NormalMap, UV22_g251 ) , W02_g251);
				float4 lerpResult45_g251 = lerp( tex2D( _NormalMap, UV12_g251 ) , tex2D( _NormalMap, UV02_g251 ) , W02_g251);
				float4 lerpResult44_g251 = lerp( lerpResult46_g251 , lerpResult45_g251 , W12_g251);
				float4 Output_2D131_g251 = lerpResult44_g251;
				float localBicubicPrepare2_g252 = ( 0.0 );
				float2 appendResult32_g249 = (float2(break26_g249.x , break26_g249.z));
				float2 appendResult22_g249 = (float2(break20_g249.y , 1.0));
				float2 temp_output_66_0_g249 = ( ( temp_output_29_0_g249 * appendResult32_g249 * appendResult22_g249 ) + temp_output_65_0_g249 );
				float2 Input_UV100_g252 = temp_output_66_0_g249;
				float2 UV2_g252 = Input_UV100_g252;
				float4 TexelSize2_g252 = _NormalMap_TexelSize;
				float2 UV02_g252 = float2( 0,0 );
				float2 UV12_g252 = float2( 0,0 );
				float2 UV22_g252 = float2( 0,0 );
				float2 UV32_g252 = float2( 0,0 );
				float W02_g252 = 0;
				float W12_g252 = 0;
				{
				{
				 UV2_g252 = UV2_g252 * TexelSize2_g252.zw - 0.5;
				    float2 f = frac( UV2_g252 );
				    UV2_g252 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g252.x - 0.5, UV2_g252.x + 1.5, UV2_g252.y - 0.5, UV2_g252.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g252.xyxy;
				    UV02_g252 = off.xz;
				    UV12_g252 = off.yz;
				    UV22_g252 = off.xw;
				    UV32_g252 = off.yw;
				    W02_g252 = s.x / ( s.x + s.y );
				 W12_g252 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g252 = lerp( tex2D( _NormalMap, UV32_g252 ) , tex2D( _NormalMap, UV22_g252 ) , W02_g252);
				float4 lerpResult45_g252 = lerp( tex2D( _NormalMap, UV12_g252 ) , tex2D( _NormalMap, UV02_g252 ) , W02_g252);
				float4 lerpResult44_g252 = lerp( lerpResult46_g252 , lerpResult45_g252 , W12_g252);
				float4 Output_2D131_g252 = lerpResult44_g252;
				float localBicubicPrepare2_g250 = ( 0.0 );
				float2 appendResult34_g249 = (float2(break26_g249.x , break26_g249.y));
				float2 appendResult25_g249 = (float2(-break20_g249.z , 1.0));
				float2 temp_output_67_0_g249 = ( temp_output_65_0_g249 + ( temp_output_29_0_g249 * appendResult34_g249 * appendResult25_g249 ) );
				float2 Input_UV100_g250 = temp_output_67_0_g249;
				float2 UV2_g250 = Input_UV100_g250;
				float4 TexelSize2_g250 = _NormalMap_TexelSize;
				float2 UV02_g250 = float2( 0,0 );
				float2 UV12_g250 = float2( 0,0 );
				float2 UV22_g250 = float2( 0,0 );
				float2 UV32_g250 = float2( 0,0 );
				float W02_g250 = 0;
				float W12_g250 = 0;
				{
				{
				 UV2_g250 = UV2_g250 * TexelSize2_g250.zw - 0.5;
				    float2 f = frac( UV2_g250 );
				    UV2_g250 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g250.x - 0.5, UV2_g250.x + 1.5, UV2_g250.y - 0.5, UV2_g250.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g250.xyxy;
				    UV02_g250 = off.xz;
				    UV12_g250 = off.yz;
				    UV22_g250 = off.xw;
				    UV32_g250 = off.yw;
				    W02_g250 = s.x / ( s.x + s.y );
				 W12_g250 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g250 = lerp( tex2D( _NormalMap, UV32_g250 ) , tex2D( _NormalMap, UV22_g250 ) , W02_g250);
				float4 lerpResult45_g250 = lerp( tex2D( _NormalMap, UV12_g250 ) , tex2D( _NormalMap, UV02_g250 ) , W02_g250);
				float4 lerpResult44_g250 = lerp( lerpResult46_g250 , lerpResult45_g250 , W12_g250);
				float4 Output_2D131_g250 = lerpResult44_g250;
				float3 unpack18_g244 = UnpackNormalScale( saturate( ( ( projNormal10_g249.x * Output_2D131_g251 ) + ( projNormal10_g249.y * Output_2D131_g252 ) + ( projNormal10_g249.z * Output_2D131_g250 ) ) ), _NormalScale );
				unpack18_g244.z = lerp( 1, unpack18_g244.z, saturate(_NormalScale) );
				float3 normalUnpacked24 = unpack18_g244;
				
				surfaceDescription.Normal = normalUnpacked24;
				surfaceDescription.Smoothness = _Smoothness;
				surfaceDescription.Alpha = 1;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				GetSurfaceAndBuiltinData( surfaceDescription, input, V, posInput, surfaceData, builtinData );

				float4 VPASSpositionCS = float4(packedInput.vpassInterpolators0.xy, 0.0, packedInput.vpassInterpolators0.z);
				float4 VPASSpreviousPositionCS = float4(packedInput.vpassInterpolators1.xy, 0.0, packedInput.vpassInterpolators1.z);

				#ifdef _DEPTHOFFSET_ON
				VPASSpositionCS.w += builtinData.depthOffset;
				VPASSpreviousPositionCS.w += builtinData.depthOffset;
				#endif

				float2 motionVector = CalculateMotionVector( VPASSpositionCS, VPASSpreviousPositionCS );
				EncodeMotionVector( motionVector * 0.5, outMotionVector );

				bool forceNoMotion = unity_MotionVectorsParams.y == 0.0;
				if( forceNoMotion )
					outMotionVector = float4( 2.0, 0.0, 0.0, 0.0 );

				// Depth and Alpha to coverage
				#ifdef WRITE_MSAA_DEPTH
					// In case we are rendering in MSAA, reading the an MSAA depth buffer is way too expensive. To avoid that, we export the depth to a color buffer
					depthColor = packedInput.vmeshPositionCS.z;

					// Alpha channel is used for alpha to coverage
					depthColor.a = SharpenAlpha(builtinData.opacity, builtinData.alphaClipTreshold);
				#endif

				// Normal Buffer Processing
				#ifdef WRITE_NORMAL_BUFFER
					EncodeIntoNormalBuffer(ConvertSurfaceDataToNormalData(surfaceData), outNormalBuffer);
				#endif

				#if defined(WRITE_DECAL_BUFFER)
					DecalPrepassData decalPrepassData;
					#ifdef _DISABLE_DECALS
					ZERO_INITIALIZE(DecalPrepassData, decalPrepassData);
					#else
					decalPrepassData.geomNormalWS = surfaceData.geomNormalWS;
					decalPrepassData.decalLayerMask = GetMeshRenderingDecalLayer();
					#endif
					EncodeIntoDecalPrepassBuffer(decalPrepassData, outDecalBuffer);

					// make sure we don't overwrite light layers
					outDecalBuffer.w = (GetMeshRenderingLightLayer() & 0x000000FF) / 255.0;
				#endif

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "Forward"
			Tags { "LightMode"="Forward" }

			Blend [_SrcBlend] [_DstBlend], [_AlphaSrcBlend] [_AlphaDstBlend]
			Blend 1 SrcAlpha OneMinusSrcAlpha

			Cull [_CullModeForward]
			ZTest [_ZTestDepthEqualForOpaque]
			ZWrite [_ZWrite]

			Stencil
			{
				Ref [_StencilRef]
				WriteMask [_StencilWriteMask]
				Comp Always
				Pass Replace
			}


            ColorMask [_ColorMaskTransparentVelOne] 1
            ColorMask [_ColorMaskTransparentVelTwo] 2

			HLSLPROGRAM

            #define _SPECULAR_OCCLUSION_FROM_AO 1
            #pragma multi_compile_instancing
            #pragma instancing_options renderinglayer
            #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
            #define _ENERGY_CONSERVING_SPECULAR 1
            #define SUPPORT_BLENDMODE_PRESERVE_SPECULAR_LIGHTING
            #define ASE_SRP_VERSION 140004


            #pragma shader_feature _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _ _TRANSPARENT_WRITES_MOTION_VEC
            #pragma shader_feature_local_fragment _ _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ALPHATEST_ON

			#pragma multi_compile_fragment _ SHADOWS_SHADOWMASK
			#pragma multi_compile_fragment SHADOW_LOW SHADOW_MEDIUM SHADOW_HIGH
			#pragma multi_compile_fragment AREA_SHADOW_MEDIUM AREA_SHADOW_HIGH
			#pragma multi_compile_fragment PROBE_VOLUMES_OFF PROBE_VOLUMES_L1 PROBE_VOLUMES_L2
            #pragma multi_compile_fragment SCREEN_SPACE_SHADOWS_OFF SCREEN_SPACE_SHADOWS_ON
            #pragma multi_compile_fragment USE_FPTL_LIGHTLIST USE_CLUSTERED_LIGHTLIST
			#pragma multi_compile _ DEBUG_DISPLAY
			#pragma multi_compile _ LIGHTMAP_ON
			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ DYNAMICLIGHTMAP_ON
			#pragma multi_compile_fragment DECALS_OFF DECALS_3RT DECALS_4RT
			#pragma multi_compile_fragment _ DECAL_SURFACE_GRADIENT

			#ifndef SHADER_STAGE_FRAGMENT
			#define SHADOW_LOW
			#define USE_FPTL_LIGHTLIST
			#endif

			#pragma vertex Vert
			#pragma fragment Frag

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"

			#define SHADERPASS SHADERPASS_FORWARD
		    #define HAS_LIGHTLOOP 1

			// Setup for Fog Enabled to apply in sky refletions in LightLoopDef.hlsl
            #define APPLY_FOG_ON_SKY_REFLECTIONS

			#ifndef SHADER_UNLIT
			#if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
			#define VARYINGS_NEED_CULLFACE
			#endif
			#endif

		    #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
		    #endif

		    #if (SHADERPASS == SHADERPASS_PATH_TRACING) && !defined(_DOUBLESIDED_ON) && (defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE))
			#undef  _REFRACTION_PLANE
			#undef  _REFRACTION_SPHERE
			#define _REFRACTION_THIN
		    #endif

			#if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
			#if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
				#define WRITE_NORMAL_BUFFER
			#endif
			#endif

			#ifndef DEBUG_DISPLAY
				#if !defined(_SURFACE_TYPE_TRANSPARENT)
					#if SHADERPASS == SHADERPASS_FORWARD
					#define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
					#elif SHADERPASS == SHADERPASS_GBUFFER
					#define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
					#endif
				#endif
			#endif

			#if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define _DEFERRED_CAPABLE_MATERIAL
			#endif

			#if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
			#define _WRITE_TRANSPARENT_MOTION_VECTOR
			#endif

			CBUFFER_START( UnityPerMaterial )
			float4 _DistortionUVMap_TexelSize;
			float4 _LightningColor;
			float4 _SpecularColor;
			float4 _TintHigh;
			float4 _TintLow;
			float4 _FresnelColor;
			float4 _LightingMaskMap_TexelSize;
			float4 _NormalMap_TexelSize;
			float4 _DistortionMap_TexelSize;
			float4 _LightingMap_TexelSize;
			float4 _ScatterColor;
			float _LightingATiling;
			float _LightingMaskBUVSpeed;
			float _DetailBoost;
			float _LightingAFrequency;
			float _LightingMaskAUVSpeed;
			float _LightingBTiling;
			float _LightingBFrequency;
			float _LightingMaskATiling;
			float _LightningSineMult;
			float _Specular;
			float _LightningBoost;
			float _LigntingMaskPow;
			float _LightingMaskBTiling;
			float _ScatterCenterShift;
			float _DistortionFactor;
			float _ScatterStretch;
			float _ScatterBoost;
			float _ScatterIndirect;
			float _NormalTiling;
			float _NormalSpeed;
			float _NormalUVTiling;
			float _NormalUVSpeed;
			float _NormlalDistortionFactor;
			float _NormalScale;
			float _FresnelPower;
			float _FrenselMult;
			float _DistortionTiling;
			float _DistortionSpeed;
			float _DistortionUVTiling;
			float _DistortionUVSpeed;
			float _DetailPow;
			float _Smoothness;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
            #ifdef SUPPORT_BLENDMODE_PRESERVE_SPECULAR_LIGHTING
			float _EnableBlendModePreserveSpecularLighting;
            #endif
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef ASE_TESSELLATION
			float _TessPhongStrength;
			float _TessValue;
			float _TessMin;
			float _TessMax;
			float _TessEdgeLength;
			float _TessMaxDisp;
			#endif
			CBUFFER_END

			// Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
			float4 _SelectionID;
            #endif

			// Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
			int _ObjectId;
			int _PassValue;
            #endif

			sampler2D _ScatterMap;
			sampler2D _NormalMap;
			sampler2D _DistortionMap;
			sampler2D _DistortionUVMap;
			sampler2D _LightingMaskMap;
			sampler2D _LightingMap;


            #ifdef DEBUG_DISPLAY
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
            #endif

            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Lighting.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoop.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			// Setup DECALS_OFF so the shader stripper can remove variants
            #define HAVE_DECALS ( (defined(DECALS_3RT) || defined(DECALS_4RT)) && !defined(_DISABLE_DECALS) )
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"

			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_FRAG_NORMAL
			#define ASE_NEEDS_FRAG_POSITION


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
			#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					float3 previousPositionOS : TEXCOORD4;
					#if defined (_ADD_PRECOMPUTED_VELOCITY)
						float3 precomputedVelocity : TEXCOORD5;
					#endif
				#endif
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 positionRWS : TEXCOORD0;
				float3 normalWS : TEXCOORD1;
				float4 tangentWS : TEXCOORD2;
				float4 uv1 : TEXCOORD3;
				float4 uv2 : TEXCOORD4;
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					float3 vpassPositionCS : TEXCOORD5;
					float3 vpassPreviousPositionCS : TEXCOORD6;
				#endif
				float3 ase_normal : NORMAL;
				float4 ase_texcoord7 : TEXCOORD7;
				float4 ase_texcoord8 : TEXCOORD8;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			
			void BuildSurfaceData(FragInputs fragInputs, inout GlobalSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data
				surfaceData.baseColor =                 surfaceDescription.BaseColor;
				surfaceData.perceptualSmoothness =		surfaceDescription.Smoothness;
				surfaceData.ambientOcclusion =			surfaceDescription.Occlusion;
				surfaceData.metallic =					surfaceDescription.Metallic;
				surfaceData.coatMask =					surfaceDescription.CoatMask;

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceData.specularOcclusion =			surfaceDescription.SpecularOcclusion;
				#endif
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.subsurfaceMask =			surfaceDescription.SubsurfaceMask;
				#endif
				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceData.thickness = 				surfaceDescription.Thickness;
				#endif
				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceData.diffusionProfileHash =		asuint(surfaceDescription.DiffusionProfile);
				surfaceData.transmissionMask =			surfaceDescription.TransmissionMask;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.specularColor =				surfaceDescription.Specular;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.anisotropy =				surfaceDescription.Anisotropy;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.iridescenceMask =			surfaceDescription.IridescenceMask;
				surfaceData.iridescenceThickness =		surfaceDescription.IridescenceThickness;
				#endif

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.ior = surfaceDescription.RefractionIndex;
					surfaceData.transmittanceColor = surfaceDescription.RefractionColor;
					surfaceData.atDistance = surfaceDescription.RefractionDistance;

					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif


				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
                #ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				surfaceData.normalWS = float3(0, 1, 0);
                #endif
				#ifdef _MATERIAL_FEATURE_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				normalTS = surfaceDescription.Normal;
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );

				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				bentNormalWS = surfaceData.normalWS;

				#ifdef ASE_BENT_NORMAL
				GetNormalWS( fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants );
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.tangentWS = TransformTangentToWorld( surfaceDescription.Tangent, fragInputs.tangentToWorld );
				#endif
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );


                #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
                #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
                #endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceData.perceptualSmoothness = GeometricNormalFiltering( surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[ 2 ], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold );
				#endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(GlobalSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				#ifdef _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				#endif

				#ifdef _ALPHATEST_ON
                    builtinData.alphaClipTreshold = surfaceDescription.AlphaClipThreshold;
                #endif

				#ifdef UNITY_VIRTUAL_TEXTURING
                builtinData.vtPackedFeedback = surfaceDescription.VTPackedFeedback;
                #endif

				#ifdef ASE_BAKEDGI
				builtinData.bakeDiffuseLighting = surfaceDescription.BakedGI;
				#endif

				#ifdef ASE_BAKEDBACKGI
				builtinData.backBakeDiffuseLighting = surfaceDescription.BakedBackGI;
				#endif

				builtinData.emissiveColor = surfaceDescription.Emission;

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			AttributesMesh ApplyMeshModification(AttributesMesh inputMesh, float3 timeParameters, inout PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS )
			{
				_TimeParameters.xyz = timeParameters;
				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
				float3 ase_worldTangent = TransformObjectToWorldDir(inputMesh.tangentOS.xyz);
				float ase_vertexTangentSign = inputMesh.tangentOS.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				outputPackedVaryingsMeshToPS.ase_texcoord7.xyz = ase_worldBitangent;
				
				outputPackedVaryingsMeshToPS.ase_normal = inputMesh.normalOS;
				outputPackedVaryingsMeshToPS.ase_texcoord8 = float4(inputMesh.positionOS,1);
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord7.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif
				inputMesh.normalOS = inputMesh.normalOS;
				inputMesh.tangentOS = inputMesh.tangentOS;
				return inputMesh;
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh)
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS = (PackedVaryingsMeshToPS)0;
				AttributesMesh defaultMesh = inputMesh;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				inputMesh = ApplyMeshModification( inputMesh, _TimeParameters.xyz, outputPackedVaryingsMeshToPS);

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normalOS);
				float4 tangentWS = float4(TransformObjectToWorldDir(inputMesh.tangentOS.xyz), inputMesh.tangentOS.w);

				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
				float4 VPASSpreviousPositionCS;
				float4 VPASSpositionCS = mul(UNITY_MATRIX_UNJITTERED_VP, float4(positionRWS, 1.0));

				bool forceNoMotion = unity_MotionVectorsParams.y == 0.0;
				if (forceNoMotion)
				{
					VPASSpreviousPositionCS = float4(0.0, 0.0, 0.0, 1.0);
				}
				else
				{
					bool hasDeformation = unity_MotionVectorsParams.x > 0.0;
					float3 effectivePositionOS = (hasDeformation ? inputMesh.previousPositionOS : defaultMesh.positionOS);
					#if defined(_ADD_PRECOMPUTED_VELOCITY)
					effectivePositionOS -= inputMesh.precomputedVelocity;
					#endif

					#if defined(HAVE_MESH_MODIFICATION)
						AttributesMesh previousMesh = defaultMesh;
						previousMesh.positionOS = effectivePositionOS ;
						PackedVaryingsMeshToPS test = (PackedVaryingsMeshToPS)0;
						float3 curTime = _TimeParameters.xyz;
						previousMesh = ApplyMeshModification(previousMesh, _LastTimeParameters.xyz, test);
						_TimeParameters.xyz = curTime;
						float3 previousPositionRWS = TransformPreviousObjectToWorld(previousMesh.positionOS);
					#else
						float3 previousPositionRWS = TransformPreviousObjectToWorld(effectivePositionOS);
					#endif

					#ifdef ATTRIBUTES_NEED_NORMAL
						float3 normalWS = TransformPreviousObjectToWorldNormal(defaultMesh.normalOS);
					#else
						float3 normalWS = float3(0.0, 0.0, 0.0);
					#endif

					#if defined(HAVE_VERTEX_MODIFICATION)
						//ApplyVertexModification(inputMesh, normalWS, previousPositionRWS, _LastTimeParameters.xyz);
					#endif

					VPASSpreviousPositionCS = mul(UNITY_MATRIX_PREV_VP, float4(previousPositionRWS, 1.0));
				}
				#endif

				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.positionRWS.xyz = positionRWS;
				outputPackedVaryingsMeshToPS.normalWS.xyz = normalWS;
				outputPackedVaryingsMeshToPS.tangentWS.xyzw = tangentWS;
				outputPackedVaryingsMeshToPS.uv1.xyzw = inputMesh.uv1;
				outputPackedVaryingsMeshToPS.uv2.xyzw = inputMesh.uv2;

				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					outputPackedVaryingsMeshToPS.vpassPositionCS = float3(VPASSpositionCS.xyw);
					outputPackedVaryingsMeshToPS.vpassPreviousPositionCS = float3(VPASSpreviousPositionCS.xyw);
				#endif
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					float3 previousPositionOS : TEXCOORD4;
					#if defined (_ADD_PRECOMPUTED_VELOCITY)
						float3 precomputedVelocity : TEXCOORD5;
					#endif
				#endif
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.uv1 = v.uv1;
				o.uv2 = v.uv2;
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					o.previousPositionOS = v.previousPositionOS;
					#if defined (_ADD_PRECOMPUTED_VELOCITY)
						o.precomputedVelocity = v.precomputedVelocity;
					#endif
				#endif
				
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.uv1 = patch[0].uv1 * bary.x + patch[1].uv1 * bary.y + patch[2].uv1 * bary.z;
				o.uv2 = patch[0].uv2 * bary.x + patch[1].uv2 * bary.y + patch[2].uv2 * bary.z;
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					o.previousPositionOS = patch[0].previousPositionOS * bary.x + patch[1].previousPositionOS * bary.y + patch[2].previousPositionOS * bary.z;
					#if defined (_ADD_PRECOMPUTED_VELOCITY)
						o.precomputedVelocity = patch[0].precomputedVelocity * bary.x + patch[1].precomputedVelocity * bary.y + patch[2].precomputedVelocity * bary.z;
					#endif
				#endif
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

            #ifdef UNITY_VIRTUAL_TEXTURING
            #ifdef OUTPUT_SPLIT_LIGHTING
            #define DIFFUSE_LIGHTING_TARGET SV_Target2
            #define SSS_BUFFER_TARGET SV_Target3
            #elif defined(_WRITE_TRANSPARENT_MOTION_VECTOR)
            #define MOTION_VECTOR_TARGET SV_Target2
            #endif
            #if defined(SHADER_API_PSSL)

            #pragma PSSL_target_output_format(target 1 FMT_32_ABGR)
            #endif
            #else
            #ifdef OUTPUT_SPLIT_LIGHTING
            #define DIFFUSE_LIGHTING_TARGET SV_Target1
            #define SSS_BUFFER_TARGET SV_Target2
            #elif defined(_WRITE_TRANSPARENT_MOTION_VECTOR)
            #define MOTION_VECTOR_TARGET SV_Target1
            #endif
            #endif

			void Frag(PackedVaryingsMeshToPS packedInput
				, out float4 outColor:SV_Target0
            #ifdef UNITY_VIRTUAL_TEXTURING
				, out float4 outVTFeedback : SV_Target1
            #endif
            #ifdef OUTPUT_SPLIT_LIGHTING
				, out float4 outDiffuseLighting : DIFFUSE_LIGHTING_TARGET
				, OUTPUT_SSSBUFFER(outSSSBuffer) : SSS_BUFFER_TARGET
            #elif defined(_WRITE_TRANSPARENT_MOTION_VECTOR)
				, out float4 outMotionVec : MOTION_VECTOR_TARGET
            #endif

            #ifdef _DEPTHOFFSET_ON
				, out float outputDepth : DEPTH_OFFSET_SEMANTIC
            #endif

		    
						)
			{
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					outMotionVec = float4(2.0, 0.0, 0.0, 0.0);
				#endif

				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );
				float3 positionRWS = packedInput.positionRWS.xyz;
				float3 normalWS = packedInput.normalWS.xyz;
				float4 tangentWS = packedInput.tangentWS.xyzw;

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;
				input.positionRWS = positionRWS;
				input.tangentToWorld = BuildTangentToWorld(tangentWS, normalWS);
				input.texCoord1 = packedInput.uv1.xyzw;
				input.texCoord2 = packedInput.uv2.xyzw;

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE(packedInput.cullFace, true, false);
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				input.positionSS.xy = _OffScreenRendering > 0 ? (uint2)round(input.positionSS.xy * _OffScreenDownsampleFactor) : input.positionSS.xy;
				uint2 tileIndex = uint2(input.positionSS.xy) / GetTileSize ();

				PositionInputs posInput = GetPositionInput( input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS.xyz, tileIndex );

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				GlobalSurfaceDescription surfaceDescription = (GlobalSurfaceDescription)0;
				float3 temp_output_1_0_g255 = packedInput.ase_normal;
				float3 normalizeResult7_g254 = normalize( float3( 0,0,0 ) );
				float dotResult4_g255 = dot( temp_output_1_0_g255 , normalizeResult7_g254 );
				float3 normalizeResult8_g254 = normalize( V );
				float dotResult7_g255 = dot( temp_output_1_0_g255 , normalizeResult8_g254 );
				float2 appendResult10_g255 = (float2(( ( dotResult4_g255 / 2.0 ) + 0.5 ) , dotResult7_g255));
				float3 ase_worldBitangent = packedInput.ase_texcoord7.xyz;
				float3 tanToWorld0 = float3( tangentWS.xyz.x, ase_worldBitangent.x, normalWS.x );
				float3 tanToWorld1 = float3( tangentWS.xyz.y, ase_worldBitangent.y, normalWS.y );
				float3 tanToWorld2 = float3( tangentWS.xyz.z, ase_worldBitangent.z, normalWS.z );
				float3 ase_tanViewDir =  tanToWorld0 * V.x + tanToWorld1 * V.y  + tanToWorld2 * V.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float3 temp_cast_0 = (5.0).xxx;
				float3 temp_output_4_0_g249 = pow( abs( packedInput.ase_normal ) , temp_cast_0 );
				float3 break6_g249 = temp_output_4_0_g249;
				float3 projNormal10_g249 = ( temp_output_4_0_g249 / ( break6_g249.x + break6_g249.y + break6_g249.z ) );
				float localBicubicPrepare2_g251 = ( 0.0 );
				float3 break26_g249 = packedInput.ase_texcoord8.xyz;
				float2 appendResult27_g249 = (float2(break26_g249.z , break26_g249.y));
				float3 nSign18_g249 = sign( packedInput.ase_normal );
				float3 break20_g249 = nSign18_g249;
				float2 appendResult21_g249 = (float2(break20_g249.x , 1.0));
				float temp_output_29_0_g249 = _NormalTiling;
				float temp_output_10_0_g244 = ( _TimeParameters.x * _NormalSpeed );
				float2 appendResult12_g244 = (float2(temp_output_10_0_g244 , temp_output_10_0_g244));
				float3 temp_cast_1 = (5.0).xxx;
				float3 temp_output_4_0_g245 = pow( abs( packedInput.ase_normal ) , temp_cast_1 );
				float3 break6_g245 = temp_output_4_0_g245;
				float3 projNormal10_g245 = ( temp_output_4_0_g245 / ( break6_g245.x + break6_g245.y + break6_g245.z ) );
				float localBicubicPrepare2_g247 = ( 0.0 );
				float3 break26_g245 = packedInput.ase_texcoord8.xyz;
				float2 appendResult27_g245 = (float2(break26_g245.z , break26_g245.y));
				float3 nSign18_g245 = sign( packedInput.ase_normal );
				float3 break20_g245 = nSign18_g245;
				float2 appendResult21_g245 = (float2(break20_g245.x , 1.0));
				float temp_output_29_0_g245 = _NormalUVTiling;
				float temp_output_2_0_g244 = ( _TimeParameters.x * _NormalUVSpeed );
				float2 appendResult5_g244 = (float2(temp_output_2_0_g244 , temp_output_2_0_g244));
				float2 temp_output_65_0_g245 = appendResult5_g244;
				float2 temp_output_68_0_g245 = ( ( appendResult27_g245 * appendResult21_g245 * temp_output_29_0_g245 ) + temp_output_65_0_g245 );
				float2 Input_UV100_g247 = temp_output_68_0_g245;
				float2 UV2_g247 = Input_UV100_g247;
				float4 TexelSize2_g247 = _NormalMap_TexelSize;
				float2 UV02_g247 = float2( 0,0 );
				float2 UV12_g247 = float2( 0,0 );
				float2 UV22_g247 = float2( 0,0 );
				float2 UV32_g247 = float2( 0,0 );
				float W02_g247 = 0;
				float W12_g247 = 0;
				{
				{
				 UV2_g247 = UV2_g247 * TexelSize2_g247.zw - 0.5;
				    float2 f = frac( UV2_g247 );
				    UV2_g247 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g247.x - 0.5, UV2_g247.x + 1.5, UV2_g247.y - 0.5, UV2_g247.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g247.xyxy;
				    UV02_g247 = off.xz;
				    UV12_g247 = off.yz;
				    UV22_g247 = off.xw;
				    UV32_g247 = off.yw;
				    W02_g247 = s.x / ( s.x + s.y );
				 W12_g247 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g247 = lerp( tex2D( _NormalMap, UV32_g247 ) , tex2D( _NormalMap, UV22_g247 ) , W02_g247);
				float4 lerpResult45_g247 = lerp( tex2D( _NormalMap, UV12_g247 ) , tex2D( _NormalMap, UV02_g247 ) , W02_g247);
				float4 lerpResult44_g247 = lerp( lerpResult46_g247 , lerpResult45_g247 , W12_g247);
				float4 Output_2D131_g247 = lerpResult44_g247;
				float localBicubicPrepare2_g248 = ( 0.0 );
				float2 appendResult32_g245 = (float2(break26_g245.x , break26_g245.z));
				float2 appendResult22_g245 = (float2(break20_g245.y , 1.0));
				float2 temp_output_66_0_g245 = ( ( temp_output_29_0_g245 * appendResult32_g245 * appendResult22_g245 ) + temp_output_65_0_g245 );
				float2 Input_UV100_g248 = temp_output_66_0_g245;
				float2 UV2_g248 = Input_UV100_g248;
				float4 TexelSize2_g248 = _NormalMap_TexelSize;
				float2 UV02_g248 = float2( 0,0 );
				float2 UV12_g248 = float2( 0,0 );
				float2 UV22_g248 = float2( 0,0 );
				float2 UV32_g248 = float2( 0,0 );
				float W02_g248 = 0;
				float W12_g248 = 0;
				{
				{
				 UV2_g248 = UV2_g248 * TexelSize2_g248.zw - 0.5;
				    float2 f = frac( UV2_g248 );
				    UV2_g248 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g248.x - 0.5, UV2_g248.x + 1.5, UV2_g248.y - 0.5, UV2_g248.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g248.xyxy;
				    UV02_g248 = off.xz;
				    UV12_g248 = off.yz;
				    UV22_g248 = off.xw;
				    UV32_g248 = off.yw;
				    W02_g248 = s.x / ( s.x + s.y );
				 W12_g248 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g248 = lerp( tex2D( _NormalMap, UV32_g248 ) , tex2D( _NormalMap, UV22_g248 ) , W02_g248);
				float4 lerpResult45_g248 = lerp( tex2D( _NormalMap, UV12_g248 ) , tex2D( _NormalMap, UV02_g248 ) , W02_g248);
				float4 lerpResult44_g248 = lerp( lerpResult46_g248 , lerpResult45_g248 , W12_g248);
				float4 Output_2D131_g248 = lerpResult44_g248;
				float localBicubicPrepare2_g246 = ( 0.0 );
				float2 appendResult34_g245 = (float2(break26_g245.x , break26_g245.y));
				float2 appendResult25_g245 = (float2(-break20_g245.z , 1.0));
				float2 temp_output_67_0_g245 = ( temp_output_65_0_g245 + ( temp_output_29_0_g245 * appendResult34_g245 * appendResult25_g245 ) );
				float2 Input_UV100_g246 = temp_output_67_0_g245;
				float2 UV2_g246 = Input_UV100_g246;
				float4 TexelSize2_g246 = _NormalMap_TexelSize;
				float2 UV02_g246 = float2( 0,0 );
				float2 UV12_g246 = float2( 0,0 );
				float2 UV22_g246 = float2( 0,0 );
				float2 UV32_g246 = float2( 0,0 );
				float W02_g246 = 0;
				float W12_g246 = 0;
				{
				{
				 UV2_g246 = UV2_g246 * TexelSize2_g246.zw - 0.5;
				    float2 f = frac( UV2_g246 );
				    UV2_g246 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g246.x - 0.5, UV2_g246.x + 1.5, UV2_g246.y - 0.5, UV2_g246.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g246.xyxy;
				    UV02_g246 = off.xz;
				    UV12_g246 = off.yz;
				    UV22_g246 = off.xw;
				    UV32_g246 = off.yw;
				    W02_g246 = s.x / ( s.x + s.y );
				 W12_g246 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g246 = lerp( tex2D( _NormalMap, UV32_g246 ) , tex2D( _NormalMap, UV22_g246 ) , W02_g246);
				float4 lerpResult45_g246 = lerp( tex2D( _NormalMap, UV12_g246 ) , tex2D( _NormalMap, UV02_g246 ) , W02_g246);
				float4 lerpResult44_g246 = lerp( lerpResult46_g246 , lerpResult45_g246 , W12_g246);
				float4 Output_2D131_g246 = lerpResult44_g246;
				float4 break11_g244 = ( saturate( ( ( projNormal10_g245.x * Output_2D131_g247 ) + ( projNormal10_g245.y * Output_2D131_g248 ) + ( projNormal10_g245.z * Output_2D131_g246 ) ) ) * _NormlalDistortionFactor );
				float2 appendResult13_g244 = (float2(break11_g244.r , break11_g244.g));
				float2 temp_output_65_0_g249 = ( appendResult12_g244 + appendResult13_g244 );
				float2 temp_output_68_0_g249 = ( ( appendResult27_g249 * appendResult21_g249 * temp_output_29_0_g249 ) + temp_output_65_0_g249 );
				float2 Input_UV100_g251 = temp_output_68_0_g249;
				float2 UV2_g251 = Input_UV100_g251;
				float4 TexelSize2_g251 = _NormalMap_TexelSize;
				float2 UV02_g251 = float2( 0,0 );
				float2 UV12_g251 = float2( 0,0 );
				float2 UV22_g251 = float2( 0,0 );
				float2 UV32_g251 = float2( 0,0 );
				float W02_g251 = 0;
				float W12_g251 = 0;
				{
				{
				 UV2_g251 = UV2_g251 * TexelSize2_g251.zw - 0.5;
				    float2 f = frac( UV2_g251 );
				    UV2_g251 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g251.x - 0.5, UV2_g251.x + 1.5, UV2_g251.y - 0.5, UV2_g251.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g251.xyxy;
				    UV02_g251 = off.xz;
				    UV12_g251 = off.yz;
				    UV22_g251 = off.xw;
				    UV32_g251 = off.yw;
				    W02_g251 = s.x / ( s.x + s.y );
				 W12_g251 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g251 = lerp( tex2D( _NormalMap, UV32_g251 ) , tex2D( _NormalMap, UV22_g251 ) , W02_g251);
				float4 lerpResult45_g251 = lerp( tex2D( _NormalMap, UV12_g251 ) , tex2D( _NormalMap, UV02_g251 ) , W02_g251);
				float4 lerpResult44_g251 = lerp( lerpResult46_g251 , lerpResult45_g251 , W12_g251);
				float4 Output_2D131_g251 = lerpResult44_g251;
				float localBicubicPrepare2_g252 = ( 0.0 );
				float2 appendResult32_g249 = (float2(break26_g249.x , break26_g249.z));
				float2 appendResult22_g249 = (float2(break20_g249.y , 1.0));
				float2 temp_output_66_0_g249 = ( ( temp_output_29_0_g249 * appendResult32_g249 * appendResult22_g249 ) + temp_output_65_0_g249 );
				float2 Input_UV100_g252 = temp_output_66_0_g249;
				float2 UV2_g252 = Input_UV100_g252;
				float4 TexelSize2_g252 = _NormalMap_TexelSize;
				float2 UV02_g252 = float2( 0,0 );
				float2 UV12_g252 = float2( 0,0 );
				float2 UV22_g252 = float2( 0,0 );
				float2 UV32_g252 = float2( 0,0 );
				float W02_g252 = 0;
				float W12_g252 = 0;
				{
				{
				 UV2_g252 = UV2_g252 * TexelSize2_g252.zw - 0.5;
				    float2 f = frac( UV2_g252 );
				    UV2_g252 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g252.x - 0.5, UV2_g252.x + 1.5, UV2_g252.y - 0.5, UV2_g252.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g252.xyxy;
				    UV02_g252 = off.xz;
				    UV12_g252 = off.yz;
				    UV22_g252 = off.xw;
				    UV32_g252 = off.yw;
				    W02_g252 = s.x / ( s.x + s.y );
				 W12_g252 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g252 = lerp( tex2D( _NormalMap, UV32_g252 ) , tex2D( _NormalMap, UV22_g252 ) , W02_g252);
				float4 lerpResult45_g252 = lerp( tex2D( _NormalMap, UV12_g252 ) , tex2D( _NormalMap, UV02_g252 ) , W02_g252);
				float4 lerpResult44_g252 = lerp( lerpResult46_g252 , lerpResult45_g252 , W12_g252);
				float4 Output_2D131_g252 = lerpResult44_g252;
				float localBicubicPrepare2_g250 = ( 0.0 );
				float2 appendResult34_g249 = (float2(break26_g249.x , break26_g249.y));
				float2 appendResult25_g249 = (float2(-break20_g249.z , 1.0));
				float2 temp_output_67_0_g249 = ( temp_output_65_0_g249 + ( temp_output_29_0_g249 * appendResult34_g249 * appendResult25_g249 ) );
				float2 Input_UV100_g250 = temp_output_67_0_g249;
				float2 UV2_g250 = Input_UV100_g250;
				float4 TexelSize2_g250 = _NormalMap_TexelSize;
				float2 UV02_g250 = float2( 0,0 );
				float2 UV12_g250 = float2( 0,0 );
				float2 UV22_g250 = float2( 0,0 );
				float2 UV32_g250 = float2( 0,0 );
				float W02_g250 = 0;
				float W12_g250 = 0;
				{
				{
				 UV2_g250 = UV2_g250 * TexelSize2_g250.zw - 0.5;
				    float2 f = frac( UV2_g250 );
				    UV2_g250 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g250.x - 0.5, UV2_g250.x + 1.5, UV2_g250.y - 0.5, UV2_g250.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g250.xyxy;
				    UV02_g250 = off.xz;
				    UV12_g250 = off.yz;
				    UV22_g250 = off.xw;
				    UV32_g250 = off.yw;
				    W02_g250 = s.x / ( s.x + s.y );
				 W12_g250 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g250 = lerp( tex2D( _NormalMap, UV32_g250 ) , tex2D( _NormalMap, UV22_g250 ) , W02_g250);
				float4 lerpResult45_g250 = lerp( tex2D( _NormalMap, UV12_g250 ) , tex2D( _NormalMap, UV02_g250 ) , W02_g250);
				float4 lerpResult44_g250 = lerp( lerpResult46_g250 , lerpResult45_g250 , W12_g250);
				float4 Output_2D131_g250 = lerpResult44_g250;
				float3 unpack18_g244 = UnpackNormalScale( saturate( ( ( projNormal10_g249.x * Output_2D131_g251 ) + ( projNormal10_g249.y * Output_2D131_g252 ) + ( projNormal10_g249.z * Output_2D131_g250 ) ) ), _NormalScale );
				unpack18_g244.z = lerp( 1, unpack18_g244.z, saturate(_NormalScale) );
				float3 normalUnpacked24 = unpack18_g244;
				float3 normalizeResult5_g253 = normalize( normalUnpacked24 );
				float dotResult14_g253 = dot( ase_tanViewDir , normalizeResult5_g253 );
				float3 temp_cast_4 = (5.0).xxx;
				float3 temp_output_4_0_g174 = pow( abs( packedInput.ase_normal ) , temp_cast_4 );
				float3 break6_g174 = temp_output_4_0_g174;
				float3 projNormal10_g174 = ( temp_output_4_0_g174 / ( break6_g174.x + break6_g174.y + break6_g174.z ) );
				float localBicubicPrepare2_g176 = ( 0.0 );
				float3 break26_g174 = packedInput.ase_texcoord8.xyz;
				float2 appendResult27_g174 = (float2(break26_g174.z , break26_g174.y));
				float3 nSign18_g174 = sign( packedInput.ase_normal );
				float3 break20_g174 = nSign18_g174;
				float2 appendResult21_g174 = (float2(break20_g174.x , 1.0));
				float temp_output_29_0_g174 = _DistortionTiling;
				float temp_output_10_0_g173 = ( _TimeParameters.x * _DistortionSpeed );
				float2 appendResult12_g173 = (float2(temp_output_10_0_g173 , temp_output_10_0_g173));
				float3 temp_cast_5 = (5.0).xxx;
				float3 temp_output_4_0_g178 = pow( abs( packedInput.ase_normal ) , temp_cast_5 );
				float3 break6_g178 = temp_output_4_0_g178;
				float3 projNormal10_g178 = ( temp_output_4_0_g178 / ( break6_g178.x + break6_g178.y + break6_g178.z ) );
				float localBicubicPrepare2_g180 = ( 0.0 );
				float3 break26_g178 = packedInput.ase_texcoord8.xyz;
				float2 appendResult27_g178 = (float2(break26_g178.z , break26_g178.y));
				float3 nSign18_g178 = sign( packedInput.ase_normal );
				float3 break20_g178 = nSign18_g178;
				float2 appendResult21_g178 = (float2(break20_g178.x , 1.0));
				float temp_output_29_0_g178 = _DistortionUVTiling;
				float temp_output_2_0_g173 = ( _TimeParameters.x * _DistortionUVSpeed );
				float2 appendResult5_g173 = (float2(temp_output_2_0_g173 , temp_output_2_0_g173));
				float2 temp_output_65_0_g178 = appendResult5_g173;
				float2 temp_output_68_0_g178 = ( ( appendResult27_g178 * appendResult21_g178 * temp_output_29_0_g178 ) + temp_output_65_0_g178 );
				float2 Input_UV100_g180 = temp_output_68_0_g178;
				float2 UV2_g180 = Input_UV100_g180;
				float4 TexelSize2_g180 = _DistortionUVMap_TexelSize;
				float2 UV02_g180 = float2( 0,0 );
				float2 UV12_g180 = float2( 0,0 );
				float2 UV22_g180 = float2( 0,0 );
				float2 UV32_g180 = float2( 0,0 );
				float W02_g180 = 0;
				float W12_g180 = 0;
				{
				{
				 UV2_g180 = UV2_g180 * TexelSize2_g180.zw - 0.5;
				    float2 f = frac( UV2_g180 );
				    UV2_g180 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g180.x - 0.5, UV2_g180.x + 1.5, UV2_g180.y - 0.5, UV2_g180.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g180.xyxy;
				    UV02_g180 = off.xz;
				    UV12_g180 = off.yz;
				    UV22_g180 = off.xw;
				    UV32_g180 = off.yw;
				    W02_g180 = s.x / ( s.x + s.y );
				 W12_g180 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g180 = lerp( tex2D( _DistortionUVMap, UV32_g180 ) , tex2D( _DistortionUVMap, UV22_g180 ) , W02_g180);
				float4 lerpResult45_g180 = lerp( tex2D( _DistortionUVMap, UV12_g180 ) , tex2D( _DistortionUVMap, UV02_g180 ) , W02_g180);
				float4 lerpResult44_g180 = lerp( lerpResult46_g180 , lerpResult45_g180 , W12_g180);
				float4 Output_2D131_g180 = lerpResult44_g180;
				float localBicubicPrepare2_g181 = ( 0.0 );
				float2 appendResult32_g178 = (float2(break26_g178.x , break26_g178.z));
				float2 appendResult22_g178 = (float2(break20_g178.y , 1.0));
				float2 temp_output_66_0_g178 = ( ( temp_output_29_0_g178 * appendResult32_g178 * appendResult22_g178 ) + temp_output_65_0_g178 );
				float2 Input_UV100_g181 = temp_output_66_0_g178;
				float2 UV2_g181 = Input_UV100_g181;
				float4 TexelSize2_g181 = _DistortionUVMap_TexelSize;
				float2 UV02_g181 = float2( 0,0 );
				float2 UV12_g181 = float2( 0,0 );
				float2 UV22_g181 = float2( 0,0 );
				float2 UV32_g181 = float2( 0,0 );
				float W02_g181 = 0;
				float W12_g181 = 0;
				{
				{
				 UV2_g181 = UV2_g181 * TexelSize2_g181.zw - 0.5;
				    float2 f = frac( UV2_g181 );
				    UV2_g181 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g181.x - 0.5, UV2_g181.x + 1.5, UV2_g181.y - 0.5, UV2_g181.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g181.xyxy;
				    UV02_g181 = off.xz;
				    UV12_g181 = off.yz;
				    UV22_g181 = off.xw;
				    UV32_g181 = off.yw;
				    W02_g181 = s.x / ( s.x + s.y );
				 W12_g181 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g181 = lerp( tex2D( _DistortionUVMap, UV32_g181 ) , tex2D( _DistortionUVMap, UV22_g181 ) , W02_g181);
				float4 lerpResult45_g181 = lerp( tex2D( _DistortionUVMap, UV12_g181 ) , tex2D( _DistortionUVMap, UV02_g181 ) , W02_g181);
				float4 lerpResult44_g181 = lerp( lerpResult46_g181 , lerpResult45_g181 , W12_g181);
				float4 Output_2D131_g181 = lerpResult44_g181;
				float localBicubicPrepare2_g179 = ( 0.0 );
				float2 appendResult34_g178 = (float2(break26_g178.x , break26_g178.y));
				float2 appendResult25_g178 = (float2(-break20_g178.z , 1.0));
				float2 temp_output_67_0_g178 = ( temp_output_65_0_g178 + ( temp_output_29_0_g178 * appendResult34_g178 * appendResult25_g178 ) );
				float2 Input_UV100_g179 = temp_output_67_0_g178;
				float2 UV2_g179 = Input_UV100_g179;
				float4 TexelSize2_g179 = _DistortionUVMap_TexelSize;
				float2 UV02_g179 = float2( 0,0 );
				float2 UV12_g179 = float2( 0,0 );
				float2 UV22_g179 = float2( 0,0 );
				float2 UV32_g179 = float2( 0,0 );
				float W02_g179 = 0;
				float W12_g179 = 0;
				{
				{
				 UV2_g179 = UV2_g179 * TexelSize2_g179.zw - 0.5;
				    float2 f = frac( UV2_g179 );
				    UV2_g179 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g179.x - 0.5, UV2_g179.x + 1.5, UV2_g179.y - 0.5, UV2_g179.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g179.xyxy;
				    UV02_g179 = off.xz;
				    UV12_g179 = off.yz;
				    UV22_g179 = off.xw;
				    UV32_g179 = off.yw;
				    W02_g179 = s.x / ( s.x + s.y );
				 W12_g179 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g179 = lerp( tex2D( _DistortionUVMap, UV32_g179 ) , tex2D( _DistortionUVMap, UV22_g179 ) , W02_g179);
				float4 lerpResult45_g179 = lerp( tex2D( _DistortionUVMap, UV12_g179 ) , tex2D( _DistortionUVMap, UV02_g179 ) , W02_g179);
				float4 lerpResult44_g179 = lerp( lerpResult46_g179 , lerpResult45_g179 , W12_g179);
				float4 Output_2D131_g179 = lerpResult44_g179;
				float4 break11_g173 = ( saturate( ( ( projNormal10_g178.x * Output_2D131_g180 ) + ( projNormal10_g178.y * Output_2D131_g181 ) + ( projNormal10_g178.z * Output_2D131_g179 ) ) ) * _DistortionFactor );
				float2 appendResult13_g173 = (float2(break11_g173.r , break11_g173.g));
				float2 temp_output_65_0_g174 = ( appendResult12_g173 + appendResult13_g173 );
				float2 temp_output_68_0_g174 = ( ( appendResult27_g174 * appendResult21_g174 * temp_output_29_0_g174 ) + temp_output_65_0_g174 );
				float2 Input_UV100_g176 = temp_output_68_0_g174;
				float2 UV2_g176 = Input_UV100_g176;
				float4 TexelSize2_g176 = _DistortionMap_TexelSize;
				float2 UV02_g176 = float2( 0,0 );
				float2 UV12_g176 = float2( 0,0 );
				float2 UV22_g176 = float2( 0,0 );
				float2 UV32_g176 = float2( 0,0 );
				float W02_g176 = 0;
				float W12_g176 = 0;
				{
				{
				 UV2_g176 = UV2_g176 * TexelSize2_g176.zw - 0.5;
				    float2 f = frac( UV2_g176 );
				    UV2_g176 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g176.x - 0.5, UV2_g176.x + 1.5, UV2_g176.y - 0.5, UV2_g176.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g176.xyxy;
				    UV02_g176 = off.xz;
				    UV12_g176 = off.yz;
				    UV22_g176 = off.xw;
				    UV32_g176 = off.yw;
				    W02_g176 = s.x / ( s.x + s.y );
				 W12_g176 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g176 = lerp( tex2D( _DistortionMap, UV32_g176 ) , tex2D( _DistortionMap, UV22_g176 ) , W02_g176);
				float4 lerpResult45_g176 = lerp( tex2D( _DistortionMap, UV12_g176 ) , tex2D( _DistortionMap, UV02_g176 ) , W02_g176);
				float4 lerpResult44_g176 = lerp( lerpResult46_g176 , lerpResult45_g176 , W12_g176);
				float4 Output_2D131_g176 = lerpResult44_g176;
				float localBicubicPrepare2_g177 = ( 0.0 );
				float2 appendResult32_g174 = (float2(break26_g174.x , break26_g174.z));
				float2 appendResult22_g174 = (float2(break20_g174.y , 1.0));
				float2 temp_output_66_0_g174 = ( ( temp_output_29_0_g174 * appendResult32_g174 * appendResult22_g174 ) + temp_output_65_0_g174 );
				float2 Input_UV100_g177 = temp_output_66_0_g174;
				float2 UV2_g177 = Input_UV100_g177;
				float4 TexelSize2_g177 = _DistortionMap_TexelSize;
				float2 UV02_g177 = float2( 0,0 );
				float2 UV12_g177 = float2( 0,0 );
				float2 UV22_g177 = float2( 0,0 );
				float2 UV32_g177 = float2( 0,0 );
				float W02_g177 = 0;
				float W12_g177 = 0;
				{
				{
				 UV2_g177 = UV2_g177 * TexelSize2_g177.zw - 0.5;
				    float2 f = frac( UV2_g177 );
				    UV2_g177 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g177.x - 0.5, UV2_g177.x + 1.5, UV2_g177.y - 0.5, UV2_g177.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g177.xyxy;
				    UV02_g177 = off.xz;
				    UV12_g177 = off.yz;
				    UV22_g177 = off.xw;
				    UV32_g177 = off.yw;
				    W02_g177 = s.x / ( s.x + s.y );
				 W12_g177 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g177 = lerp( tex2D( _DistortionMap, UV32_g177 ) , tex2D( _DistortionMap, UV22_g177 ) , W02_g177);
				float4 lerpResult45_g177 = lerp( tex2D( _DistortionMap, UV12_g177 ) , tex2D( _DistortionMap, UV02_g177 ) , W02_g177);
				float4 lerpResult44_g177 = lerp( lerpResult46_g177 , lerpResult45_g177 , W12_g177);
				float4 Output_2D131_g177 = lerpResult44_g177;
				float localBicubicPrepare2_g175 = ( 0.0 );
				float2 appendResult34_g174 = (float2(break26_g174.x , break26_g174.y));
				float2 appendResult25_g174 = (float2(-break20_g174.z , 1.0));
				float2 temp_output_67_0_g174 = ( temp_output_65_0_g174 + ( temp_output_29_0_g174 * appendResult34_g174 * appendResult25_g174 ) );
				float2 Input_UV100_g175 = temp_output_67_0_g174;
				float2 UV2_g175 = Input_UV100_g175;
				float4 TexelSize2_g175 = _DistortionMap_TexelSize;
				float2 UV02_g175 = float2( 0,0 );
				float2 UV12_g175 = float2( 0,0 );
				float2 UV22_g175 = float2( 0,0 );
				float2 UV32_g175 = float2( 0,0 );
				float W02_g175 = 0;
				float W12_g175 = 0;
				{
				{
				 UV2_g175 = UV2_g175 * TexelSize2_g175.zw - 0.5;
				    float2 f = frac( UV2_g175 );
				    UV2_g175 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g175.x - 0.5, UV2_g175.x + 1.5, UV2_g175.y - 0.5, UV2_g175.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g175.xyxy;
				    UV02_g175 = off.xz;
				    UV12_g175 = off.yz;
				    UV22_g175 = off.xw;
				    UV32_g175 = off.yw;
				    W02_g175 = s.x / ( s.x + s.y );
				 W12_g175 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g175 = lerp( tex2D( _DistortionMap, UV32_g175 ) , tex2D( _DistortionMap, UV22_g175 ) , W02_g175);
				float4 lerpResult45_g175 = lerp( tex2D( _DistortionMap, UV12_g175 ) , tex2D( _DistortionMap, UV02_g175 ) , W02_g175);
				float4 lerpResult44_g175 = lerp( lerpResult46_g175 , lerpResult45_g175 , W12_g175);
				float4 Output_2D131_g175 = lerpResult44_g175;
				float4 temp_cast_6 = (_DetailPow).xxxx;
				float4 temp_output_9_0 = saturate( ( pow( max( float4( 0,0,0,0 ) , saturate( ( ( projNormal10_g174.x * Output_2D131_g176 ) + ( projNormal10_g174.y * Output_2D131_g177 ) + ( projNormal10_g174.z * Output_2D131_g175 ) ) ) ) , temp_cast_6 ) * _DetailBoost ) );
				float4 lerpResult5 = lerp( _TintLow , _TintHigh , temp_output_9_0.r);
				
				float4 spec90 = ( _SpecularColor * temp_output_9_0 * _Specular );
				
				float4 temp_cast_9 = (0.0).xxxx;
				float clampResult20_g256 = clamp( sin( ( ( _TimeParameters.x ) * ( 2.0 * PI ) ) ) , 0.3 , 1.0 );
				float clampResult29_g256 = clamp( sin( ( ( _TimeParameters.x ) * ( 5.0 * PI ) ) ) , 0.5 , 1.0 );
				float clampResult30_g256 = clamp( sin( ( ( _TimeParameters.x ) * ( 10.0 * PI ) ) ) , 0.7 , 1.0 );
				float sine32_g256 = ( clampResult20_g256 * clampResult29_g256 * clampResult30_g256 );
				float3 temp_cast_10 = (3.0).xxx;
				float3 temp_output_4_0_g265 = pow( abs( packedInput.ase_normal ) , temp_cast_10 );
				float3 break6_g265 = temp_output_4_0_g265;
				float3 projNormal10_g265 = ( temp_output_4_0_g265 / ( break6_g265.x + break6_g265.y + break6_g265.z ) );
				float localBicubicPrepare2_g267 = ( 0.0 );
				float3 break26_g265 = packedInput.ase_texcoord8.xyz;
				float2 appendResult27_g265 = (float2(break26_g265.z , break26_g265.y));
				float3 nSign18_g265 = sign( packedInput.ase_normal );
				float3 break20_g265 = nSign18_g265;
				float2 appendResult21_g265 = (float2(break20_g265.x , 1.0));
				float temp_output_29_0_g265 = _LightingMaskATiling;
				float mulTime7_g256 = _TimeParameters.x * _LightingMaskAUVSpeed;
				float2 temp_cast_11 = (mulTime7_g256).xx;
				float2 temp_output_65_0_g265 = temp_cast_11;
				float2 temp_output_68_0_g265 = ( ( appendResult27_g265 * appendResult21_g265 * temp_output_29_0_g265 ) + temp_output_65_0_g265 );
				float2 Input_UV100_g267 = temp_output_68_0_g265;
				float2 UV2_g267 = Input_UV100_g267;
				float4 TexelSize2_g267 = _LightingMaskMap_TexelSize;
				float2 UV02_g267 = float2( 0,0 );
				float2 UV12_g267 = float2( 0,0 );
				float2 UV22_g267 = float2( 0,0 );
				float2 UV32_g267 = float2( 0,0 );
				float W02_g267 = 0;
				float W12_g267 = 0;
				{
				{
				 UV2_g267 = UV2_g267 * TexelSize2_g267.zw - 0.5;
				    float2 f = frac( UV2_g267 );
				    UV2_g267 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g267.x - 0.5, UV2_g267.x + 1.5, UV2_g267.y - 0.5, UV2_g267.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g267.xyxy;
				    UV02_g267 = off.xz;
				    UV12_g267 = off.yz;
				    UV22_g267 = off.xw;
				    UV32_g267 = off.yw;
				    W02_g267 = s.x / ( s.x + s.y );
				 W12_g267 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g267 = lerp( tex2D( _LightingMaskMap, UV32_g267 ) , tex2D( _LightingMaskMap, UV22_g267 ) , W02_g267);
				float4 lerpResult45_g267 = lerp( tex2D( _LightingMaskMap, UV12_g267 ) , tex2D( _LightingMaskMap, UV02_g267 ) , W02_g267);
				float4 lerpResult44_g267 = lerp( lerpResult46_g267 , lerpResult45_g267 , W12_g267);
				float4 Output_2D131_g267 = lerpResult44_g267;
				float localBicubicPrepare2_g268 = ( 0.0 );
				float2 appendResult32_g265 = (float2(break26_g265.x , break26_g265.z));
				float2 appendResult22_g265 = (float2(break20_g265.y , 1.0));
				float2 temp_output_66_0_g265 = ( ( temp_output_29_0_g265 * appendResult32_g265 * appendResult22_g265 ) + temp_output_65_0_g265 );
				float2 Input_UV100_g268 = temp_output_66_0_g265;
				float2 UV2_g268 = Input_UV100_g268;
				float4 TexelSize2_g268 = _LightingMaskMap_TexelSize;
				float2 UV02_g268 = float2( 0,0 );
				float2 UV12_g268 = float2( 0,0 );
				float2 UV22_g268 = float2( 0,0 );
				float2 UV32_g268 = float2( 0,0 );
				float W02_g268 = 0;
				float W12_g268 = 0;
				{
				{
				 UV2_g268 = UV2_g268 * TexelSize2_g268.zw - 0.5;
				    float2 f = frac( UV2_g268 );
				    UV2_g268 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g268.x - 0.5, UV2_g268.x + 1.5, UV2_g268.y - 0.5, UV2_g268.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g268.xyxy;
				    UV02_g268 = off.xz;
				    UV12_g268 = off.yz;
				    UV22_g268 = off.xw;
				    UV32_g268 = off.yw;
				    W02_g268 = s.x / ( s.x + s.y );
				 W12_g268 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g268 = lerp( tex2D( _LightingMaskMap, UV32_g268 ) , tex2D( _LightingMaskMap, UV22_g268 ) , W02_g268);
				float4 lerpResult45_g268 = lerp( tex2D( _LightingMaskMap, UV12_g268 ) , tex2D( _LightingMaskMap, UV02_g268 ) , W02_g268);
				float4 lerpResult44_g268 = lerp( lerpResult46_g268 , lerpResult45_g268 , W12_g268);
				float4 Output_2D131_g268 = lerpResult44_g268;
				float localBicubicPrepare2_g266 = ( 0.0 );
				float2 appendResult34_g265 = (float2(break26_g265.x , break26_g265.y));
				float2 appendResult25_g265 = (float2(-break20_g265.z , 1.0));
				float2 temp_output_67_0_g265 = ( temp_output_65_0_g265 + ( temp_output_29_0_g265 * appendResult34_g265 * appendResult25_g265 ) );
				float2 Input_UV100_g266 = temp_output_67_0_g265;
				float2 UV2_g266 = Input_UV100_g266;
				float4 TexelSize2_g266 = _LightingMaskMap_TexelSize;
				float2 UV02_g266 = float2( 0,0 );
				float2 UV12_g266 = float2( 0,0 );
				float2 UV22_g266 = float2( 0,0 );
				float2 UV32_g266 = float2( 0,0 );
				float W02_g266 = 0;
				float W12_g266 = 0;
				{
				{
				 UV2_g266 = UV2_g266 * TexelSize2_g266.zw - 0.5;
				    float2 f = frac( UV2_g266 );
				    UV2_g266 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g266.x - 0.5, UV2_g266.x + 1.5, UV2_g266.y - 0.5, UV2_g266.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g266.xyxy;
				    UV02_g266 = off.xz;
				    UV12_g266 = off.yz;
				    UV22_g266 = off.xw;
				    UV32_g266 = off.yw;
				    W02_g266 = s.x / ( s.x + s.y );
				 W12_g266 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g266 = lerp( tex2D( _LightingMaskMap, UV32_g266 ) , tex2D( _LightingMaskMap, UV22_g266 ) , W02_g266);
				float4 lerpResult45_g266 = lerp( tex2D( _LightingMaskMap, UV12_g266 ) , tex2D( _LightingMaskMap, UV02_g266 ) , W02_g266);
				float4 lerpResult44_g266 = lerp( lerpResult46_g266 , lerpResult45_g266 , W12_g266);
				float4 Output_2D131_g266 = lerpResult44_g266;
				float3 temp_cast_12 = (3.0).xxx;
				float3 temp_output_4_0_g269 = pow( abs( packedInput.ase_normal ) , temp_cast_12 );
				float3 break6_g269 = temp_output_4_0_g269;
				float3 projNormal10_g269 = ( temp_output_4_0_g269 / ( break6_g269.x + break6_g269.y + break6_g269.z ) );
				float localBicubicPrepare2_g271 = ( 0.0 );
				float3 break26_g269 = packedInput.ase_texcoord8.xyz;
				float2 appendResult27_g269 = (float2(break26_g269.z , break26_g269.y));
				float3 nSign18_g269 = sign( packedInput.ase_normal );
				float3 break20_g269 = nSign18_g269;
				float2 appendResult21_g269 = (float2(break20_g269.x , 1.0));
				float temp_output_29_0_g269 = _LightingMaskBTiling;
				float mulTime10_g256 = _TimeParameters.x * _LightingMaskBUVSpeed;
				float2 temp_cast_13 = (mulTime10_g256).xx;
				float2 temp_output_65_0_g269 = temp_cast_13;
				float2 temp_output_68_0_g269 = ( ( appendResult27_g269 * appendResult21_g269 * temp_output_29_0_g269 ) + temp_output_65_0_g269 );
				float2 Input_UV100_g271 = temp_output_68_0_g269;
				float2 UV2_g271 = Input_UV100_g271;
				float4 TexelSize2_g271 = _LightingMaskMap_TexelSize;
				float2 UV02_g271 = float2( 0,0 );
				float2 UV12_g271 = float2( 0,0 );
				float2 UV22_g271 = float2( 0,0 );
				float2 UV32_g271 = float2( 0,0 );
				float W02_g271 = 0;
				float W12_g271 = 0;
				{
				{
				 UV2_g271 = UV2_g271 * TexelSize2_g271.zw - 0.5;
				    float2 f = frac( UV2_g271 );
				    UV2_g271 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g271.x - 0.5, UV2_g271.x + 1.5, UV2_g271.y - 0.5, UV2_g271.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g271.xyxy;
				    UV02_g271 = off.xz;
				    UV12_g271 = off.yz;
				    UV22_g271 = off.xw;
				    UV32_g271 = off.yw;
				    W02_g271 = s.x / ( s.x + s.y );
				 W12_g271 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g271 = lerp( tex2D( _LightingMaskMap, UV32_g271 ) , tex2D( _LightingMaskMap, UV22_g271 ) , W02_g271);
				float4 lerpResult45_g271 = lerp( tex2D( _LightingMaskMap, UV12_g271 ) , tex2D( _LightingMaskMap, UV02_g271 ) , W02_g271);
				float4 lerpResult44_g271 = lerp( lerpResult46_g271 , lerpResult45_g271 , W12_g271);
				float4 Output_2D131_g271 = lerpResult44_g271;
				float localBicubicPrepare2_g272 = ( 0.0 );
				float2 appendResult32_g269 = (float2(break26_g269.x , break26_g269.z));
				float2 appendResult22_g269 = (float2(break20_g269.y , 1.0));
				float2 temp_output_66_0_g269 = ( ( temp_output_29_0_g269 * appendResult32_g269 * appendResult22_g269 ) + temp_output_65_0_g269 );
				float2 Input_UV100_g272 = temp_output_66_0_g269;
				float2 UV2_g272 = Input_UV100_g272;
				float4 TexelSize2_g272 = _LightingMaskMap_TexelSize;
				float2 UV02_g272 = float2( 0,0 );
				float2 UV12_g272 = float2( 0,0 );
				float2 UV22_g272 = float2( 0,0 );
				float2 UV32_g272 = float2( 0,0 );
				float W02_g272 = 0;
				float W12_g272 = 0;
				{
				{
				 UV2_g272 = UV2_g272 * TexelSize2_g272.zw - 0.5;
				    float2 f = frac( UV2_g272 );
				    UV2_g272 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g272.x - 0.5, UV2_g272.x + 1.5, UV2_g272.y - 0.5, UV2_g272.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g272.xyxy;
				    UV02_g272 = off.xz;
				    UV12_g272 = off.yz;
				    UV22_g272 = off.xw;
				    UV32_g272 = off.yw;
				    W02_g272 = s.x / ( s.x + s.y );
				 W12_g272 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g272 = lerp( tex2D( _LightingMaskMap, UV32_g272 ) , tex2D( _LightingMaskMap, UV22_g272 ) , W02_g272);
				float4 lerpResult45_g272 = lerp( tex2D( _LightingMaskMap, UV12_g272 ) , tex2D( _LightingMaskMap, UV02_g272 ) , W02_g272);
				float4 lerpResult44_g272 = lerp( lerpResult46_g272 , lerpResult45_g272 , W12_g272);
				float4 Output_2D131_g272 = lerpResult44_g272;
				float localBicubicPrepare2_g270 = ( 0.0 );
				float2 appendResult34_g269 = (float2(break26_g269.x , break26_g269.y));
				float2 appendResult25_g269 = (float2(-break20_g269.z , 1.0));
				float2 temp_output_67_0_g269 = ( temp_output_65_0_g269 + ( temp_output_29_0_g269 * appendResult34_g269 * appendResult25_g269 ) );
				float2 Input_UV100_g270 = temp_output_67_0_g269;
				float2 UV2_g270 = Input_UV100_g270;
				float4 TexelSize2_g270 = _LightingMaskMap_TexelSize;
				float2 UV02_g270 = float2( 0,0 );
				float2 UV12_g270 = float2( 0,0 );
				float2 UV22_g270 = float2( 0,0 );
				float2 UV32_g270 = float2( 0,0 );
				float W02_g270 = 0;
				float W12_g270 = 0;
				{
				{
				 UV2_g270 = UV2_g270 * TexelSize2_g270.zw - 0.5;
				    float2 f = frac( UV2_g270 );
				    UV2_g270 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g270.x - 0.5, UV2_g270.x + 1.5, UV2_g270.y - 0.5, UV2_g270.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g270.xyxy;
				    UV02_g270 = off.xz;
				    UV12_g270 = off.yz;
				    UV22_g270 = off.xw;
				    UV32_g270 = off.yw;
				    W02_g270 = s.x / ( s.x + s.y );
				 W12_g270 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g270 = lerp( tex2D( _LightingMaskMap, UV32_g270 ) , tex2D( _LightingMaskMap, UV22_g270 ) , W02_g270);
				float4 lerpResult45_g270 = lerp( tex2D( _LightingMaskMap, UV12_g270 ) , tex2D( _LightingMaskMap, UV02_g270 ) , W02_g270);
				float4 lerpResult44_g270 = lerp( lerpResult46_g270 , lerpResult45_g270 , W12_g270);
				float4 Output_2D131_g270 = lerpResult44_g270;
				float4 lightningMask14_g256 = ( saturate( ( ( projNormal10_g265.x * Output_2D131_g267 ) + ( projNormal10_g265.y * Output_2D131_g268 ) + ( projNormal10_g265.z * Output_2D131_g266 ) ) ) * saturate( ( ( projNormal10_g269.x * Output_2D131_g271 ) + ( projNormal10_g269.y * Output_2D131_g272 ) + ( projNormal10_g269.z * Output_2D131_g270 ) ) ) );
				float4 temp_cast_14 = (_LigntingMaskPow).xxxx;
				float4 lightningMaskSine39_g256 = saturate( pow( max( float4( 0,0,0,0 ) , ( _LightningSineMult * sine32_g256 * lightningMask14_g256 ) ) , temp_cast_14 ) );
				float3 temp_cast_15 = (3.0).xxx;
				float3 temp_output_4_0_g261 = pow( abs( packedInput.ase_normal ) , temp_cast_15 );
				float3 break6_g261 = temp_output_4_0_g261;
				float3 projNormal10_g261 = ( temp_output_4_0_g261 / ( break6_g261.x + break6_g261.y + break6_g261.z ) );
				float localBicubicPrepare2_g263 = ( 0.0 );
				float3 break26_g261 = packedInput.ase_texcoord8.xyz;
				float2 appendResult27_g261 = (float2(break26_g261.z , break26_g261.y));
				float3 nSign18_g261 = sign( packedInput.ase_normal );
				float3 break20_g261 = nSign18_g261;
				float2 appendResult21_g261 = (float2(break20_g261.x , 1.0));
				float temp_output_29_0_g261 = _LightingATiling;
				float mulTime45_g256 = _TimeParameters.x * _LightingAFrequency;
				float2 temp_cast_16 = (( floor( mulTime45_g256 ) * 1.0 )).xx;
				float2 temp_output_65_0_g261 = temp_cast_16;
				float2 temp_output_68_0_g261 = ( ( appendResult27_g261 * appendResult21_g261 * temp_output_29_0_g261 ) + temp_output_65_0_g261 );
				float2 Input_UV100_g263 = temp_output_68_0_g261;
				float2 UV2_g263 = Input_UV100_g263;
				float4 TexelSize2_g263 = _LightingMap_TexelSize;
				float2 UV02_g263 = float2( 0,0 );
				float2 UV12_g263 = float2( 0,0 );
				float2 UV22_g263 = float2( 0,0 );
				float2 UV32_g263 = float2( 0,0 );
				float W02_g263 = 0;
				float W12_g263 = 0;
				{
				{
				 UV2_g263 = UV2_g263 * TexelSize2_g263.zw - 0.5;
				    float2 f = frac( UV2_g263 );
				    UV2_g263 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g263.x - 0.5, UV2_g263.x + 1.5, UV2_g263.y - 0.5, UV2_g263.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g263.xyxy;
				    UV02_g263 = off.xz;
				    UV12_g263 = off.yz;
				    UV22_g263 = off.xw;
				    UV32_g263 = off.yw;
				    W02_g263 = s.x / ( s.x + s.y );
				 W12_g263 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g263 = lerp( tex2D( _LightingMap, UV32_g263 ) , tex2D( _LightingMap, UV22_g263 ) , W02_g263);
				float4 lerpResult45_g263 = lerp( tex2D( _LightingMap, UV12_g263 ) , tex2D( _LightingMap, UV02_g263 ) , W02_g263);
				float4 lerpResult44_g263 = lerp( lerpResult46_g263 , lerpResult45_g263 , W12_g263);
				float4 Output_2D131_g263 = lerpResult44_g263;
				float localBicubicPrepare2_g264 = ( 0.0 );
				float2 appendResult32_g261 = (float2(break26_g261.x , break26_g261.z));
				float2 appendResult22_g261 = (float2(break20_g261.y , 1.0));
				float2 temp_output_66_0_g261 = ( ( temp_output_29_0_g261 * appendResult32_g261 * appendResult22_g261 ) + temp_output_65_0_g261 );
				float2 Input_UV100_g264 = temp_output_66_0_g261;
				float2 UV2_g264 = Input_UV100_g264;
				float4 TexelSize2_g264 = _LightingMap_TexelSize;
				float2 UV02_g264 = float2( 0,0 );
				float2 UV12_g264 = float2( 0,0 );
				float2 UV22_g264 = float2( 0,0 );
				float2 UV32_g264 = float2( 0,0 );
				float W02_g264 = 0;
				float W12_g264 = 0;
				{
				{
				 UV2_g264 = UV2_g264 * TexelSize2_g264.zw - 0.5;
				    float2 f = frac( UV2_g264 );
				    UV2_g264 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g264.x - 0.5, UV2_g264.x + 1.5, UV2_g264.y - 0.5, UV2_g264.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g264.xyxy;
				    UV02_g264 = off.xz;
				    UV12_g264 = off.yz;
				    UV22_g264 = off.xw;
				    UV32_g264 = off.yw;
				    W02_g264 = s.x / ( s.x + s.y );
				 W12_g264 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g264 = lerp( tex2D( _LightingMap, UV32_g264 ) , tex2D( _LightingMap, UV22_g264 ) , W02_g264);
				float4 lerpResult45_g264 = lerp( tex2D( _LightingMap, UV12_g264 ) , tex2D( _LightingMap, UV02_g264 ) , W02_g264);
				float4 lerpResult44_g264 = lerp( lerpResult46_g264 , lerpResult45_g264 , W12_g264);
				float4 Output_2D131_g264 = lerpResult44_g264;
				float localBicubicPrepare2_g262 = ( 0.0 );
				float2 appendResult34_g261 = (float2(break26_g261.x , break26_g261.y));
				float2 appendResult25_g261 = (float2(-break20_g261.z , 1.0));
				float2 temp_output_67_0_g261 = ( temp_output_65_0_g261 + ( temp_output_29_0_g261 * appendResult34_g261 * appendResult25_g261 ) );
				float2 Input_UV100_g262 = temp_output_67_0_g261;
				float2 UV2_g262 = Input_UV100_g262;
				float4 TexelSize2_g262 = _LightingMap_TexelSize;
				float2 UV02_g262 = float2( 0,0 );
				float2 UV12_g262 = float2( 0,0 );
				float2 UV22_g262 = float2( 0,0 );
				float2 UV32_g262 = float2( 0,0 );
				float W02_g262 = 0;
				float W12_g262 = 0;
				{
				{
				 UV2_g262 = UV2_g262 * TexelSize2_g262.zw - 0.5;
				    float2 f = frac( UV2_g262 );
				    UV2_g262 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g262.x - 0.5, UV2_g262.x + 1.5, UV2_g262.y - 0.5, UV2_g262.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g262.xyxy;
				    UV02_g262 = off.xz;
				    UV12_g262 = off.yz;
				    UV22_g262 = off.xw;
				    UV32_g262 = off.yw;
				    W02_g262 = s.x / ( s.x + s.y );
				 W12_g262 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g262 = lerp( tex2D( _LightingMap, UV32_g262 ) , tex2D( _LightingMap, UV22_g262 ) , W02_g262);
				float4 lerpResult45_g262 = lerp( tex2D( _LightingMap, UV12_g262 ) , tex2D( _LightingMap, UV02_g262 ) , W02_g262);
				float4 lerpResult44_g262 = lerp( lerpResult46_g262 , lerpResult45_g262 , W12_g262);
				float4 Output_2D131_g262 = lerpResult44_g262;
				float3 temp_cast_17 = (3.0).xxx;
				float3 temp_output_4_0_g257 = pow( abs( packedInput.ase_normal ) , temp_cast_17 );
				float3 break6_g257 = temp_output_4_0_g257;
				float3 projNormal10_g257 = ( temp_output_4_0_g257 / ( break6_g257.x + break6_g257.y + break6_g257.z ) );
				float localBicubicPrepare2_g259 = ( 0.0 );
				float3 break26_g257 = packedInput.ase_texcoord8.xyz;
				float2 appendResult27_g257 = (float2(break26_g257.z , break26_g257.y));
				float3 nSign18_g257 = sign( packedInput.ase_normal );
				float3 break20_g257 = nSign18_g257;
				float2 appendResult21_g257 = (float2(break20_g257.x , 1.0));
				float temp_output_29_0_g257 = _LightingBTiling;
				float mulTime46_g256 = _TimeParameters.x * _LightingBFrequency;
				float2 temp_cast_18 = (( 1.0 * floor( mulTime46_g256 ) )).xx;
				float2 temp_output_65_0_g257 = temp_cast_18;
				float2 temp_output_68_0_g257 = ( ( appendResult27_g257 * appendResult21_g257 * temp_output_29_0_g257 ) + temp_output_65_0_g257 );
				float2 Input_UV100_g259 = temp_output_68_0_g257;
				float2 UV2_g259 = Input_UV100_g259;
				float4 TexelSize2_g259 = _LightingMap_TexelSize;
				float2 UV02_g259 = float2( 0,0 );
				float2 UV12_g259 = float2( 0,0 );
				float2 UV22_g259 = float2( 0,0 );
				float2 UV32_g259 = float2( 0,0 );
				float W02_g259 = 0;
				float W12_g259 = 0;
				{
				{
				 UV2_g259 = UV2_g259 * TexelSize2_g259.zw - 0.5;
				    float2 f = frac( UV2_g259 );
				    UV2_g259 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g259.x - 0.5, UV2_g259.x + 1.5, UV2_g259.y - 0.5, UV2_g259.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g259.xyxy;
				    UV02_g259 = off.xz;
				    UV12_g259 = off.yz;
				    UV22_g259 = off.xw;
				    UV32_g259 = off.yw;
				    W02_g259 = s.x / ( s.x + s.y );
				 W12_g259 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g259 = lerp( tex2D( _LightingMap, UV32_g259 ) , tex2D( _LightingMap, UV22_g259 ) , W02_g259);
				float4 lerpResult45_g259 = lerp( tex2D( _LightingMap, UV12_g259 ) , tex2D( _LightingMap, UV02_g259 ) , W02_g259);
				float4 lerpResult44_g259 = lerp( lerpResult46_g259 , lerpResult45_g259 , W12_g259);
				float4 Output_2D131_g259 = lerpResult44_g259;
				float localBicubicPrepare2_g260 = ( 0.0 );
				float2 appendResult32_g257 = (float2(break26_g257.x , break26_g257.z));
				float2 appendResult22_g257 = (float2(break20_g257.y , 1.0));
				float2 temp_output_66_0_g257 = ( ( temp_output_29_0_g257 * appendResult32_g257 * appendResult22_g257 ) + temp_output_65_0_g257 );
				float2 Input_UV100_g260 = temp_output_66_0_g257;
				float2 UV2_g260 = Input_UV100_g260;
				float4 TexelSize2_g260 = _LightingMap_TexelSize;
				float2 UV02_g260 = float2( 0,0 );
				float2 UV12_g260 = float2( 0,0 );
				float2 UV22_g260 = float2( 0,0 );
				float2 UV32_g260 = float2( 0,0 );
				float W02_g260 = 0;
				float W12_g260 = 0;
				{
				{
				 UV2_g260 = UV2_g260 * TexelSize2_g260.zw - 0.5;
				    float2 f = frac( UV2_g260 );
				    UV2_g260 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g260.x - 0.5, UV2_g260.x + 1.5, UV2_g260.y - 0.5, UV2_g260.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g260.xyxy;
				    UV02_g260 = off.xz;
				    UV12_g260 = off.yz;
				    UV22_g260 = off.xw;
				    UV32_g260 = off.yw;
				    W02_g260 = s.x / ( s.x + s.y );
				 W12_g260 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g260 = lerp( tex2D( _LightingMap, UV32_g260 ) , tex2D( _LightingMap, UV22_g260 ) , W02_g260);
				float4 lerpResult45_g260 = lerp( tex2D( _LightingMap, UV12_g260 ) , tex2D( _LightingMap, UV02_g260 ) , W02_g260);
				float4 lerpResult44_g260 = lerp( lerpResult46_g260 , lerpResult45_g260 , W12_g260);
				float4 Output_2D131_g260 = lerpResult44_g260;
				float localBicubicPrepare2_g258 = ( 0.0 );
				float2 appendResult34_g257 = (float2(break26_g257.x , break26_g257.y));
				float2 appendResult25_g257 = (float2(-break20_g257.z , 1.0));
				float2 temp_output_67_0_g257 = ( temp_output_65_0_g257 + ( temp_output_29_0_g257 * appendResult34_g257 * appendResult25_g257 ) );
				float2 Input_UV100_g258 = temp_output_67_0_g257;
				float2 UV2_g258 = Input_UV100_g258;
				float4 TexelSize2_g258 = _LightingMap_TexelSize;
				float2 UV02_g258 = float2( 0,0 );
				float2 UV12_g258 = float2( 0,0 );
				float2 UV22_g258 = float2( 0,0 );
				float2 UV32_g258 = float2( 0,0 );
				float W02_g258 = 0;
				float W12_g258 = 0;
				{
				{
				 UV2_g258 = UV2_g258 * TexelSize2_g258.zw - 0.5;
				    float2 f = frac( UV2_g258 );
				    UV2_g258 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g258.x - 0.5, UV2_g258.x + 1.5, UV2_g258.y - 0.5, UV2_g258.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g258.xyxy;
				    UV02_g258 = off.xz;
				    UV12_g258 = off.yz;
				    UV22_g258 = off.xw;
				    UV32_g258 = off.yw;
				    W02_g258 = s.x / ( s.x + s.y );
				 W12_g258 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g258 = lerp( tex2D( _LightingMap, UV32_g258 ) , tex2D( _LightingMap, UV22_g258 ) , W02_g258);
				float4 lerpResult45_g258 = lerp( tex2D( _LightingMap, UV12_g258 ) , tex2D( _LightingMap, UV02_g258 ) , W02_g258);
				float4 lerpResult44_g258 = lerp( lerpResult46_g258 , lerpResult45_g258 , W12_g258);
				float4 Output_2D131_g258 = lerpResult44_g258;
				float lightning50_g256 = ( saturate( ( ( projNormal10_g261.x * Output_2D131_g263 ) + ( projNormal10_g261.y * Output_2D131_g264 ) + ( projNormal10_g261.z * Output_2D131_g262 ) ) ) * saturate( ( ( projNormal10_g257.x * Output_2D131_g259 ) + ( projNormal10_g257.y * Output_2D131_g260 ) + ( projNormal10_g257.z * Output_2D131_g258 ) ) ) * _LightningBoost ).r;
				
				surfaceDescription.BaseColor = ( saturate( ( ( ( tex2D( _ScatterMap, ( ( _ScatterCenterShift + appendResult10_g255 ) * _ScatterStretch ) ) * _ScatterColor ) * _ScatterBoost ) + _ScatterIndirect ) ) * ( float4( ( ( saturate( pow( max( 0.0 , saturate( ( 1.0 - dotResult14_g253 ) ) ) , _FresnelPower ) ) * _FrenselMult ) * (_FresnelColor).rgb ) , 0.0 ) + saturate( lerpResult5 ) ) ).rgb;
				surfaceDescription.Normal = normalUnpacked24;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = 0;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = spec90.rgb;
				#endif

				surfaceDescription.Emission = max( temp_cast_9 , ( lightningMaskSine39_g256 * lightning50_g256 * _LightningColor ) ).rgb;
				surfaceDescription.Smoothness = _Smoothness;
				surfaceDescription.Occlusion = 1;
				surfaceDescription.Alpha = 1;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceDescription.SpecularAAScreenSpaceVariance = 0;
				surfaceDescription.SpecularAAThreshold = 0;
				#endif

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceDescription.SpecularOcclusion = 0;
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceDescription.Thickness = 1;
				#endif

				#ifdef _HAS_REFRACTION
				surfaceDescription.RefractionIndex = 1;
				surfaceDescription.RefractionColor = float3( 1, 1, 1 );
				surfaceDescription.RefractionDistance = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceDescription.SubsurfaceMask = 1;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceDescription.TransmissionMask = 1;
				surfaceDescription.DiffusionProfile = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceDescription.Anisotropy = 1;
				surfaceDescription.Tangent = float3( 1, 0, 0 );
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceDescription.IridescenceMask = 0;
				surfaceDescription.IridescenceThickness = 0;
				#endif

				#ifdef ASE_BAKEDGI
				surfaceDescription.BakedGI = 0;
				#endif
				#ifdef ASE_BAKEDBACKGI
				surfaceDescription.BakedBackGI = 0;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				#ifdef UNITY_VIRTUAL_TEXTURING
				surfaceDescription.VTPackedFeedback = float4(1.0f,1.0f,1.0f,1.0f);
				#endif

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription,input, V, posInput, surfaceData, builtinData);

				BSDFData bsdfData = ConvertSurfaceDataToBSDFData(input.positionSS.xy, surfaceData);

				PreLightData preLightData = GetPreLightData(V, posInput, bsdfData);

				outColor = float4(0.0, 0.0, 0.0, 0.0);

            #ifdef DEBUG_DISPLAY
            #ifdef OUTPUT_SPLIT_LIGHTING
				outDiffuseLighting = float4(0, 0, 0, 1);
				ENCODE_INTO_SSSBUFFER(surfaceData, posInput.positionSS, outSSSBuffer);
                #endif

				bool viewMaterial = false;
				int bufferSize = _DebugViewMaterialArray[0].x;
				if (bufferSize != 0)
				{
					bool needLinearToSRGB = false;
					float3 result = float3(1.0, 0.0, 1.0);

					for (int index = 1; index <= bufferSize; index++)
					{
						int indexMaterialProperty = _DebugViewMaterialArray[index].x;

						if (indexMaterialProperty != 0)
						{
							viewMaterial = true;

							GetPropertiesDataDebug(indexMaterialProperty, result, needLinearToSRGB);
							GetVaryingsDataDebug(indexMaterialProperty, input, result, needLinearToSRGB);
							GetBuiltinDataDebug(indexMaterialProperty, builtinData, posInput, result, needLinearToSRGB);
							GetSurfaceDataDebug(indexMaterialProperty, surfaceData, result, needLinearToSRGB);
							GetBSDFDataDebug(indexMaterialProperty, bsdfData, result, needLinearToSRGB);
						}
					}

					if (!needLinearToSRGB && _DebugAOVOutput == 0)
						result = SRGBToLinear(max(0, result));

					outColor = float4(result, 1.0);
				}

				if (!viewMaterial)
				{
					if (_DebugFullScreenMode == FULLSCREENDEBUGMODE_VALIDATE_DIFFUSE_COLOR || _DebugFullScreenMode == FULLSCREENDEBUGMODE_VALIDATE_SPECULAR_COLOR)
					{
						float3 result = float3(0.0, 0.0, 0.0);
						GetPBRValidatorDebug(surfaceData, result);
						outColor = float4(result, 1.0f);
					}
					else if (_DebugFullScreenMode == FULLSCREENDEBUGMODE_TRANSPARENCY_OVERDRAW)
					{
						float4 result = _DebugTransparencyOverdrawWeight * float4(TRANSPARENCY_OVERDRAW_COST, TRANSPARENCY_OVERDRAW_COST, TRANSPARENCY_OVERDRAW_COST, TRANSPARENCY_OVERDRAW_A);
						outColor = result;
					}
					else
                #endif
					{
                #ifdef _SURFACE_TYPE_TRANSPARENT
						uint featureFlags = LIGHT_FEATURE_MASK_FLAGS_TRANSPARENT;
                #else
						uint featureFlags = LIGHT_FEATURE_MASK_FLAGS_OPAQUE;
                #endif
						LightLoopOutput lightLoopOutput;
						LightLoop(V, posInput, preLightData, bsdfData, builtinData, featureFlags, lightLoopOutput);

						// Alias
						float3 diffuseLighting = lightLoopOutput.diffuseLighting;
						float3 specularLighting = lightLoopOutput.specularLighting;

						diffuseLighting *= GetCurrentExposureMultiplier();
						specularLighting *= GetCurrentExposureMultiplier();

                #ifdef OUTPUT_SPLIT_LIGHTING
						if (_EnableSubsurfaceScattering != 0 && ShouldOutputSplitLighting(bsdfData))
						{
							outColor = float4(specularLighting, 1.0);
							outDiffuseLighting = float4(TagLightingForSSS(diffuseLighting), 1.0);
						}
						else
						{
							outColor = float4(diffuseLighting + specularLighting, 1.0);
							outDiffuseLighting = float4(0, 0, 0, 1);
						}
						ENCODE_INTO_SSSBUFFER(surfaceData, posInput.positionSS, outSSSBuffer);
                #else
						outColor = ApplyBlendMode(diffuseLighting, specularLighting, builtinData.opacity);
						outColor = EvaluateAtmosphericScattering(posInput, V, outColor);
                #endif

				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
						float4 VPASSpositionCS = float4(packedInput.vpassPositionCS.xy, 0.0, packedInput.vpassPositionCS.z);
						float4 VPASSpreviousPositionCS = float4(packedInput.vpassPreviousPositionCS.xy, 0.0, packedInput.vpassPreviousPositionCS.z);

						bool forceNoMotion = any(unity_MotionVectorsParams.yw == 0.0);
						if (!forceNoMotion)
						{
							float2 motionVec = CalculateMotionVector(VPASSpositionCS, VPASSpreviousPositionCS);
							EncodeMotionVector(motionVec * 0.5, outMotionVec);
							outMotionVec.zw = 1.0;
						}
				#endif
				}

				#ifdef DEBUG_DISPLAY
				}
				#endif

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif

				#ifdef UNITY_VIRTUAL_TEXTURING
					outVTFeedback = builtinData.vtPackedFeedback;
				#endif

                #ifdef UNITY_VIRTUAL_TEXTURING
				    float vtAlphaValue = builtinData.opacity;
                    #if defined(HAS_REFRACTION) && HAS_REFRACTION
					vtAlphaValue = 1.0f - bsdfData.transmittanceMask;
                #endif
				outVTFeedback = PackVTFeedbackWithAlpha(builtinData.vtPackedFeedback, input.positionSS.xy, vtAlphaValue);
                #endif
			}
			ENDHLSL
		}

		
        Pass
        {

			
            Name "ScenePickingPass"
            Tags { "LightMode"="Picking" }

            Cull [_CullMode]

            HLSLPROGRAM

			#define _SPECULAR_OCCLUSION_FROM_AO 1
			#pragma multi_compile_instancing
			#pragma instancing_options renderinglayer
			#define _MATERIAL_FEATURE_SPECULAR_COLOR 1
			#define _ENERGY_CONSERVING_SPECULAR 1
			#define SUPPORT_BLENDMODE_PRESERVE_SPECULAR_LIGHTING
			#define ASE_SRP_VERSION 140004


			#pragma editor_sync_compilation

			#pragma vertex Vert
			#pragma fragment Frag

            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl"
        	#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			#define ATTRIBUTES_NEED_NORMAL
			#define ATTRIBUTES_NEED_TANGENT
			#define VARYINGS_NEED_TANGENT_TO_WORLD

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"

			#define SHADERPASS SHADERPASS_DEPTH_ONLY
			#define SCENEPICKINGPASS 1

			#ifndef SHADER_UNLIT
			#if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
		    #define VARYINGS_NEED_CULLFACE
			#endif
			#endif

			#if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
			#if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
			#define WRITE_NORMAL_BUFFER
			#endif
			#endif

		    #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
		    #endif

			#if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define _DEFERRED_CAPABLE_MATERIAL
			#endif

			#if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
			#define _WRITE_TRANSPARENT_MOTION_VECTOR
			#endif

			float4 _SelectionID;
            CBUFFER_START( UnityPerMaterial )
			float4 _DistortionUVMap_TexelSize;
			float4 _LightningColor;
			float4 _SpecularColor;
			float4 _TintHigh;
			float4 _TintLow;
			float4 _FresnelColor;
			float4 _LightingMaskMap_TexelSize;
			float4 _NormalMap_TexelSize;
			float4 _DistortionMap_TexelSize;
			float4 _LightingMap_TexelSize;
			float4 _ScatterColor;
			float _LightingATiling;
			float _LightingMaskBUVSpeed;
			float _DetailBoost;
			float _LightingAFrequency;
			float _LightingMaskAUVSpeed;
			float _LightingBTiling;
			float _LightingBFrequency;
			float _LightingMaskATiling;
			float _LightningSineMult;
			float _Specular;
			float _LightningBoost;
			float _LigntingMaskPow;
			float _LightingMaskBTiling;
			float _ScatterCenterShift;
			float _DistortionFactor;
			float _ScatterStretch;
			float _ScatterBoost;
			float _ScatterIndirect;
			float _NormalTiling;
			float _NormalSpeed;
			float _NormalUVTiling;
			float _NormalUVSpeed;
			float _NormlalDistortionFactor;
			float _NormalScale;
			float _FresnelPower;
			float _FrenselMult;
			float _DistortionTiling;
			float _DistortionSpeed;
			float _DistortionUVTiling;
			float _DistortionUVSpeed;
			float _DetailPow;
			float _Smoothness;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
            #ifdef SUPPORT_BLENDMODE_PRESERVE_SPECULAR_LIGHTING
			float _EnableBlendModePreserveSpecularLighting;
            #endif
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef ASE_TESSELLATION
			float _TessPhongStrength;
			float _TessValue;
			float _TessMin;
			float _TessMax;
			float _TessEdgeLength;
			float _TessMaxDisp;
			#endif
			CBUFFER_END

			

            #ifdef DEBUG_DISPLAY
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
            #endif

            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/PickingSpaceTransforms.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Unlit/Unlit.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			

			struct VertexInput
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 positionCS : SV_POSITION;
				float3 normalWS : TEXCOORD0;
				float4 tangentWS : TEXCOORD1;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			
            struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
			};
			struct SurfaceDescriptionInputs
			{
				float3 ObjectSpaceNormal;
				float3 WorldSpaceNormal;
				float3 TangentSpaceNormal;
				float3 ObjectSpaceViewDirection;
				float3 WorldSpaceViewDirection;
				float3 ObjectSpacePosition;
			};


            void GetSurfaceAndBuiltinData(SurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData RAY_TRACING_OPTIONAL_PARAMETERS)
            {

                #if !defined(SHADER_STAGE_RAY_TRACING) && !defined(_TESSELLATION_DISPLACEMENT)
                #ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
                #endif
                #endif

                #ifndef SHADER_UNLIT
                #ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
                #else
				float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
                #endif
				ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants);
                #endif

                #ifdef _ALPHATEST_ON
				float alphaCutoff = surfaceDescription.AlphaClipThreshold;
                #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
                #elif SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_POSTPASS
				alphaCutoff = surfaceDescription.AlphaClipThresholdDepthPostpass;
                #elif (SHADERPASS == SHADERPASS_SHADOWS) || (SHADERPASS == SHADERPASS_RAYTRACING_VISIBILITY)
                #endif
				GENERIC_ALPHA_TEST(surfaceDescription.Alpha, alphaCutoff);
                #endif

                #if !defined(SHADER_STAGE_RAY_TRACING) && _DEPTHOFFSET_ON
				ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
                #endif

                #ifdef FRAG_INPUTS_USE_TEXCOORD1
				float4 lightmapTexCoord1 = fragInputs.texCoord1;
                #else
				float4 lightmapTexCoord1 = float4(0, 0, 0, 0);
                #endif

                #ifdef FRAG_INPUTS_USE_TEXCOORD2
				float4 lightmapTexCoord2 = fragInputs.texCoord2;
                #else
				float4 lightmapTexCoord2 = float4(0, 0, 0, 0);
                #endif

				//InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], lightmapTexCoord1, lightmapTexCoord2, builtinData);

                //#else
                //BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData);

                ZERO_INITIALIZE(SurfaceData, surfaceData);

                ZERO_BUILTIN_INITIALIZE(builtinData);
                builtinData.opacity = surfaceDescription.Alpha;

                #if defined(DEBUG_DISPLAY)
				builtinData.renderingLayers = GetMeshRenderingLightLayer();
                #endif

                #ifdef _ALPHATEST_ON
				builtinData.alphaClipTreshold = alphaCutoff;
                #endif

                #ifdef UNITY_VIRTUAL_TEXTURING
                #endif

                #if _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
                #endif

                #if (SHADERPASS == SHADERPASS_DISTORTION)
				builtinData.distortion = surfaceDescription.Distortion;
				builtinData.distortionBlur = surfaceDescription.DistortionBlur;
                #endif

                #ifndef SHADER_UNLIT
				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
                #else
				ApplyDebugToBuiltinData(builtinData);
                #endif

				RAY_TRACING_OPTIONAL_ALPHA_TEST_PASS

            }


			VertexOutput VertexFunction(VertexInput inputMesh  )
			{

				VertexOutput o;
				ZERO_INITIALIZE(VertexOutput, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, o );

				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue =   defaultVertexValue ;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS =  inputMesh.normalOS ;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normalOS);
				float4 tangentWS = float4(TransformObjectToWorldDir(inputMesh.tangentOS.xyz), inputMesh.tangentOS.w);

				o.positionCS = TransformWorldToHClip(positionRWS);
				o.normalWS.xyz =  normalWS;
				o.tangentWS.xyzw =  tangentWS;

				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput Vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			void Frag(	VertexOutput packedInput
						, out float4 outColor : SV_Target0
						
					)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(packedInput);
				UNITY_SETUP_INSTANCE_ID(packedInput);

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				input.tangentToWorld = BuildTangentToWorld(packedInput.tangentWS.xyzw, packedInput.normalWS.xyz);

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				SurfaceDescription surfaceDescription = (SurfaceDescription)0;
				
				surfaceDescription.Alpha = 1;
				surfaceDescription.AlphaClipThreshold =  _AlphaCutoff;


				float3 V = float3(1.0, 1.0, 1.0);

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription, input, V, posInput, surfaceData, builtinData);
				outColor = _SelectionID;
			}

            ENDHLSL
		}

        Pass
        {

            Name "FullScreenDebug"
            Tags { "LightMode" = "FullScreenDebug" }

            Cull [_CullMode]
			ZTest LEqual
			ZWrite Off

            HLSLPROGRAM

			/*ase_pragma_before*/

			#pragma vertex Vert
			#pragma fragment Frag


			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GeometricTools.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Tessellation.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			#define ATTRIBUTES_NEED_NORMAL
			#define ATTRIBUTES_NEED_TANGENT

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"

			#ifndef SHADER_UNLIT
			#if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
			#define VARYINGS_NEED_CULLFACE
			#endif
			#endif

		    #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
		    #define OUTPUT_SPLIT_LIGHTING
		    #endif

		    #if !( (SHADERPASS == SHADERPASS_FORWARD) || (SHADERPASS == SHADERPASS_LIGHT_TRANSPORT) \
               || (SHADERPASS == SHADERPASS_RAYTRACING_INDIRECT) || (SHADERPASS == SHADERPASS == SHADERPASS_RAYTRACING_INDIRECT)\
               || (SHADERPASS == SHADERPASS_PATH_TRACING) || (SHADERPASS == SHADERPASS_RAYTRACING_SUB_SURFACE) \
               || (SHADERPASS == SHADERPASS_RAYTRACING_GBUFFER) )

		    #define DISABLE_MODIFY_BAKED_DIFFUSE_LIGHTING
		    #endif

			#if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
			#if !defined(_DISABLE_SSR_TRANSPARENT) && !defined(SHADER_UNLIT)
				#define WRITE_NORMAL_BUFFER
			#endif
			#endif

			#ifndef DEBUG_DISPLAY
				#if !defined(_SURFACE_TYPE_TRANSPARENT)
					#if SHADERPASS == SHADERPASS_FORWARD
					#define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
					#elif SHADERPASS == SHADERPASS_GBUFFER
					#define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
					#endif
				#endif
			#endif

			#if defined(SHADER_LIT) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define _DEFERRED_CAPABLE_MATERIAL
			#endif

			#if defined(_TRANSPARENT_WRITES_MOTION_VEC) && defined(_SURFACE_TYPE_TRANSPARENT)
			#define _WRITE_TRANSPARENT_MOTION_VECTOR
			#endif

            #ifdef DEBUG_DISPLAY
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
            #endif

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

            struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				#if UNITY_ANY_INSTANCING_ENABLED
					uint instanceID : INSTANCEID_SEMANTIC;
				#endif
			};

			struct VaryingsMeshToPS
			{
				SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				#if UNITY_ANY_INSTANCING_ENABLED
					uint instanceID : CUSTOM_INSTANCE_ID;
				#endif
			};

			struct VertexDescriptionInputs
			{
				 float3 ObjectSpaceNormal;
				 float3 ObjectSpaceTangent;
				 float3 ObjectSpacePosition;
			};

			struct SurfaceDescriptionInputs
			{
				 float3 TangentSpaceNormal;
			};

			struct PackedVaryingsMeshToPS
			{
				SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				#if UNITY_ANY_INSTANCING_ENABLED
					uint instanceID : CUSTOM_INSTANCE_ID;
				#endif
			};

            PackedVaryingsMeshToPS PackVaryingsMeshToPS (VaryingsMeshToPS input)
			{
				PackedVaryingsMeshToPS output;
				ZERO_INITIALIZE(PackedVaryingsMeshToPS, output);
				output.positionCS = input.positionCS;
				#if UNITY_ANY_INSTANCING_ENABLED
				output.instanceID = input.instanceID;
				#endif
				return output;
			}

			VaryingsMeshToPS UnpackVaryingsMeshToPS (PackedVaryingsMeshToPS input)
			{
				VaryingsMeshToPS output;
				output.positionCS = input.positionCS;
				#if UNITY_ANY_INSTANCING_ENABLED
				output.instanceID = input.instanceID;
				#endif
				return output;
			}

            struct VertexDescription
			{
				float3 Position;
				float3 Normal;
				float3 Tangent;
			};

			VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
			{
				VertexDescription description = (VertexDescription)0;
				description.Position = IN.ObjectSpacePosition;
				description.Normal = IN.ObjectSpaceNormal;
				description.Tangent = IN.ObjectSpaceTangent;
				return description;
			}

            struct SurfaceDescription
			{
				float3 BaseColor;
				float3 Emission;
				float Alpha;
				float3 BentNormal;
				float Smoothness;
				float Occlusion;
				float3 NormalTS;
				float Metallic;
			};

			SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
			{
				SurfaceDescription surface = (SurfaceDescription)0;
				surface.BaseColor = IsGammaSpace() ? float3(0.5, 0.5, 0.5) : SRGBToLinear(float3(0.5, 0.5, 0.5));
				surface.Emission = float3(0, 0, 0);
				surface.Alpha = 1;
				surface.BentNormal = IN.TangentSpaceNormal;
				surface.Smoothness = 0.5;
				surface.Occlusion = 1;
				surface.NormalTS = IN.TangentSpaceNormal;
				surface.Metallic = 0;
				return surface;
			}

			VertexDescriptionInputs AttributesMeshToVertexDescriptionInputs(AttributesMesh input)
			{
				VertexDescriptionInputs output;
				ZERO_INITIALIZE(VertexDescriptionInputs, output);

				output.ObjectSpaceNormal =                          input.normalOS;
				output.ObjectSpaceTangent =                         input.tangentOS.xyz;
				output.ObjectSpacePosition =                        input.positionOS;

				return output;
			}

			AttributesMesh ApplyMeshModification(AttributesMesh input, float3 timeParameters  )
			{
				VertexDescriptionInputs vertexDescriptionInputs = AttributesMeshToVertexDescriptionInputs(input);

				VertexDescription vertexDescription = VertexDescriptionFunction(vertexDescriptionInputs);

				input.positionOS = vertexDescription.Position;
				input.normalOS = vertexDescription.Normal;
				input.tangentOS.xyz = vertexDescription.Tangent;
				return input;
			}

			FragInputs BuildFragInputs(VaryingsMeshToPS input)
			{
				FragInputs output;
				ZERO_INITIALIZE(FragInputs, output);

				output.tangentToWorld = k_identity3x3;
				output.positionSS = input.positionCS;

				return output;
			}


			FragInputs UnpackVaryingsMeshToFragInputs(PackedVaryingsMeshToPS input)
			{
				UNITY_SETUP_INSTANCE_ID(input);
				VaryingsMeshToPS unpacked = UnpackVaryingsMeshToPS(input);
				return BuildFragInputs(unpacked);
			}


            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
			{
				SurfaceDescriptionInputs output;
				ZERO_INITIALIZE(SurfaceDescriptionInputs, output);

				#if defined(SHADER_STAGE_RAY_TRACING)
				#else
				#endif
				output.TangentSpaceNormal =                         float3(0.0f, 0.0f, 1.0f);
				return output;
			}

			void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				surfaceData.baseColor =                 surfaceDescription.BaseColor;
				surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
				surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
				surfaceData.metallic =                  surfaceDescription.Metallic;

				#if defined(_REFRACTION_PLANE) || defined(_REFRACTION_SPHERE) || defined(_REFRACTION_THIN)
					if (_EnableSSRefraction)
					{

						surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
						surfaceDescription.Alpha = 1.0;
					}
					else
					{
						surfaceData.ior = 1.0;
						surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
						surfaceData.atDistance = 1.0;
						surfaceData.transmittanceMask = 0.0;
						surfaceDescription.Alpha = 1.0;
					}
				#else
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
				#endif


				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
                #ifdef _MATERIAL_FEATURE_ANISOTROPY
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
					surfaceData.normalWS = float3(0, 1, 0);
                #endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif
				#ifdef _MATERIAL_FEATURE_CLEAR_COAT
					surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
					surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
				#endif
				#ifdef _DOUBLESIDED_ON
					float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
					float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
				#endif


				GetNormalWS(fragInputs, surfaceDescription.NormalTS, surfaceData.normalWS, doubleSidedConstants);

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];

				surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);


				#if HAVE_DECALS
					if (_EnableDecals)
					{
						DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs, surfaceDescription.Alpha);
						ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
					}
				#endif

				bentNormalWS = surfaceData.normalWS;

				surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);

				#ifdef DEBUG_DISPLAY
					if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
					{

						surfaceData.metallic = 0;
					}

					ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif

                #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
                #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
                #endif
			}

            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData RAY_TRACING_OPTIONAL_PARAMETERS)
            {

                #if !defined(SHADER_STAGE_RAY_TRACING) && !defined(_TESSELLATION_DISPLACEMENT)
                #ifdef LOD_FADE_CROSSFADE
                LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
                #endif
                #endif

                #ifndef SHADER_UNLIT
                #ifdef _DOUBLESIDED_ON
                    float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
                #else
                    float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
                #endif

                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants);
                #endif

                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);

                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);

                #ifdef _ALPHATEST_ON
				float alphaCutoff = surfaceDescription.AlphaClipThreshold;
                #if SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_PREPASS
                #elif SHADERPASS == SHADERPASS_TRANSPARENT_DEPTH_POSTPASS
				alphaCutoff = surfaceDescription.AlphaClipThresholdDepthPostpass;
                #elif (SHADERPASS == SHADERPASS_SHADOWS) || (SHADERPASS == SHADERPASS_RAYTRACING_VISIBILITY)
                #endif
				GENERIC_ALPHA_TEST(surfaceDescription.Alpha, alphaCutoff);
                #endif

                #if !defined(SHADER_STAGE_RAY_TRACING) && _DEPTHOFFSET_ON
                ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
                #endif

                #ifndef SHADER_UNLIT
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);

                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], fragInputs.texCoord1, fragInputs.texCoord2, builtinData);

                #else
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData);

                ZERO_BUILTIN_INITIALIZE(builtinData);
                builtinData.opacity = surfaceDescription.Alpha;

                #if defined(DEBUG_DISPLAY)
                    builtinData.renderingLayers = GetMeshRenderingLightLayer();
                #endif

                #endif

                #ifdef _ALPHATEST_ON

                    builtinData.alphaClipTreshold = alphaCutoff;
                #endif


                builtinData.emissiveColor = surfaceDescription.Emission;

                #if _DEPTHOFFSET_ON
                builtinData.depthOffset = surfaceDescription.DepthOffset;
                #endif


                #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
                #endif

                #ifndef SHADER_UNLIT

                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
                #else
                ApplyDebugToBuiltinData(builtinData);
                #endif

            }

			#define DEBUG_DISPLAY
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/FullScreenDebug.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/VertMesh.hlsl"

			PackedVaryingsType Vert(AttributesMesh inputMesh)
			{
				VaryingsType varyingsType;
				varyingsType.vmesh = VertMesh(inputMesh);
				return PackVaryingsType(varyingsType);
			}

			#if !defined(_DEPTHOFFSET_ON)
			[earlydepthstencil]
			#endif
			void Frag(PackedVaryingsToPS packedInput)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(packedInput);
				FragInputs input = UnpackVaryingsToFragInputs(packedInput);

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS.xyz);

			#ifdef PLATFORM_SUPPORTS_PRIMITIVE_ID_IN_PIXEL_SHADER
				if (_DebugFullScreenMode == FULLSCREENDEBUGMODE_QUAD_OVERDRAW)
				{
					IncrementQuadOverdrawCounter(posInput.positionSS.xy, input.primitiveID);
				}
			#endif
			}
            ENDHLSL
        }
		
	}
	
	CustomEditor "Rendering.HighDefinition.LightingShaderGraphGUI"
	
	Fallback Off
}
/*ASEBEGIN
Version=19103
Node;AmplifyShaderEditor.FunctionNode;78;-1998.366,299.4671;Inherit;False;TriplanarDoubleUVDist;8;;173;9e960dc58a88b2d4496ab2f61061459e;0;0;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;79;-1856.686,690.6788;Inherit;False;TriplanarNormalUVDist;0;;244;1a5fcd4739bcd5240a12b19949e4bb06;0;0;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;84;-1731.85,251.8977;Inherit;False;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.PowerNode;6;-1599.668,343.739;Inherit;False;False;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;10;-1656.668,544.739;Float;False;Property;_DetailBoost;Detail Boost;19;0;Create;True;0;0;0;False;0;False;0;0.71;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;7;-1862.668,431.739;Float;False;Property;_DetailPow;Detail Pow;18;0;Create;True;0;0;0;False;0;False;0;0.36;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;90;1616.954,359.1808;Inherit;False;spec;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;4;-797.436,41.00867;Float;False;Property;_TintHigh;Tint High;16;0;Create;True;0;0;0;False;0;False;0,0,0,0;0.595588,0.8995942,1,0;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.BreakToComponentsNode;28;-832.4755,227.1503;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SaturateNode;9;-1225.668,360.739;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;3;-792.2358,-134.4913;Float;False;Property;_TintLow;Tint Low;17;0;Create;True;0;0;0;False;0;False;0,0,0,0;0.008001738,0.06445519,0.2720587,0;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;5;-440.6682,89.73895;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;16;-453.8198,203.46;Float;False;Property;_SpecularColor;Specular Color;20;0;Create;True;0;0;0;False;0;False;0,0,0,0;0.4485292,0.8402634,1,0;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;24;-1549.028,678.8254;Float;False;normalUnpacked;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;32;-422.4291,-37.81881;Inherit;False;24;normalUnpacked;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;8;-1381.668,362.739;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;31;-125.4292,-34.81888;Inherit;False;Fresnel;30;;253;f8c497a0c2d6d334f8e7138f24a77d5f;0;1;22;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;12;-216.3682,93.43896;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;35;161.2449,40.63271;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;75;1421.954,-98.18412;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;17;1411.18,76.36008;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;25;1365.433,-0.458782;Inherit;False;24;normalUnpacked;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;15;1101.38,203.36;Float;False;Property;_Smoothness;Smoothness;22;0;Create;True;0;0;0;False;0;False;0.5;0.458;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;14;1102.28,117.06;Float;False;Property;_Specular;Specular;21;0;Create;True;0;0;0;False;0;False;1;1;0.03;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;36;1173.145,-95.66732;Inherit;False;ScatterColor;23;;254;5984f944e2b849e44aad6ac4d7027dc1;0;1;31;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;85;1351.366,301.2752;Inherit;False;Lightning;34;;256;1ce3b38b84803624a906f5fc443424fd;0;0;1;COLOR;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;112;1848.305,-93.89405;Float;False;True;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;12;FORGE3D/Planets HD/Thunderstorm;53b46d85872c5b24c8f4f0a1c3fe4c87;True;GBuffer;0;0;GBuffer;34;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_CullMode;False;True;True;True;True;True;0;True;_LightLayersMaskBuffer4;False;False;False;False;False;False;False;True;True;0;True;_StencilRefGBuffer;255;False;;255;True;_StencilWriteMaskGBuffer;7;False;;3;False;;0;False;;0;False;;7;False;;3;False;;0;False;;0;False;;False;False;True;0;True;_ZTestGBuffer;False;True;1;LightMode=GBuffer;False;False;0;;0;0;Standard;39;Surface Type;0;0;  Rendering Pass;1;0;  Refraction Model;0;0;    Blending Mode;0;0;    Blend Preserves Specular;1;0;  Back Then Front Rendering;0;0;  Transparent Depth Prepass;0;0;  Transparent Depth Postpass;0;0;  ZWrite;0;0;  Z Test;4;0;Double-Sided;0;0;Alpha Clipping;0;0;  Use Shadow Threshold;0;0;Material Type,InvertActionOnDeselection;4;638087723302203264;Forward Only;0;0;  Energy Conserving Specular;1;0;  Transmission;1;0;Receive Decals;1;0;Receives SSR;1;0;Receive SSR Transparent;0;0;Motion Vectors;1;0;  Add Precomputed Velocity;0;0;Specular AA;0;0;Specular Occlusion Mode;1;0;Override Baked GI;0;0;Depth Offset;0;0;DOTS Instancing;0;0;GPU Instancing;1;0;LOD CrossFade;0;0;Tessellation;0;0;  Phong;0;0;  Strength;0.5,False,;0;  Type;0;0;  Tess;16,False,;0;  Min;10,False,;0;  Max;25,False,;0;  Edge Length;16,False,;0;  Max Displacement;25,False,;0;Vertex Position;1;0;0;11;True;True;True;True;True;True;False;False;False;True;True;False;;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;113;1848.305,-93.89405;Float;False;False;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;META;0;1;META;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;114;1848.305,-93.89405;Float;False;False;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;ShadowCaster;0;2;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_CullMode;False;True;False;False;False;False;0;False;;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;115;1848.305,-93.89405;Float;False;False;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;SceneSelectionPass;0;3;SceneSelectionPass;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=SceneSelectionPass;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;116;1848.305,-93.89405;Float;False;False;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;DepthOnly;0;4;DepthOnly;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_CullMode;False;False;False;False;False;False;False;False;False;True;True;0;True;_StencilRefDepth;255;False;;255;True;_StencilWriteMaskDepth;7;False;;3;False;;0;False;;0;False;;7;False;;3;False;;0;False;;0;False;;False;True;1;False;;False;False;True;1;LightMode=DepthOnly;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;117;1848.305,-93.89405;Float;False;False;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;Motion Vectors;0;5;Motion Vectors;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_CullMode;False;False;False;False;False;False;False;False;False;True;True;0;True;_StencilRefMV;255;False;;255;True;_StencilWriteMaskMV;7;False;;3;False;;0;False;;0;False;;7;False;;3;False;;0;False;;0;False;;False;True;1;False;;False;False;True;1;LightMode=MotionVectors;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;118;1848.305,-93.89405;Float;False;False;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;TransparentBackface;0;6;TransparentBackface;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;True;2;5;False;;10;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;True;1;False;;False;False;False;True;True;True;True;True;0;True;_ColorMaskTransparentVelOne;False;True;True;True;True;True;0;True;_ColorMaskTransparentVelTwo;False;False;False;False;False;True;0;True;_ZWrite;True;0;True;_ZTestTransparent;False;True;1;LightMode=TransparentBackface;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;119;1848.305,-93.89405;Float;False;False;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;TransparentDepthPrepass;0;7;TransparentDepthPrepass;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_CullMode;False;False;False;False;False;False;False;False;False;True;True;0;True;_StencilRefDepth;255;False;;255;True;_StencilWriteMaskDepth;7;False;;3;False;;0;False;;0;False;;7;False;;3;False;;0;False;;0;False;;False;True;1;False;;False;False;True;1;LightMode=TransparentDepthPrepass;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;120;1848.305,-93.89405;Float;False;False;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;TransparentDepthPostpass;0;8;TransparentDepthPostpass;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_CullMode;False;True;False;False;False;False;0;False;;False;False;False;False;False;False;False;False;False;True;1;False;;False;False;True;1;LightMode=TransparentDepthPostpass;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;121;1848.305,-93.89405;Float;False;False;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;Forward;0;9;Forward;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;True;2;5;False;;10;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;True;_CullModeForward;False;False;False;True;True;True;True;True;0;True;_ColorMaskTransparentVelOne;False;True;True;True;True;True;0;True;_ColorMaskTransparentVelTwo;False;False;False;True;True;0;True;_StencilRef;255;False;;255;True;_StencilWriteMask;7;False;;3;False;;0;False;;0;False;;7;False;;3;False;;0;False;;0;False;;False;True;0;True;_ZWrite;True;0;True;_ZTestDepthEqualForOpaque;False;True;1;LightMode=Forward;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;122;1848.305,-93.89405;Float;False;False;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;ScenePickingPass;0;10;ScenePickingPass;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_CullMode;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;True;3;False;;False;True;1;LightMode=Picking;False;False;0;;0;0;Standard;0;False;0
WireConnection;84;1;78;0
WireConnection;6;0;84;0
WireConnection;6;1;7;0
WireConnection;90;0;17;0
WireConnection;28;0;9;0
WireConnection;9;0;8;0
WireConnection;5;0;3;0
WireConnection;5;1;4;0
WireConnection;5;2;28;0
WireConnection;24;0;79;0
WireConnection;8;0;6;0
WireConnection;8;1;10;0
WireConnection;31;22;32;0
WireConnection;12;0;5;0
WireConnection;35;0;31;0
WireConnection;35;1;12;0
WireConnection;75;0;36;0
WireConnection;75;1;35;0
WireConnection;17;0;16;0
WireConnection;17;1;9;0
WireConnection;17;2;14;0
WireConnection;112;0;75;0
WireConnection;112;1;25;0
WireConnection;112;5;90;0
WireConnection;112;6;85;0
WireConnection;112;7;15;0
ASEEND*/
//CHKSM=35FC56B2A6E59447009B94140F7D45748BE32077