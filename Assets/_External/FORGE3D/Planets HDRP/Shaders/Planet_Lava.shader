// Made with Amplify Shader Editor v1.9.1.3
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "FORGE3D/Planets HD/Lava"
{
	Properties
	{
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		_HeightMap("Height Map", 2D) = "white" {}
		_DetailMap("Detail Map", 2D) = "white" {}
		_MagmaMap("Magma Map", 2D) = "white" {}
		_NormalMap("Normal Map", 2D) = "white" {}
		_NormalScale("Normal Scale", Float) = 0
		_NormalTiling("Normal Tiling", Float) = 0
		_HeightTiling("Height Tiling", Float) = 2
		_DetailTiling("Detail Tiling", Float) = 2
		_MagmaTiling("Magma Tiling", Float) = 2
		_LavaMaskTiling("Lava Mask Tiling", Float) = 2
		_SpecularColor("Specular Color", Color) = (0,0,0,0)
		_Specular("Specular", Range( 0.03 , 1)) = 0.03
		_Smoothness("Smoothness", Range( 0 , 1)) = 0
		_SpecularBoost("Specular Boost", Float) = 0.03
		_LavaLow("Lava Low", Color) = (0,0,0,0)
		_LavaMid("Lava Mid", Color) = (0,0,0,0)
		_LavaHigh("Lava High", Color) = (0,0,0,0)
		_LavaFactorsX("Lava Factors X", Range( 0 , 1)) = 0
		_LavaFactorsY("Lava Factors Y", Range( 0 , 1)) = 0
		_LavaFactorsZ("Lava Factors Z", Range( 0 , 1)) = 0
		_LavaDetail("Lava Detail", Range( 0 , 1)) = 0
		_DetailExp("Detail Exp", Float) = 0
		_HeightDetail("Height Detail", Float) = 0
		_LavaMaskFactorsX("Lava Mask Factors X", Float) = 0
		_LavaMaskFactorsY("Lava Mask Factors Y", Float) = 0
		_LavaMaskPower("Lava Mask Power", Float) = 0
		_LavaMaskBoost("Lava Mask Boost", Float) = 0
		_MagmaColorMin("Magma Color Min", Color) = (0,0,0,0)
		_MagmaColorMax("Magma Color Max", Color) = (0,0,0,0)
		_MagmaPower("Magma Power", Float) = 0
		_MagmaBoost("Magma Boost", Float) = 0
		_MagmaGlow("Magma Glow", Float) = 0
		_FrenselMult("Frensel Mult", Range( 0 , 10)) = 0
		_FresnelPower("Fresnel Power", Range( 0 , 10)) = 0
		_FresnelColor("Fresnel Color", Color) = (0.4558824,0.4558824,0.4558824,1)
		_DistortionMap("Distortion Map", 2D) = "white" {}
		_DistortionUVTiling("Distortion UV Tiling", Float) = 0
		_DistortionUVSpeed("Distortion UV Speed", Float) = 0
		_DistortionTiling("Distortion Tiling", Float) = 0
		_DistortionSpeed("Distortion Speed", Float) = 0
		[ASEEnd]_DistortionFactor("Distortion Factor", Range( -1 , 1)) = 0

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
			float4 _LavaLow;
			float4 _MagmaMap_TexelSize;
			float4 _MagmaColorMax;
			float4 _MagmaColorMin;
			float4 _DistortionMap_TexelSize;
			float4 _FresnelColor;
			float4 _NormalMap_TexelSize;
			float4 _LavaHigh;
			float4 _SpecularColor;
			float4 _HeightMap_TexelSize;
			float4 _LavaMid;
			float4 _DetailMap_TexelSize;
			float _LavaDetail;
			float _LavaMaskBoost;
			float _LavaMaskPower;
			float _LavaMaskFactorsY;
			float _LavaMaskFactorsX;
			float _LavaMaskTiling;
			float _MagmaBoost;
			float _MagmaPower;
			float _MagmaTiling;
			float _DetailExp;
			float _DetailTiling;
			float _DistortionFactor;
			float _DistortionUVSpeed;
			float _DistortionUVTiling;
			float _DistortionSpeed;
			float _DistortionTiling;
			float _SpecularBoost;
			float _MagmaGlow;
			float _Specular;
			float _HeightTiling;
			float _FrenselMult;
			float _FresnelPower;
			float _NormalScale;
			float _NormalTiling;
			float _HeightDetail;
			float _LavaFactorsZ;
			float _LavaFactorsY;
			float _LavaFactorsX;
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

			sampler2D _DetailMap;
			sampler2D _HeightMap;
			sampler2D _NormalMap;
			sampler2D _DistortionMap;
			sampler2D _MagmaMap;


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
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR


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
				outputPackedVaryingsMeshToPS.ase_texcoord6.xyz = ase_worldBitangent;
				
				outputPackedVaryingsMeshToPS.ase_normal = inputMesh.normalOS;
				outputPackedVaryingsMeshToPS.ase_texcoord5 = float4(inputMesh.positionOS,1);
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord6.w = 0;

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
				float3 temp_cast_2 = (3.0).xxx;
				float3 temp_output_4_0_g237 = pow( abs( packedInput.ase_normal ) , temp_cast_2 );
				float3 break6_g237 = temp_output_4_0_g237;
				float3 projNormal10_g237 = ( temp_output_4_0_g237 / ( break6_g237.x + break6_g237.y + break6_g237.z ) );
				float localBicubicPrepare2_g239 = ( 0.0 );
				float3 break26_g237 = packedInput.ase_texcoord5.xyz;
				float2 appendResult27_g237 = (float2(break26_g237.z , break26_g237.y));
				float3 nSign18_g237 = sign( packedInput.ase_normal );
				float3 break20_g237 = nSign18_g237;
				float2 appendResult21_g237 = (float2(break20_g237.x , 1.0));
				float temp_output_29_0_g237 = _DetailTiling;
				float2 temp_output_65_0_g237 = float2( 0,0 );
				float2 temp_output_68_0_g237 = ( ( appendResult27_g237 * appendResult21_g237 * temp_output_29_0_g237 ) + temp_output_65_0_g237 );
				float2 Input_UV100_g239 = temp_output_68_0_g237;
				float2 UV2_g239 = Input_UV100_g239;
				float4 TexelSize2_g239 = _DetailMap_TexelSize;
				float2 UV02_g239 = float2( 0,0 );
				float2 UV12_g239 = float2( 0,0 );
				float2 UV22_g239 = float2( 0,0 );
				float2 UV32_g239 = float2( 0,0 );
				float W02_g239 = 0;
				float W12_g239 = 0;
				{
				{
				 UV2_g239 = UV2_g239 * TexelSize2_g239.zw - 0.5;
				    float2 f = frac( UV2_g239 );
				    UV2_g239 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g239.x - 0.5, UV2_g239.x + 1.5, UV2_g239.y - 0.5, UV2_g239.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g239.xyxy;
				    UV02_g239 = off.xz;
				    UV12_g239 = off.yz;
				    UV22_g239 = off.xw;
				    UV32_g239 = off.yw;
				    W02_g239 = s.x / ( s.x + s.y );
				 W12_g239 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g239 = lerp( tex2D( _DetailMap, UV32_g239 ) , tex2D( _DetailMap, UV22_g239 ) , W02_g239);
				float4 lerpResult45_g239 = lerp( tex2D( _DetailMap, UV12_g239 ) , tex2D( _DetailMap, UV02_g239 ) , W02_g239);
				float4 lerpResult44_g239 = lerp( lerpResult46_g239 , lerpResult45_g239 , W12_g239);
				float4 Output_2D131_g239 = lerpResult44_g239;
				float localBicubicPrepare2_g240 = ( 0.0 );
				float2 appendResult32_g237 = (float2(break26_g237.x , break26_g237.z));
				float2 appendResult22_g237 = (float2(break20_g237.y , 1.0));
				float2 temp_output_66_0_g237 = ( ( temp_output_29_0_g237 * appendResult32_g237 * appendResult22_g237 ) + temp_output_65_0_g237 );
				float2 Input_UV100_g240 = temp_output_66_0_g237;
				float2 UV2_g240 = Input_UV100_g240;
				float4 TexelSize2_g240 = _DetailMap_TexelSize;
				float2 UV02_g240 = float2( 0,0 );
				float2 UV12_g240 = float2( 0,0 );
				float2 UV22_g240 = float2( 0,0 );
				float2 UV32_g240 = float2( 0,0 );
				float W02_g240 = 0;
				float W12_g240 = 0;
				{
				{
				 UV2_g240 = UV2_g240 * TexelSize2_g240.zw - 0.5;
				    float2 f = frac( UV2_g240 );
				    UV2_g240 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g240.x - 0.5, UV2_g240.x + 1.5, UV2_g240.y - 0.5, UV2_g240.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g240.xyxy;
				    UV02_g240 = off.xz;
				    UV12_g240 = off.yz;
				    UV22_g240 = off.xw;
				    UV32_g240 = off.yw;
				    W02_g240 = s.x / ( s.x + s.y );
				 W12_g240 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g240 = lerp( tex2D( _DetailMap, UV32_g240 ) , tex2D( _DetailMap, UV22_g240 ) , W02_g240);
				float4 lerpResult45_g240 = lerp( tex2D( _DetailMap, UV12_g240 ) , tex2D( _DetailMap, UV02_g240 ) , W02_g240);
				float4 lerpResult44_g240 = lerp( lerpResult46_g240 , lerpResult45_g240 , W12_g240);
				float4 Output_2D131_g240 = lerpResult44_g240;
				float localBicubicPrepare2_g238 = ( 0.0 );
				float2 appendResult34_g237 = (float2(break26_g237.x , break26_g237.y));
				float2 appendResult25_g237 = (float2(-break20_g237.z , 1.0));
				float2 temp_output_67_0_g237 = ( temp_output_65_0_g237 + ( temp_output_29_0_g237 * appendResult34_g237 * appendResult25_g237 ) );
				float2 Input_UV100_g238 = temp_output_67_0_g237;
				float2 UV2_g238 = Input_UV100_g238;
				float4 TexelSize2_g238 = _DetailMap_TexelSize;
				float2 UV02_g238 = float2( 0,0 );
				float2 UV12_g238 = float2( 0,0 );
				float2 UV22_g238 = float2( 0,0 );
				float2 UV32_g238 = float2( 0,0 );
				float W02_g238 = 0;
				float W12_g238 = 0;
				{
				{
				 UV2_g238 = UV2_g238 * TexelSize2_g238.zw - 0.5;
				    float2 f = frac( UV2_g238 );
				    UV2_g238 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g238.x - 0.5, UV2_g238.x + 1.5, UV2_g238.y - 0.5, UV2_g238.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g238.xyxy;
				    UV02_g238 = off.xz;
				    UV12_g238 = off.yz;
				    UV22_g238 = off.xw;
				    UV32_g238 = off.yw;
				    W02_g238 = s.x / ( s.x + s.y );
				 W12_g238 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g238 = lerp( tex2D( _DetailMap, UV32_g238 ) , tex2D( _DetailMap, UV22_g238 ) , W02_g238);
				float4 lerpResult45_g238 = lerp( tex2D( _DetailMap, UV12_g238 ) , tex2D( _DetailMap, UV02_g238 ) , W02_g238);
				float4 lerpResult44_g238 = lerp( lerpResult46_g238 , lerpResult45_g238 , W12_g238);
				float4 Output_2D131_g238 = lerpResult44_g238;
				float4 break138 = saturate( ( ( projNormal10_g237.x * Output_2D131_g239 ) + ( projNormal10_g237.y * Output_2D131_g240 ) + ( projNormal10_g237.z * Output_2D131_g238 ) ) );
				float detailTex146 = saturate( ( _DetailExp * pow( max( 0.0 , ( break138.r * break138.g ) ) , _DetailExp ) * 5000.0 ) );
				float3 temp_cast_3 = (3.0).xxx;
				float3 temp_output_4_0_g232 = pow( abs( packedInput.ase_normal ) , temp_cast_3 );
				float3 break6_g232 = temp_output_4_0_g232;
				float3 projNormal10_g232 = ( temp_output_4_0_g232 / ( break6_g232.x + break6_g232.y + break6_g232.z ) );
				float localBicubicPrepare2_g234 = ( 0.0 );
				float3 break26_g232 = packedInput.ase_texcoord5.xyz;
				float2 appendResult27_g232 = (float2(break26_g232.z , break26_g232.y));
				float3 nSign18_g232 = sign( packedInput.ase_normal );
				float3 break20_g232 = nSign18_g232;
				float2 appendResult21_g232 = (float2(break20_g232.x , 1.0));
				float temp_output_29_0_g232 = _HeightTiling;
				float2 temp_output_65_0_g232 = float2( 0,0 );
				float2 temp_output_68_0_g232 = ( ( appendResult27_g232 * appendResult21_g232 * temp_output_29_0_g232 ) + temp_output_65_0_g232 );
				float2 Input_UV100_g234 = temp_output_68_0_g232;
				float2 UV2_g234 = Input_UV100_g234;
				float4 TexelSize2_g234 = _HeightMap_TexelSize;
				float2 UV02_g234 = float2( 0,0 );
				float2 UV12_g234 = float2( 0,0 );
				float2 UV22_g234 = float2( 0,0 );
				float2 UV32_g234 = float2( 0,0 );
				float W02_g234 = 0;
				float W12_g234 = 0;
				{
				{
				 UV2_g234 = UV2_g234 * TexelSize2_g234.zw - 0.5;
				    float2 f = frac( UV2_g234 );
				    UV2_g234 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g234.x - 0.5, UV2_g234.x + 1.5, UV2_g234.y - 0.5, UV2_g234.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g234.xyxy;
				    UV02_g234 = off.xz;
				    UV12_g234 = off.yz;
				    UV22_g234 = off.xw;
				    UV32_g234 = off.yw;
				    W02_g234 = s.x / ( s.x + s.y );
				 W12_g234 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g234 = lerp( tex2D( _HeightMap, UV32_g234 ) , tex2D( _HeightMap, UV22_g234 ) , W02_g234);
				float4 lerpResult45_g234 = lerp( tex2D( _HeightMap, UV12_g234 ) , tex2D( _HeightMap, UV02_g234 ) , W02_g234);
				float4 lerpResult44_g234 = lerp( lerpResult46_g234 , lerpResult45_g234 , W12_g234);
				float4 Output_2D131_g234 = lerpResult44_g234;
				float localBicubicPrepare2_g235 = ( 0.0 );
				float2 appendResult32_g232 = (float2(break26_g232.x , break26_g232.z));
				float2 appendResult22_g232 = (float2(break20_g232.y , 1.0));
				float2 temp_output_66_0_g232 = ( ( temp_output_29_0_g232 * appendResult32_g232 * appendResult22_g232 ) + temp_output_65_0_g232 );
				float2 Input_UV100_g235 = temp_output_66_0_g232;
				float2 UV2_g235 = Input_UV100_g235;
				float4 TexelSize2_g235 = _HeightMap_TexelSize;
				float2 UV02_g235 = float2( 0,0 );
				float2 UV12_g235 = float2( 0,0 );
				float2 UV22_g235 = float2( 0,0 );
				float2 UV32_g235 = float2( 0,0 );
				float W02_g235 = 0;
				float W12_g235 = 0;
				{
				{
				 UV2_g235 = UV2_g235 * TexelSize2_g235.zw - 0.5;
				    float2 f = frac( UV2_g235 );
				    UV2_g235 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g235.x - 0.5, UV2_g235.x + 1.5, UV2_g235.y - 0.5, UV2_g235.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g235.xyxy;
				    UV02_g235 = off.xz;
				    UV12_g235 = off.yz;
				    UV22_g235 = off.xw;
				    UV32_g235 = off.yw;
				    W02_g235 = s.x / ( s.x + s.y );
				 W12_g235 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g235 = lerp( tex2D( _HeightMap, UV32_g235 ) , tex2D( _HeightMap, UV22_g235 ) , W02_g235);
				float4 lerpResult45_g235 = lerp( tex2D( _HeightMap, UV12_g235 ) , tex2D( _HeightMap, UV02_g235 ) , W02_g235);
				float4 lerpResult44_g235 = lerp( lerpResult46_g235 , lerpResult45_g235 , W12_g235);
				float4 Output_2D131_g235 = lerpResult44_g235;
				float localBicubicPrepare2_g233 = ( 0.0 );
				float2 appendResult34_g232 = (float2(break26_g232.x , break26_g232.y));
				float2 appendResult25_g232 = (float2(-break20_g232.z , 1.0));
				float2 temp_output_67_0_g232 = ( temp_output_65_0_g232 + ( temp_output_29_0_g232 * appendResult34_g232 * appendResult25_g232 ) );
				float2 Input_UV100_g233 = temp_output_67_0_g232;
				float2 UV2_g233 = Input_UV100_g233;
				float4 TexelSize2_g233 = _HeightMap_TexelSize;
				float2 UV02_g233 = float2( 0,0 );
				float2 UV12_g233 = float2( 0,0 );
				float2 UV22_g233 = float2( 0,0 );
				float2 UV32_g233 = float2( 0,0 );
				float W02_g233 = 0;
				float W12_g233 = 0;
				{
				{
				 UV2_g233 = UV2_g233 * TexelSize2_g233.zw - 0.5;
				    float2 f = frac( UV2_g233 );
				    UV2_g233 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g233.x - 0.5, UV2_g233.x + 1.5, UV2_g233.y - 0.5, UV2_g233.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g233.xyxy;
				    UV02_g233 = off.xz;
				    UV12_g233 = off.yz;
				    UV22_g233 = off.xw;
				    UV32_g233 = off.yw;
				    W02_g233 = s.x / ( s.x + s.y );
				 W12_g233 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g233 = lerp( tex2D( _HeightMap, UV32_g233 ) , tex2D( _HeightMap, UV22_g233 ) , W02_g233);
				float4 lerpResult45_g233 = lerp( tex2D( _HeightMap, UV12_g233 ) , tex2D( _HeightMap, UV02_g233 ) , W02_g233);
				float4 lerpResult44_g233 = lerp( lerpResult46_g233 , lerpResult45_g233 , W12_g233);
				float4 Output_2D131_g233 = lerpResult44_g233;
				float detaledHeight167 = saturate( ( detailTex146 * saturate( ( saturate( ( ( projNormal10_g232.x * Output_2D131_g234 ) + ( projNormal10_g232.y * Output_2D131_g235 ) + ( projNormal10_g232.z * Output_2D131_g233 ) ) ).r * _HeightDetail ) ) ) );
				float temp_output_2_0_g241 = saturate( ( _LavaFactorsX - _LavaDetail ) );
				float detaledHeight01178 = saturate( saturate( ( ( detaledHeight167 - temp_output_2_0_g241 ) / ( saturate( ( _LavaFactorsY - _LavaDetail ) ) - temp_output_2_0_g241 ) ) ) );
				float temp_output_6_0_g227 = ( detaledHeight01178 / _LavaFactorsZ );
				float3 lerpResult8_g227 = lerp( _LavaLow.rgb , _LavaMid.rgb , saturate( temp_output_6_0_g227 ));
				float3 lerpResult12_g227 = lerp( lerpResult8_g227 , _LavaHigh.rgb , saturate( ( temp_output_6_0_g227 - 1.0 ) ));
				float3 baseColor213 = lerpResult12_g227;
				float3 ase_worldBitangent = packedInput.ase_texcoord6.xyz;
				float3 tanToWorld0 = float3( tangentWS.xyz.x, ase_worldBitangent.x, normalWS.x );
				float3 tanToWorld1 = float3( tangentWS.xyz.y, ase_worldBitangent.y, normalWS.y );
				float3 tanToWorld2 = float3( tangentWS.xyz.z, ase_worldBitangent.z, normalWS.z );
				float3 ase_tanViewDir =  tanToWorld0 * V.x + tanToWorld1 * V.y  + tanToWorld2 * V.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float3 temp_cast_5 = (3.0).xxx;
				float3 temp_output_4_0_g228 = pow( abs( packedInput.ase_normal ) , temp_cast_5 );
				float3 break6_g228 = temp_output_4_0_g228;
				float3 projNormal10_g228 = ( temp_output_4_0_g228 / ( break6_g228.x + break6_g228.y + break6_g228.z ) );
				float localBicubicPrepare2_g230 = ( 0.0 );
				float3 break26_g228 = packedInput.ase_texcoord5.xyz;
				float2 appendResult27_g228 = (float2(break26_g228.z , break26_g228.y));
				float3 nSign18_g228 = sign( packedInput.ase_normal );
				float3 break20_g228 = nSign18_g228;
				float2 appendResult21_g228 = (float2(break20_g228.x , 1.0));
				float temp_output_29_0_g228 = _NormalTiling;
				float2 temp_output_65_0_g228 = float2( 0,0 );
				float2 temp_output_68_0_g228 = ( ( appendResult27_g228 * appendResult21_g228 * temp_output_29_0_g228 ) + temp_output_65_0_g228 );
				float2 Input_UV100_g230 = temp_output_68_0_g228;
				float2 UV2_g230 = Input_UV100_g230;
				float4 TexelSize2_g230 = _NormalMap_TexelSize;
				float2 UV02_g230 = float2( 0,0 );
				float2 UV12_g230 = float2( 0,0 );
				float2 UV22_g230 = float2( 0,0 );
				float2 UV32_g230 = float2( 0,0 );
				float W02_g230 = 0;
				float W12_g230 = 0;
				{
				{
				 UV2_g230 = UV2_g230 * TexelSize2_g230.zw - 0.5;
				    float2 f = frac( UV2_g230 );
				    UV2_g230 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g230.x - 0.5, UV2_g230.x + 1.5, UV2_g230.y - 0.5, UV2_g230.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g230.xyxy;
				    UV02_g230 = off.xz;
				    UV12_g230 = off.yz;
				    UV22_g230 = off.xw;
				    UV32_g230 = off.yw;
				    W02_g230 = s.x / ( s.x + s.y );
				 W12_g230 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g230 = lerp( tex2D( _NormalMap, UV32_g230 ) , tex2D( _NormalMap, UV22_g230 ) , W02_g230);
				float4 lerpResult45_g230 = lerp( tex2D( _NormalMap, UV12_g230 ) , tex2D( _NormalMap, UV02_g230 ) , W02_g230);
				float4 lerpResult44_g230 = lerp( lerpResult46_g230 , lerpResult45_g230 , W12_g230);
				float4 Output_2D131_g230 = lerpResult44_g230;
				float localBicubicPrepare2_g231 = ( 0.0 );
				float2 appendResult32_g228 = (float2(break26_g228.x , break26_g228.z));
				float2 appendResult22_g228 = (float2(break20_g228.y , 1.0));
				float2 temp_output_66_0_g228 = ( ( temp_output_29_0_g228 * appendResult32_g228 * appendResult22_g228 ) + temp_output_65_0_g228 );
				float2 Input_UV100_g231 = temp_output_66_0_g228;
				float2 UV2_g231 = Input_UV100_g231;
				float4 TexelSize2_g231 = _NormalMap_TexelSize;
				float2 UV02_g231 = float2( 0,0 );
				float2 UV12_g231 = float2( 0,0 );
				float2 UV22_g231 = float2( 0,0 );
				float2 UV32_g231 = float2( 0,0 );
				float W02_g231 = 0;
				float W12_g231 = 0;
				{
				{
				 UV2_g231 = UV2_g231 * TexelSize2_g231.zw - 0.5;
				    float2 f = frac( UV2_g231 );
				    UV2_g231 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g231.x - 0.5, UV2_g231.x + 1.5, UV2_g231.y - 0.5, UV2_g231.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g231.xyxy;
				    UV02_g231 = off.xz;
				    UV12_g231 = off.yz;
				    UV22_g231 = off.xw;
				    UV32_g231 = off.yw;
				    W02_g231 = s.x / ( s.x + s.y );
				 W12_g231 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g231 = lerp( tex2D( _NormalMap, UV32_g231 ) , tex2D( _NormalMap, UV22_g231 ) , W02_g231);
				float4 lerpResult45_g231 = lerp( tex2D( _NormalMap, UV12_g231 ) , tex2D( _NormalMap, UV02_g231 ) , W02_g231);
				float4 lerpResult44_g231 = lerp( lerpResult46_g231 , lerpResult45_g231 , W12_g231);
				float4 Output_2D131_g231 = lerpResult44_g231;
				float localBicubicPrepare2_g229 = ( 0.0 );
				float2 appendResult34_g228 = (float2(break26_g228.x , break26_g228.y));
				float2 appendResult25_g228 = (float2(-break20_g228.z , 1.0));
				float2 temp_output_67_0_g228 = ( temp_output_65_0_g228 + ( temp_output_29_0_g228 * appendResult34_g228 * appendResult25_g228 ) );
				float2 Input_UV100_g229 = temp_output_67_0_g228;
				float2 UV2_g229 = Input_UV100_g229;
				float4 TexelSize2_g229 = _NormalMap_TexelSize;
				float2 UV02_g229 = float2( 0,0 );
				float2 UV12_g229 = float2( 0,0 );
				float2 UV22_g229 = float2( 0,0 );
				float2 UV32_g229 = float2( 0,0 );
				float W02_g229 = 0;
				float W12_g229 = 0;
				{
				{
				 UV2_g229 = UV2_g229 * TexelSize2_g229.zw - 0.5;
				    float2 f = frac( UV2_g229 );
				    UV2_g229 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g229.x - 0.5, UV2_g229.x + 1.5, UV2_g229.y - 0.5, UV2_g229.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g229.xyxy;
				    UV02_g229 = off.xz;
				    UV12_g229 = off.yz;
				    UV22_g229 = off.xw;
				    UV32_g229 = off.yw;
				    W02_g229 = s.x / ( s.x + s.y );
				 W12_g229 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g229 = lerp( tex2D( _NormalMap, UV32_g229 ) , tex2D( _NormalMap, UV22_g229 ) , W02_g229);
				float4 lerpResult45_g229 = lerp( tex2D( _NormalMap, UV12_g229 ) , tex2D( _NormalMap, UV02_g229 ) , W02_g229);
				float4 lerpResult44_g229 = lerp( lerpResult46_g229 , lerpResult45_g229 , W12_g229);
				float4 Output_2D131_g229 = lerpResult44_g229;
				float3 unpack195 = UnpackNormalScale( saturate( ( ( projNormal10_g228.x * Output_2D131_g230 ) + ( projNormal10_g228.y * Output_2D131_g231 ) + ( projNormal10_g228.z * Output_2D131_g229 ) ) ), _NormalScale );
				unpack195.z = lerp( 1, unpack195.z, saturate(_NormalScale) );
				float3 normalUnpacked196 = unpack195;
				float3 normalizeResult5_g236 = normalize( normalUnpacked196 );
				float dotResult14_g236 = dot( ase_tanViewDir , normalizeResult5_g236 );
				float detailX235 = break138.r;
				float3 fresnel268 = saturate( ( ( ( saturate( pow( max( 0.0 , saturate( ( 1.0 - dotResult14_g236 ) ) ) , _FresnelPower ) ) * _FrenselMult ) * (_FresnelColor).rgb ) * detailX235 ) );
				
				float4 spec390 = saturate( ( detailTex146 * _Specular * _SpecularColor * _SpecularBoost ) );
				
				float3 temp_cast_9 = (3.0).xxx;
				float3 temp_output_4_0_g215 = pow( abs( packedInput.ase_normal ) , temp_cast_9 );
				float3 break6_g215 = temp_output_4_0_g215;
				float3 projNormal10_g215 = ( temp_output_4_0_g215 / ( break6_g215.x + break6_g215.y + break6_g215.z ) );
				float localBicubicPrepare2_g217 = ( 0.0 );
				float3 break26_g215 = packedInput.ase_texcoord5.xyz;
				float2 appendResult27_g215 = (float2(break26_g215.z , break26_g215.y));
				float3 nSign18_g215 = sign( packedInput.ase_normal );
				float3 break20_g215 = nSign18_g215;
				float2 appendResult21_g215 = (float2(break20_g215.x , 1.0));
				float temp_output_29_0_g215 = _DistortionTiling;
				float temp_output_10_0_g214 = ( _TimeParameters.x * _DistortionSpeed );
				float2 appendResult12_g214 = (float2(temp_output_10_0_g214 , temp_output_10_0_g214));
				float3 temp_cast_10 = (3.0).xxx;
				float3 temp_output_4_0_g219 = pow( abs( packedInput.ase_normal ) , temp_cast_10 );
				float3 break6_g219 = temp_output_4_0_g219;
				float3 projNormal10_g219 = ( temp_output_4_0_g219 / ( break6_g219.x + break6_g219.y + break6_g219.z ) );
				float localBicubicPrepare2_g221 = ( 0.0 );
				float3 break26_g219 = packedInput.ase_texcoord5.xyz;
				float2 appendResult27_g219 = (float2(break26_g219.z , break26_g219.y));
				float3 nSign18_g219 = sign( packedInput.ase_normal );
				float3 break20_g219 = nSign18_g219;
				float2 appendResult21_g219 = (float2(break20_g219.x , 1.0));
				float temp_output_29_0_g219 = _DistortionUVTiling;
				float temp_output_2_0_g214 = ( _TimeParameters.x * _DistortionUVSpeed );
				float2 appendResult5_g214 = (float2(temp_output_2_0_g214 , temp_output_2_0_g214));
				float2 temp_output_65_0_g219 = appendResult5_g214;
				float2 temp_output_68_0_g219 = ( ( appendResult27_g219 * appendResult21_g219 * temp_output_29_0_g219 ) + temp_output_65_0_g219 );
				float2 Input_UV100_g221 = temp_output_68_0_g219;
				float2 UV2_g221 = Input_UV100_g221;
				float4 TexelSize2_g221 = _DistortionMap_TexelSize;
				float2 UV02_g221 = float2( 0,0 );
				float2 UV12_g221 = float2( 0,0 );
				float2 UV22_g221 = float2( 0,0 );
				float2 UV32_g221 = float2( 0,0 );
				float W02_g221 = 0;
				float W12_g221 = 0;
				{
				{
				 UV2_g221 = UV2_g221 * TexelSize2_g221.zw - 0.5;
				    float2 f = frac( UV2_g221 );
				    UV2_g221 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g221.x - 0.5, UV2_g221.x + 1.5, UV2_g221.y - 0.5, UV2_g221.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g221.xyxy;
				    UV02_g221 = off.xz;
				    UV12_g221 = off.yz;
				    UV22_g221 = off.xw;
				    UV32_g221 = off.yw;
				    W02_g221 = s.x / ( s.x + s.y );
				 W12_g221 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g221 = lerp( tex2D( _DistortionMap, UV32_g221 ) , tex2D( _DistortionMap, UV22_g221 ) , W02_g221);
				float4 lerpResult45_g221 = lerp( tex2D( _DistortionMap, UV12_g221 ) , tex2D( _DistortionMap, UV02_g221 ) , W02_g221);
				float4 lerpResult44_g221 = lerp( lerpResult46_g221 , lerpResult45_g221 , W12_g221);
				float4 Output_2D131_g221 = lerpResult44_g221;
				float localBicubicPrepare2_g222 = ( 0.0 );
				float2 appendResult32_g219 = (float2(break26_g219.x , break26_g219.z));
				float2 appendResult22_g219 = (float2(break20_g219.y , 1.0));
				float2 temp_output_66_0_g219 = ( ( temp_output_29_0_g219 * appendResult32_g219 * appendResult22_g219 ) + temp_output_65_0_g219 );
				float2 Input_UV100_g222 = temp_output_66_0_g219;
				float2 UV2_g222 = Input_UV100_g222;
				float4 TexelSize2_g222 = _DistortionMap_TexelSize;
				float2 UV02_g222 = float2( 0,0 );
				float2 UV12_g222 = float2( 0,0 );
				float2 UV22_g222 = float2( 0,0 );
				float2 UV32_g222 = float2( 0,0 );
				float W02_g222 = 0;
				float W12_g222 = 0;
				{
				{
				 UV2_g222 = UV2_g222 * TexelSize2_g222.zw - 0.5;
				    float2 f = frac( UV2_g222 );
				    UV2_g222 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g222.x - 0.5, UV2_g222.x + 1.5, UV2_g222.y - 0.5, UV2_g222.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g222.xyxy;
				    UV02_g222 = off.xz;
				    UV12_g222 = off.yz;
				    UV22_g222 = off.xw;
				    UV32_g222 = off.yw;
				    W02_g222 = s.x / ( s.x + s.y );
				 W12_g222 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g222 = lerp( tex2D( _DistortionMap, UV32_g222 ) , tex2D( _DistortionMap, UV22_g222 ) , W02_g222);
				float4 lerpResult45_g222 = lerp( tex2D( _DistortionMap, UV12_g222 ) , tex2D( _DistortionMap, UV02_g222 ) , W02_g222);
				float4 lerpResult44_g222 = lerp( lerpResult46_g222 , lerpResult45_g222 , W12_g222);
				float4 Output_2D131_g222 = lerpResult44_g222;
				float localBicubicPrepare2_g220 = ( 0.0 );
				float2 appendResult34_g219 = (float2(break26_g219.x , break26_g219.y));
				float2 appendResult25_g219 = (float2(-break20_g219.z , 1.0));
				float2 temp_output_67_0_g219 = ( temp_output_65_0_g219 + ( temp_output_29_0_g219 * appendResult34_g219 * appendResult25_g219 ) );
				float2 Input_UV100_g220 = temp_output_67_0_g219;
				float2 UV2_g220 = Input_UV100_g220;
				float4 TexelSize2_g220 = _DistortionMap_TexelSize;
				float2 UV02_g220 = float2( 0,0 );
				float2 UV12_g220 = float2( 0,0 );
				float2 UV22_g220 = float2( 0,0 );
				float2 UV32_g220 = float2( 0,0 );
				float W02_g220 = 0;
				float W12_g220 = 0;
				{
				{
				 UV2_g220 = UV2_g220 * TexelSize2_g220.zw - 0.5;
				    float2 f = frac( UV2_g220 );
				    UV2_g220 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g220.x - 0.5, UV2_g220.x + 1.5, UV2_g220.y - 0.5, UV2_g220.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g220.xyxy;
				    UV02_g220 = off.xz;
				    UV12_g220 = off.yz;
				    UV22_g220 = off.xw;
				    UV32_g220 = off.yw;
				    W02_g220 = s.x / ( s.x + s.y );
				 W12_g220 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g220 = lerp( tex2D( _DistortionMap, UV32_g220 ) , tex2D( _DistortionMap, UV22_g220 ) , W02_g220);
				float4 lerpResult45_g220 = lerp( tex2D( _DistortionMap, UV12_g220 ) , tex2D( _DistortionMap, UV02_g220 ) , W02_g220);
				float4 lerpResult44_g220 = lerp( lerpResult46_g220 , lerpResult45_g220 , W12_g220);
				float4 Output_2D131_g220 = lerpResult44_g220;
				float4 break11_g214 = ( saturate( ( ( projNormal10_g219.x * Output_2D131_g221 ) + ( projNormal10_g219.y * Output_2D131_g222 ) + ( projNormal10_g219.z * Output_2D131_g220 ) ) ) * _DistortionFactor );
				float2 appendResult13_g214 = (float2(break11_g214.r , break11_g214.g));
				float2 temp_output_65_0_g215 = ( appendResult12_g214 + appendResult13_g214 );
				float2 temp_output_68_0_g215 = ( ( appendResult27_g215 * appendResult21_g215 * temp_output_29_0_g215 ) + temp_output_65_0_g215 );
				float2 Input_UV100_g217 = temp_output_68_0_g215;
				float2 UV2_g217 = Input_UV100_g217;
				float4 TexelSize2_g217 = _DistortionMap_TexelSize;
				float2 UV02_g217 = float2( 0,0 );
				float2 UV12_g217 = float2( 0,0 );
				float2 UV22_g217 = float2( 0,0 );
				float2 UV32_g217 = float2( 0,0 );
				float W02_g217 = 0;
				float W12_g217 = 0;
				{
				{
				 UV2_g217 = UV2_g217 * TexelSize2_g217.zw - 0.5;
				    float2 f = frac( UV2_g217 );
				    UV2_g217 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g217.x - 0.5, UV2_g217.x + 1.5, UV2_g217.y - 0.5, UV2_g217.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g217.xyxy;
				    UV02_g217 = off.xz;
				    UV12_g217 = off.yz;
				    UV22_g217 = off.xw;
				    UV32_g217 = off.yw;
				    W02_g217 = s.x / ( s.x + s.y );
				 W12_g217 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g217 = lerp( tex2D( _DistortionMap, UV32_g217 ) , tex2D( _DistortionMap, UV22_g217 ) , W02_g217);
				float4 lerpResult45_g217 = lerp( tex2D( _DistortionMap, UV12_g217 ) , tex2D( _DistortionMap, UV02_g217 ) , W02_g217);
				float4 lerpResult44_g217 = lerp( lerpResult46_g217 , lerpResult45_g217 , W12_g217);
				float4 Output_2D131_g217 = lerpResult44_g217;
				float localBicubicPrepare2_g218 = ( 0.0 );
				float2 appendResult32_g215 = (float2(break26_g215.x , break26_g215.z));
				float2 appendResult22_g215 = (float2(break20_g215.y , 1.0));
				float2 temp_output_66_0_g215 = ( ( temp_output_29_0_g215 * appendResult32_g215 * appendResult22_g215 ) + temp_output_65_0_g215 );
				float2 Input_UV100_g218 = temp_output_66_0_g215;
				float2 UV2_g218 = Input_UV100_g218;
				float4 TexelSize2_g218 = _DistortionMap_TexelSize;
				float2 UV02_g218 = float2( 0,0 );
				float2 UV12_g218 = float2( 0,0 );
				float2 UV22_g218 = float2( 0,0 );
				float2 UV32_g218 = float2( 0,0 );
				float W02_g218 = 0;
				float W12_g218 = 0;
				{
				{
				 UV2_g218 = UV2_g218 * TexelSize2_g218.zw - 0.5;
				    float2 f = frac( UV2_g218 );
				    UV2_g218 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g218.x - 0.5, UV2_g218.x + 1.5, UV2_g218.y - 0.5, UV2_g218.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g218.xyxy;
				    UV02_g218 = off.xz;
				    UV12_g218 = off.yz;
				    UV22_g218 = off.xw;
				    UV32_g218 = off.yw;
				    W02_g218 = s.x / ( s.x + s.y );
				 W12_g218 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g218 = lerp( tex2D( _DistortionMap, UV32_g218 ) , tex2D( _DistortionMap, UV22_g218 ) , W02_g218);
				float4 lerpResult45_g218 = lerp( tex2D( _DistortionMap, UV12_g218 ) , tex2D( _DistortionMap, UV02_g218 ) , W02_g218);
				float4 lerpResult44_g218 = lerp( lerpResult46_g218 , lerpResult45_g218 , W12_g218);
				float4 Output_2D131_g218 = lerpResult44_g218;
				float localBicubicPrepare2_g216 = ( 0.0 );
				float2 appendResult34_g215 = (float2(break26_g215.x , break26_g215.y));
				float2 appendResult25_g215 = (float2(-break20_g215.z , 1.0));
				float2 temp_output_67_0_g215 = ( temp_output_65_0_g215 + ( temp_output_29_0_g215 * appendResult34_g215 * appendResult25_g215 ) );
				float2 Input_UV100_g216 = temp_output_67_0_g215;
				float2 UV2_g216 = Input_UV100_g216;
				float4 TexelSize2_g216 = _DistortionMap_TexelSize;
				float2 UV02_g216 = float2( 0,0 );
				float2 UV12_g216 = float2( 0,0 );
				float2 UV22_g216 = float2( 0,0 );
				float2 UV32_g216 = float2( 0,0 );
				float W02_g216 = 0;
				float W12_g216 = 0;
				{
				{
				 UV2_g216 = UV2_g216 * TexelSize2_g216.zw - 0.5;
				    float2 f = frac( UV2_g216 );
				    UV2_g216 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g216.x - 0.5, UV2_g216.x + 1.5, UV2_g216.y - 0.5, UV2_g216.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g216.xyxy;
				    UV02_g216 = off.xz;
				    UV12_g216 = off.yz;
				    UV22_g216 = off.xw;
				    UV32_g216 = off.yw;
				    W02_g216 = s.x / ( s.x + s.y );
				 W12_g216 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g216 = lerp( tex2D( _DistortionMap, UV32_g216 ) , tex2D( _DistortionMap, UV22_g216 ) , W02_g216);
				float4 lerpResult45_g216 = lerp( tex2D( _DistortionMap, UV12_g216 ) , tex2D( _DistortionMap, UV02_g216 ) , W02_g216);
				float4 lerpResult44_g216 = lerp( lerpResult46_g216 , lerpResult45_g216 , W12_g216);
				float4 Output_2D131_g216 = lerpResult44_g216;
				float3 temp_cast_11 = (3.0).xxx;
				float3 temp_output_4_0_g247 = pow( abs( packedInput.ase_normal ) , temp_cast_11 );
				float3 break6_g247 = temp_output_4_0_g247;
				float3 projNormal10_g247 = ( temp_output_4_0_g247 / ( break6_g247.x + break6_g247.y + break6_g247.z ) );
				float localBicubicPrepare2_g249 = ( 0.0 );
				float3 break26_g247 = packedInput.ase_texcoord5.xyz;
				float2 appendResult27_g247 = (float2(break26_g247.z , break26_g247.y));
				float3 nSign18_g247 = sign( packedInput.ase_normal );
				float3 break20_g247 = nSign18_g247;
				float2 appendResult21_g247 = (float2(break20_g247.x , 1.0));
				float temp_output_29_0_g247 = _MagmaTiling;
				float2 temp_output_65_0_g247 = float2( 0,0 );
				float2 temp_output_68_0_g247 = ( ( appendResult27_g247 * appendResult21_g247 * temp_output_29_0_g247 ) + temp_output_65_0_g247 );
				float2 Input_UV100_g249 = temp_output_68_0_g247;
				float2 UV2_g249 = Input_UV100_g249;
				float4 TexelSize2_g249 = _MagmaMap_TexelSize;
				float2 UV02_g249 = float2( 0,0 );
				float2 UV12_g249 = float2( 0,0 );
				float2 UV22_g249 = float2( 0,0 );
				float2 UV32_g249 = float2( 0,0 );
				float W02_g249 = 0;
				float W12_g249 = 0;
				{
				{
				 UV2_g249 = UV2_g249 * TexelSize2_g249.zw - 0.5;
				    float2 f = frac( UV2_g249 );
				    UV2_g249 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g249.x - 0.5, UV2_g249.x + 1.5, UV2_g249.y - 0.5, UV2_g249.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g249.xyxy;
				    UV02_g249 = off.xz;
				    UV12_g249 = off.yz;
				    UV22_g249 = off.xw;
				    UV32_g249 = off.yw;
				    W02_g249 = s.x / ( s.x + s.y );
				 W12_g249 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g249 = lerp( tex2D( _MagmaMap, UV32_g249 ) , tex2D( _MagmaMap, UV22_g249 ) , W02_g249);
				float4 lerpResult45_g249 = lerp( tex2D( _MagmaMap, UV12_g249 ) , tex2D( _MagmaMap, UV02_g249 ) , W02_g249);
				float4 lerpResult44_g249 = lerp( lerpResult46_g249 , lerpResult45_g249 , W12_g249);
				float4 Output_2D131_g249 = lerpResult44_g249;
				float localBicubicPrepare2_g250 = ( 0.0 );
				float2 appendResult32_g247 = (float2(break26_g247.x , break26_g247.z));
				float2 appendResult22_g247 = (float2(break20_g247.y , 1.0));
				float2 temp_output_66_0_g247 = ( ( temp_output_29_0_g247 * appendResult32_g247 * appendResult22_g247 ) + temp_output_65_0_g247 );
				float2 Input_UV100_g250 = temp_output_66_0_g247;
				float2 UV2_g250 = Input_UV100_g250;
				float4 TexelSize2_g250 = _MagmaMap_TexelSize;
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
				float4 lerpResult46_g250 = lerp( tex2D( _MagmaMap, UV32_g250 ) , tex2D( _MagmaMap, UV22_g250 ) , W02_g250);
				float4 lerpResult45_g250 = lerp( tex2D( _MagmaMap, UV12_g250 ) , tex2D( _MagmaMap, UV02_g250 ) , W02_g250);
				float4 lerpResult44_g250 = lerp( lerpResult46_g250 , lerpResult45_g250 , W12_g250);
				float4 Output_2D131_g250 = lerpResult44_g250;
				float localBicubicPrepare2_g248 = ( 0.0 );
				float2 appendResult34_g247 = (float2(break26_g247.x , break26_g247.y));
				float2 appendResult25_g247 = (float2(-break20_g247.z , 1.0));
				float2 temp_output_67_0_g247 = ( temp_output_65_0_g247 + ( temp_output_29_0_g247 * appendResult34_g247 * appendResult25_g247 ) );
				float2 Input_UV100_g248 = temp_output_67_0_g247;
				float2 UV2_g248 = Input_UV100_g248;
				float4 TexelSize2_g248 = _MagmaMap_TexelSize;
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
				float4 lerpResult46_g248 = lerp( tex2D( _MagmaMap, UV32_g248 ) , tex2D( _MagmaMap, UV22_g248 ) , W02_g248);
				float4 lerpResult45_g248 = lerp( tex2D( _MagmaMap, UV12_g248 ) , tex2D( _MagmaMap, UV02_g248 ) , W02_g248);
				float4 lerpResult44_g248 = lerp( lerpResult46_g248 , lerpResult45_g248 , W12_g248);
				float4 Output_2D131_g248 = lerpResult44_g248;
				float4 temp_output_361_0 = saturate( ( ( projNormal10_g247.x * Output_2D131_g249 ) + ( projNormal10_g247.y * Output_2D131_g250 ) + ( projNormal10_g247.z * Output_2D131_g248 ) ) );
				float4 temp_cast_12 = (_MagmaPower).xxxx;
				float4 magmaDetial234 = saturate( ( saturate( pow( max( float4( 0,0,0,0 ) , temp_output_361_0 ) , temp_cast_12 ) ) * _MagmaBoost * temp_output_361_0 ) );
				float3 temp_cast_13 = (3.0).xxx;
				float3 temp_output_4_0_g242 = pow( abs( packedInput.ase_normal ) , temp_cast_13 );
				float3 break6_g242 = temp_output_4_0_g242;
				float3 projNormal10_g242 = ( temp_output_4_0_g242 / ( break6_g242.x + break6_g242.y + break6_g242.z ) );
				float localBicubicPrepare2_g244 = ( 0.0 );
				float3 break26_g242 = packedInput.ase_texcoord5.xyz;
				float2 appendResult27_g242 = (float2(break26_g242.z , break26_g242.y));
				float3 nSign18_g242 = sign( packedInput.ase_normal );
				float3 break20_g242 = nSign18_g242;
				float2 appendResult21_g242 = (float2(break20_g242.x , 1.0));
				float temp_output_29_0_g242 = _LavaMaskTiling;
				float2 temp_output_65_0_g242 = float2( 0,0 );
				float2 temp_output_68_0_g242 = ( ( appendResult27_g242 * appendResult21_g242 * temp_output_29_0_g242 ) + temp_output_65_0_g242 );
				float2 Input_UV100_g244 = temp_output_68_0_g242;
				float2 UV2_g244 = Input_UV100_g244;
				float4 TexelSize2_g244 = _HeightMap_TexelSize;
				float2 UV02_g244 = float2( 0,0 );
				float2 UV12_g244 = float2( 0,0 );
				float2 UV22_g244 = float2( 0,0 );
				float2 UV32_g244 = float2( 0,0 );
				float W02_g244 = 0;
				float W12_g244 = 0;
				{
				{
				 UV2_g244 = UV2_g244 * TexelSize2_g244.zw - 0.5;
				    float2 f = frac( UV2_g244 );
				    UV2_g244 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g244.x - 0.5, UV2_g244.x + 1.5, UV2_g244.y - 0.5, UV2_g244.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g244.xyxy;
				    UV02_g244 = off.xz;
				    UV12_g244 = off.yz;
				    UV22_g244 = off.xw;
				    UV32_g244 = off.yw;
				    W02_g244 = s.x / ( s.x + s.y );
				 W12_g244 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g244 = lerp( tex2D( _HeightMap, UV32_g244 ) , tex2D( _HeightMap, UV22_g244 ) , W02_g244);
				float4 lerpResult45_g244 = lerp( tex2D( _HeightMap, UV12_g244 ) , tex2D( _HeightMap, UV02_g244 ) , W02_g244);
				float4 lerpResult44_g244 = lerp( lerpResult46_g244 , lerpResult45_g244 , W12_g244);
				float4 Output_2D131_g244 = lerpResult44_g244;
				float localBicubicPrepare2_g245 = ( 0.0 );
				float2 appendResult32_g242 = (float2(break26_g242.x , break26_g242.z));
				float2 appendResult22_g242 = (float2(break20_g242.y , 1.0));
				float2 temp_output_66_0_g242 = ( ( temp_output_29_0_g242 * appendResult32_g242 * appendResult22_g242 ) + temp_output_65_0_g242 );
				float2 Input_UV100_g245 = temp_output_66_0_g242;
				float2 UV2_g245 = Input_UV100_g245;
				float4 TexelSize2_g245 = _HeightMap_TexelSize;
				float2 UV02_g245 = float2( 0,0 );
				float2 UV12_g245 = float2( 0,0 );
				float2 UV22_g245 = float2( 0,0 );
				float2 UV32_g245 = float2( 0,0 );
				float W02_g245 = 0;
				float W12_g245 = 0;
				{
				{
				 UV2_g245 = UV2_g245 * TexelSize2_g245.zw - 0.5;
				    float2 f = frac( UV2_g245 );
				    UV2_g245 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g245.x - 0.5, UV2_g245.x + 1.5, UV2_g245.y - 0.5, UV2_g245.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g245.xyxy;
				    UV02_g245 = off.xz;
				    UV12_g245 = off.yz;
				    UV22_g245 = off.xw;
				    UV32_g245 = off.yw;
				    W02_g245 = s.x / ( s.x + s.y );
				 W12_g245 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g245 = lerp( tex2D( _HeightMap, UV32_g245 ) , tex2D( _HeightMap, UV22_g245 ) , W02_g245);
				float4 lerpResult45_g245 = lerp( tex2D( _HeightMap, UV12_g245 ) , tex2D( _HeightMap, UV02_g245 ) , W02_g245);
				float4 lerpResult44_g245 = lerp( lerpResult46_g245 , lerpResult45_g245 , W12_g245);
				float4 Output_2D131_g245 = lerpResult44_g245;
				float localBicubicPrepare2_g243 = ( 0.0 );
				float2 appendResult34_g242 = (float2(break26_g242.x , break26_g242.y));
				float2 appendResult25_g242 = (float2(-break20_g242.z , 1.0));
				float2 temp_output_67_0_g242 = ( temp_output_65_0_g242 + ( temp_output_29_0_g242 * appendResult34_g242 * appendResult25_g242 ) );
				float2 Input_UV100_g243 = temp_output_67_0_g242;
				float2 UV2_g243 = Input_UV100_g243;
				float4 TexelSize2_g243 = _HeightMap_TexelSize;
				float2 UV02_g243 = float2( 0,0 );
				float2 UV12_g243 = float2( 0,0 );
				float2 UV22_g243 = float2( 0,0 );
				float2 UV32_g243 = float2( 0,0 );
				float W02_g243 = 0;
				float W12_g243 = 0;
				{
				{
				 UV2_g243 = UV2_g243 * TexelSize2_g243.zw - 0.5;
				    float2 f = frac( UV2_g243 );
				    UV2_g243 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g243.x - 0.5, UV2_g243.x + 1.5, UV2_g243.y - 0.5, UV2_g243.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g243.xyxy;
				    UV02_g243 = off.xz;
				    UV12_g243 = off.yz;
				    UV22_g243 = off.xw;
				    UV32_g243 = off.yw;
				    W02_g243 = s.x / ( s.x + s.y );
				 W12_g243 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g243 = lerp( tex2D( _HeightMap, UV32_g243 ) , tex2D( _HeightMap, UV22_g243 ) , W02_g243);
				float4 lerpResult45_g243 = lerp( tex2D( _HeightMap, UV12_g243 ) , tex2D( _HeightMap, UV02_g243 ) , W02_g243);
				float4 lerpResult44_g243 = lerp( lerpResult46_g243 , lerpResult45_g243 , W12_g243);
				float4 Output_2D131_g243 = lerpResult44_g243;
				float lavaMaskMap229 = saturate( ( ( projNormal10_g242.x * Output_2D131_g244 ) + ( projNormal10_g242.y * Output_2D131_g245 ) + ( projNormal10_g242.z * Output_2D131_g243 ) ) ).r;
				float dotResult254 = dot( ase_tanViewDir , normalUnpacked196 );
				float lavaMask272 = saturate( ( magmaDetial234.r + ( saturate( ( saturate( pow( max( 0.0 , saturate( ( 1.0 - lavaMaskMap229 ) ) ) , _LavaMaskFactorsX ) ) * _LavaMaskFactorsY ) ) * saturate( ( saturate( pow( max( 0.0 , dotResult254 ) , _LavaMaskPower ) ) * _LavaMaskBoost ) ) ) ) );
				float4 lerpResult274 = lerp( _MagmaColorMin , _MagmaColorMax , lavaMask272);
				float4 lavaColor277 = ( saturate( ( ( projNormal10_g215.x * Output_2D131_g217 ) + ( projNormal10_g215.y * Output_2D131_g218 ) + ( projNormal10_g215.z * Output_2D131_g216 ) ) ) * lerpResult274 * _MagmaGlow );
				
				float smooth388 = ( ( 1.0 - detailTex146 ) * _Smoothness );
				
				surfaceDescription.BaseColor = ( baseColor213 + fresnel268 );
				surfaceDescription.Normal = normalUnpacked196;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = 0;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = ( float4( fresnel268 , 0.0 ) + spec390 ).rgb;
				#endif

				surfaceDescription.Emission = (( lavaColor277 * lavaMask272 )).rgb;
				surfaceDescription.Smoothness = ( fresnel268 * smooth388 ).x;
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
			float4 _LavaLow;
			float4 _MagmaMap_TexelSize;
			float4 _MagmaColorMax;
			float4 _MagmaColorMin;
			float4 _DistortionMap_TexelSize;
			float4 _FresnelColor;
			float4 _NormalMap_TexelSize;
			float4 _LavaHigh;
			float4 _SpecularColor;
			float4 _HeightMap_TexelSize;
			float4 _LavaMid;
			float4 _DetailMap_TexelSize;
			float _LavaDetail;
			float _LavaMaskBoost;
			float _LavaMaskPower;
			float _LavaMaskFactorsY;
			float _LavaMaskFactorsX;
			float _LavaMaskTiling;
			float _MagmaBoost;
			float _MagmaPower;
			float _MagmaTiling;
			float _DetailExp;
			float _DetailTiling;
			float _DistortionFactor;
			float _DistortionUVSpeed;
			float _DistortionUVTiling;
			float _DistortionSpeed;
			float _DistortionTiling;
			float _SpecularBoost;
			float _MagmaGlow;
			float _Specular;
			float _HeightTiling;
			float _FrenselMult;
			float _FresnelPower;
			float _NormalScale;
			float _NormalTiling;
			float _HeightDetail;
			float _LavaFactorsZ;
			float _LavaFactorsY;
			float _LavaFactorsX;
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

			sampler2D _DetailMap;
			sampler2D _HeightMap;
			sampler2D _NormalMap;
			sampler2D _DistortionMap;
			sampler2D _MagmaMap;


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
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_VERT_NORMAL


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

				float3 ase_worldTangent = TransformObjectToWorldDir(inputMesh.tangentOS.xyz);
				outputPackedVaryingsMeshToPS.ase_texcoord3.xyz = ase_worldTangent;
				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
				outputPackedVaryingsMeshToPS.ase_texcoord4.xyz = ase_worldNormal;
				float ase_vertexTangentSign = inputMesh.tangentOS.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				outputPackedVaryingsMeshToPS.ase_texcoord5.xyz = ase_worldBitangent;
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.positionOS).xyz ) );
				outputPackedVaryingsMeshToPS.ase_texcoord6.xyz = ase_worldPos;
				
				outputPackedVaryingsMeshToPS.ase_normal = inputMesh.normalOS;
				outputPackedVaryingsMeshToPS.ase_texcoord2 = float4(inputMesh.positionOS,1);
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord3.w = 0;
				outputPackedVaryingsMeshToPS.ase_texcoord4.w = 0;
				outputPackedVaryingsMeshToPS.ase_texcoord5.w = 0;
				outputPackedVaryingsMeshToPS.ase_texcoord6.w = 0;

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
				float3 temp_cast_2 = (3.0).xxx;
				float3 temp_output_4_0_g237 = pow( abs( packedInput.ase_normal ) , temp_cast_2 );
				float3 break6_g237 = temp_output_4_0_g237;
				float3 projNormal10_g237 = ( temp_output_4_0_g237 / ( break6_g237.x + break6_g237.y + break6_g237.z ) );
				float localBicubicPrepare2_g239 = ( 0.0 );
				float3 break26_g237 = packedInput.ase_texcoord2.xyz;
				float2 appendResult27_g237 = (float2(break26_g237.z , break26_g237.y));
				float3 nSign18_g237 = sign( packedInput.ase_normal );
				float3 break20_g237 = nSign18_g237;
				float2 appendResult21_g237 = (float2(break20_g237.x , 1.0));
				float temp_output_29_0_g237 = _DetailTiling;
				float2 temp_output_65_0_g237 = float2( 0,0 );
				float2 temp_output_68_0_g237 = ( ( appendResult27_g237 * appendResult21_g237 * temp_output_29_0_g237 ) + temp_output_65_0_g237 );
				float2 Input_UV100_g239 = temp_output_68_0_g237;
				float2 UV2_g239 = Input_UV100_g239;
				float4 TexelSize2_g239 = _DetailMap_TexelSize;
				float2 UV02_g239 = float2( 0,0 );
				float2 UV12_g239 = float2( 0,0 );
				float2 UV22_g239 = float2( 0,0 );
				float2 UV32_g239 = float2( 0,0 );
				float W02_g239 = 0;
				float W12_g239 = 0;
				{
				{
				 UV2_g239 = UV2_g239 * TexelSize2_g239.zw - 0.5;
				    float2 f = frac( UV2_g239 );
				    UV2_g239 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g239.x - 0.5, UV2_g239.x + 1.5, UV2_g239.y - 0.5, UV2_g239.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g239.xyxy;
				    UV02_g239 = off.xz;
				    UV12_g239 = off.yz;
				    UV22_g239 = off.xw;
				    UV32_g239 = off.yw;
				    W02_g239 = s.x / ( s.x + s.y );
				 W12_g239 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g239 = lerp( tex2D( _DetailMap, UV32_g239 ) , tex2D( _DetailMap, UV22_g239 ) , W02_g239);
				float4 lerpResult45_g239 = lerp( tex2D( _DetailMap, UV12_g239 ) , tex2D( _DetailMap, UV02_g239 ) , W02_g239);
				float4 lerpResult44_g239 = lerp( lerpResult46_g239 , lerpResult45_g239 , W12_g239);
				float4 Output_2D131_g239 = lerpResult44_g239;
				float localBicubicPrepare2_g240 = ( 0.0 );
				float2 appendResult32_g237 = (float2(break26_g237.x , break26_g237.z));
				float2 appendResult22_g237 = (float2(break20_g237.y , 1.0));
				float2 temp_output_66_0_g237 = ( ( temp_output_29_0_g237 * appendResult32_g237 * appendResult22_g237 ) + temp_output_65_0_g237 );
				float2 Input_UV100_g240 = temp_output_66_0_g237;
				float2 UV2_g240 = Input_UV100_g240;
				float4 TexelSize2_g240 = _DetailMap_TexelSize;
				float2 UV02_g240 = float2( 0,0 );
				float2 UV12_g240 = float2( 0,0 );
				float2 UV22_g240 = float2( 0,0 );
				float2 UV32_g240 = float2( 0,0 );
				float W02_g240 = 0;
				float W12_g240 = 0;
				{
				{
				 UV2_g240 = UV2_g240 * TexelSize2_g240.zw - 0.5;
				    float2 f = frac( UV2_g240 );
				    UV2_g240 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g240.x - 0.5, UV2_g240.x + 1.5, UV2_g240.y - 0.5, UV2_g240.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g240.xyxy;
				    UV02_g240 = off.xz;
				    UV12_g240 = off.yz;
				    UV22_g240 = off.xw;
				    UV32_g240 = off.yw;
				    W02_g240 = s.x / ( s.x + s.y );
				 W12_g240 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g240 = lerp( tex2D( _DetailMap, UV32_g240 ) , tex2D( _DetailMap, UV22_g240 ) , W02_g240);
				float4 lerpResult45_g240 = lerp( tex2D( _DetailMap, UV12_g240 ) , tex2D( _DetailMap, UV02_g240 ) , W02_g240);
				float4 lerpResult44_g240 = lerp( lerpResult46_g240 , lerpResult45_g240 , W12_g240);
				float4 Output_2D131_g240 = lerpResult44_g240;
				float localBicubicPrepare2_g238 = ( 0.0 );
				float2 appendResult34_g237 = (float2(break26_g237.x , break26_g237.y));
				float2 appendResult25_g237 = (float2(-break20_g237.z , 1.0));
				float2 temp_output_67_0_g237 = ( temp_output_65_0_g237 + ( temp_output_29_0_g237 * appendResult34_g237 * appendResult25_g237 ) );
				float2 Input_UV100_g238 = temp_output_67_0_g237;
				float2 UV2_g238 = Input_UV100_g238;
				float4 TexelSize2_g238 = _DetailMap_TexelSize;
				float2 UV02_g238 = float2( 0,0 );
				float2 UV12_g238 = float2( 0,0 );
				float2 UV22_g238 = float2( 0,0 );
				float2 UV32_g238 = float2( 0,0 );
				float W02_g238 = 0;
				float W12_g238 = 0;
				{
				{
				 UV2_g238 = UV2_g238 * TexelSize2_g238.zw - 0.5;
				    float2 f = frac( UV2_g238 );
				    UV2_g238 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g238.x - 0.5, UV2_g238.x + 1.5, UV2_g238.y - 0.5, UV2_g238.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g238.xyxy;
				    UV02_g238 = off.xz;
				    UV12_g238 = off.yz;
				    UV22_g238 = off.xw;
				    UV32_g238 = off.yw;
				    W02_g238 = s.x / ( s.x + s.y );
				 W12_g238 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g238 = lerp( tex2D( _DetailMap, UV32_g238 ) , tex2D( _DetailMap, UV22_g238 ) , W02_g238);
				float4 lerpResult45_g238 = lerp( tex2D( _DetailMap, UV12_g238 ) , tex2D( _DetailMap, UV02_g238 ) , W02_g238);
				float4 lerpResult44_g238 = lerp( lerpResult46_g238 , lerpResult45_g238 , W12_g238);
				float4 Output_2D131_g238 = lerpResult44_g238;
				float4 break138 = saturate( ( ( projNormal10_g237.x * Output_2D131_g239 ) + ( projNormal10_g237.y * Output_2D131_g240 ) + ( projNormal10_g237.z * Output_2D131_g238 ) ) );
				float detailTex146 = saturate( ( _DetailExp * pow( max( 0.0 , ( break138.r * break138.g ) ) , _DetailExp ) * 5000.0 ) );
				float3 temp_cast_3 = (3.0).xxx;
				float3 temp_output_4_0_g232 = pow( abs( packedInput.ase_normal ) , temp_cast_3 );
				float3 break6_g232 = temp_output_4_0_g232;
				float3 projNormal10_g232 = ( temp_output_4_0_g232 / ( break6_g232.x + break6_g232.y + break6_g232.z ) );
				float localBicubicPrepare2_g234 = ( 0.0 );
				float3 break26_g232 = packedInput.ase_texcoord2.xyz;
				float2 appendResult27_g232 = (float2(break26_g232.z , break26_g232.y));
				float3 nSign18_g232 = sign( packedInput.ase_normal );
				float3 break20_g232 = nSign18_g232;
				float2 appendResult21_g232 = (float2(break20_g232.x , 1.0));
				float temp_output_29_0_g232 = _HeightTiling;
				float2 temp_output_65_0_g232 = float2( 0,0 );
				float2 temp_output_68_0_g232 = ( ( appendResult27_g232 * appendResult21_g232 * temp_output_29_0_g232 ) + temp_output_65_0_g232 );
				float2 Input_UV100_g234 = temp_output_68_0_g232;
				float2 UV2_g234 = Input_UV100_g234;
				float4 TexelSize2_g234 = _HeightMap_TexelSize;
				float2 UV02_g234 = float2( 0,0 );
				float2 UV12_g234 = float2( 0,0 );
				float2 UV22_g234 = float2( 0,0 );
				float2 UV32_g234 = float2( 0,0 );
				float W02_g234 = 0;
				float W12_g234 = 0;
				{
				{
				 UV2_g234 = UV2_g234 * TexelSize2_g234.zw - 0.5;
				    float2 f = frac( UV2_g234 );
				    UV2_g234 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g234.x - 0.5, UV2_g234.x + 1.5, UV2_g234.y - 0.5, UV2_g234.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g234.xyxy;
				    UV02_g234 = off.xz;
				    UV12_g234 = off.yz;
				    UV22_g234 = off.xw;
				    UV32_g234 = off.yw;
				    W02_g234 = s.x / ( s.x + s.y );
				 W12_g234 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g234 = lerp( tex2D( _HeightMap, UV32_g234 ) , tex2D( _HeightMap, UV22_g234 ) , W02_g234);
				float4 lerpResult45_g234 = lerp( tex2D( _HeightMap, UV12_g234 ) , tex2D( _HeightMap, UV02_g234 ) , W02_g234);
				float4 lerpResult44_g234 = lerp( lerpResult46_g234 , lerpResult45_g234 , W12_g234);
				float4 Output_2D131_g234 = lerpResult44_g234;
				float localBicubicPrepare2_g235 = ( 0.0 );
				float2 appendResult32_g232 = (float2(break26_g232.x , break26_g232.z));
				float2 appendResult22_g232 = (float2(break20_g232.y , 1.0));
				float2 temp_output_66_0_g232 = ( ( temp_output_29_0_g232 * appendResult32_g232 * appendResult22_g232 ) + temp_output_65_0_g232 );
				float2 Input_UV100_g235 = temp_output_66_0_g232;
				float2 UV2_g235 = Input_UV100_g235;
				float4 TexelSize2_g235 = _HeightMap_TexelSize;
				float2 UV02_g235 = float2( 0,0 );
				float2 UV12_g235 = float2( 0,0 );
				float2 UV22_g235 = float2( 0,0 );
				float2 UV32_g235 = float2( 0,0 );
				float W02_g235 = 0;
				float W12_g235 = 0;
				{
				{
				 UV2_g235 = UV2_g235 * TexelSize2_g235.zw - 0.5;
				    float2 f = frac( UV2_g235 );
				    UV2_g235 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g235.x - 0.5, UV2_g235.x + 1.5, UV2_g235.y - 0.5, UV2_g235.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g235.xyxy;
				    UV02_g235 = off.xz;
				    UV12_g235 = off.yz;
				    UV22_g235 = off.xw;
				    UV32_g235 = off.yw;
				    W02_g235 = s.x / ( s.x + s.y );
				 W12_g235 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g235 = lerp( tex2D( _HeightMap, UV32_g235 ) , tex2D( _HeightMap, UV22_g235 ) , W02_g235);
				float4 lerpResult45_g235 = lerp( tex2D( _HeightMap, UV12_g235 ) , tex2D( _HeightMap, UV02_g235 ) , W02_g235);
				float4 lerpResult44_g235 = lerp( lerpResult46_g235 , lerpResult45_g235 , W12_g235);
				float4 Output_2D131_g235 = lerpResult44_g235;
				float localBicubicPrepare2_g233 = ( 0.0 );
				float2 appendResult34_g232 = (float2(break26_g232.x , break26_g232.y));
				float2 appendResult25_g232 = (float2(-break20_g232.z , 1.0));
				float2 temp_output_67_0_g232 = ( temp_output_65_0_g232 + ( temp_output_29_0_g232 * appendResult34_g232 * appendResult25_g232 ) );
				float2 Input_UV100_g233 = temp_output_67_0_g232;
				float2 UV2_g233 = Input_UV100_g233;
				float4 TexelSize2_g233 = _HeightMap_TexelSize;
				float2 UV02_g233 = float2( 0,0 );
				float2 UV12_g233 = float2( 0,0 );
				float2 UV22_g233 = float2( 0,0 );
				float2 UV32_g233 = float2( 0,0 );
				float W02_g233 = 0;
				float W12_g233 = 0;
				{
				{
				 UV2_g233 = UV2_g233 * TexelSize2_g233.zw - 0.5;
				    float2 f = frac( UV2_g233 );
				    UV2_g233 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g233.x - 0.5, UV2_g233.x + 1.5, UV2_g233.y - 0.5, UV2_g233.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g233.xyxy;
				    UV02_g233 = off.xz;
				    UV12_g233 = off.yz;
				    UV22_g233 = off.xw;
				    UV32_g233 = off.yw;
				    W02_g233 = s.x / ( s.x + s.y );
				 W12_g233 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g233 = lerp( tex2D( _HeightMap, UV32_g233 ) , tex2D( _HeightMap, UV22_g233 ) , W02_g233);
				float4 lerpResult45_g233 = lerp( tex2D( _HeightMap, UV12_g233 ) , tex2D( _HeightMap, UV02_g233 ) , W02_g233);
				float4 lerpResult44_g233 = lerp( lerpResult46_g233 , lerpResult45_g233 , W12_g233);
				float4 Output_2D131_g233 = lerpResult44_g233;
				float detaledHeight167 = saturate( ( detailTex146 * saturate( ( saturate( ( ( projNormal10_g232.x * Output_2D131_g234 ) + ( projNormal10_g232.y * Output_2D131_g235 ) + ( projNormal10_g232.z * Output_2D131_g233 ) ) ).r * _HeightDetail ) ) ) );
				float temp_output_2_0_g241 = saturate( ( _LavaFactorsX - _LavaDetail ) );
				float detaledHeight01178 = saturate( saturate( ( ( detaledHeight167 - temp_output_2_0_g241 ) / ( saturate( ( _LavaFactorsY - _LavaDetail ) ) - temp_output_2_0_g241 ) ) ) );
				float temp_output_6_0_g227 = ( detaledHeight01178 / _LavaFactorsZ );
				float3 lerpResult8_g227 = lerp( _LavaLow.rgb , _LavaMid.rgb , saturate( temp_output_6_0_g227 ));
				float3 lerpResult12_g227 = lerp( lerpResult8_g227 , _LavaHigh.rgb , saturate( ( temp_output_6_0_g227 - 1.0 ) ));
				float3 baseColor213 = lerpResult12_g227;
				float3 ase_worldTangent = packedInput.ase_texcoord3.xyz;
				float3 ase_worldNormal = packedInput.ase_texcoord4.xyz;
				float3 ase_worldBitangent = packedInput.ase_texcoord5.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 ase_worldPos = packedInput.ase_texcoord6.xyz;
				float3 ase_worldViewDir = ( _WorldSpaceCameraPos.xyz - ase_worldPos );
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_tanViewDir =  tanToWorld0 * ase_worldViewDir.x + tanToWorld1 * ase_worldViewDir.y  + tanToWorld2 * ase_worldViewDir.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float3 temp_cast_5 = (3.0).xxx;
				float3 temp_output_4_0_g228 = pow( abs( packedInput.ase_normal ) , temp_cast_5 );
				float3 break6_g228 = temp_output_4_0_g228;
				float3 projNormal10_g228 = ( temp_output_4_0_g228 / ( break6_g228.x + break6_g228.y + break6_g228.z ) );
				float localBicubicPrepare2_g230 = ( 0.0 );
				float3 break26_g228 = packedInput.ase_texcoord2.xyz;
				float2 appendResult27_g228 = (float2(break26_g228.z , break26_g228.y));
				float3 nSign18_g228 = sign( packedInput.ase_normal );
				float3 break20_g228 = nSign18_g228;
				float2 appendResult21_g228 = (float2(break20_g228.x , 1.0));
				float temp_output_29_0_g228 = _NormalTiling;
				float2 temp_output_65_0_g228 = float2( 0,0 );
				float2 temp_output_68_0_g228 = ( ( appendResult27_g228 * appendResult21_g228 * temp_output_29_0_g228 ) + temp_output_65_0_g228 );
				float2 Input_UV100_g230 = temp_output_68_0_g228;
				float2 UV2_g230 = Input_UV100_g230;
				float4 TexelSize2_g230 = _NormalMap_TexelSize;
				float2 UV02_g230 = float2( 0,0 );
				float2 UV12_g230 = float2( 0,0 );
				float2 UV22_g230 = float2( 0,0 );
				float2 UV32_g230 = float2( 0,0 );
				float W02_g230 = 0;
				float W12_g230 = 0;
				{
				{
				 UV2_g230 = UV2_g230 * TexelSize2_g230.zw - 0.5;
				    float2 f = frac( UV2_g230 );
				    UV2_g230 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g230.x - 0.5, UV2_g230.x + 1.5, UV2_g230.y - 0.5, UV2_g230.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g230.xyxy;
				    UV02_g230 = off.xz;
				    UV12_g230 = off.yz;
				    UV22_g230 = off.xw;
				    UV32_g230 = off.yw;
				    W02_g230 = s.x / ( s.x + s.y );
				 W12_g230 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g230 = lerp( tex2D( _NormalMap, UV32_g230 ) , tex2D( _NormalMap, UV22_g230 ) , W02_g230);
				float4 lerpResult45_g230 = lerp( tex2D( _NormalMap, UV12_g230 ) , tex2D( _NormalMap, UV02_g230 ) , W02_g230);
				float4 lerpResult44_g230 = lerp( lerpResult46_g230 , lerpResult45_g230 , W12_g230);
				float4 Output_2D131_g230 = lerpResult44_g230;
				float localBicubicPrepare2_g231 = ( 0.0 );
				float2 appendResult32_g228 = (float2(break26_g228.x , break26_g228.z));
				float2 appendResult22_g228 = (float2(break20_g228.y , 1.0));
				float2 temp_output_66_0_g228 = ( ( temp_output_29_0_g228 * appendResult32_g228 * appendResult22_g228 ) + temp_output_65_0_g228 );
				float2 Input_UV100_g231 = temp_output_66_0_g228;
				float2 UV2_g231 = Input_UV100_g231;
				float4 TexelSize2_g231 = _NormalMap_TexelSize;
				float2 UV02_g231 = float2( 0,0 );
				float2 UV12_g231 = float2( 0,0 );
				float2 UV22_g231 = float2( 0,0 );
				float2 UV32_g231 = float2( 0,0 );
				float W02_g231 = 0;
				float W12_g231 = 0;
				{
				{
				 UV2_g231 = UV2_g231 * TexelSize2_g231.zw - 0.5;
				    float2 f = frac( UV2_g231 );
				    UV2_g231 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g231.x - 0.5, UV2_g231.x + 1.5, UV2_g231.y - 0.5, UV2_g231.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g231.xyxy;
				    UV02_g231 = off.xz;
				    UV12_g231 = off.yz;
				    UV22_g231 = off.xw;
				    UV32_g231 = off.yw;
				    W02_g231 = s.x / ( s.x + s.y );
				 W12_g231 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g231 = lerp( tex2D( _NormalMap, UV32_g231 ) , tex2D( _NormalMap, UV22_g231 ) , W02_g231);
				float4 lerpResult45_g231 = lerp( tex2D( _NormalMap, UV12_g231 ) , tex2D( _NormalMap, UV02_g231 ) , W02_g231);
				float4 lerpResult44_g231 = lerp( lerpResult46_g231 , lerpResult45_g231 , W12_g231);
				float4 Output_2D131_g231 = lerpResult44_g231;
				float localBicubicPrepare2_g229 = ( 0.0 );
				float2 appendResult34_g228 = (float2(break26_g228.x , break26_g228.y));
				float2 appendResult25_g228 = (float2(-break20_g228.z , 1.0));
				float2 temp_output_67_0_g228 = ( temp_output_65_0_g228 + ( temp_output_29_0_g228 * appendResult34_g228 * appendResult25_g228 ) );
				float2 Input_UV100_g229 = temp_output_67_0_g228;
				float2 UV2_g229 = Input_UV100_g229;
				float4 TexelSize2_g229 = _NormalMap_TexelSize;
				float2 UV02_g229 = float2( 0,0 );
				float2 UV12_g229 = float2( 0,0 );
				float2 UV22_g229 = float2( 0,0 );
				float2 UV32_g229 = float2( 0,0 );
				float W02_g229 = 0;
				float W12_g229 = 0;
				{
				{
				 UV2_g229 = UV2_g229 * TexelSize2_g229.zw - 0.5;
				    float2 f = frac( UV2_g229 );
				    UV2_g229 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g229.x - 0.5, UV2_g229.x + 1.5, UV2_g229.y - 0.5, UV2_g229.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g229.xyxy;
				    UV02_g229 = off.xz;
				    UV12_g229 = off.yz;
				    UV22_g229 = off.xw;
				    UV32_g229 = off.yw;
				    W02_g229 = s.x / ( s.x + s.y );
				 W12_g229 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g229 = lerp( tex2D( _NormalMap, UV32_g229 ) , tex2D( _NormalMap, UV22_g229 ) , W02_g229);
				float4 lerpResult45_g229 = lerp( tex2D( _NormalMap, UV12_g229 ) , tex2D( _NormalMap, UV02_g229 ) , W02_g229);
				float4 lerpResult44_g229 = lerp( lerpResult46_g229 , lerpResult45_g229 , W12_g229);
				float4 Output_2D131_g229 = lerpResult44_g229;
				float3 unpack195 = UnpackNormalScale( saturate( ( ( projNormal10_g228.x * Output_2D131_g230 ) + ( projNormal10_g228.y * Output_2D131_g231 ) + ( projNormal10_g228.z * Output_2D131_g229 ) ) ), _NormalScale );
				unpack195.z = lerp( 1, unpack195.z, saturate(_NormalScale) );
				float3 normalUnpacked196 = unpack195;
				float3 normalizeResult5_g236 = normalize( normalUnpacked196 );
				float dotResult14_g236 = dot( ase_tanViewDir , normalizeResult5_g236 );
				float detailX235 = break138.r;
				float3 fresnel268 = saturate( ( ( ( saturate( pow( max( 0.0 , saturate( ( 1.0 - dotResult14_g236 ) ) ) , _FresnelPower ) ) * _FrenselMult ) * (_FresnelColor).rgb ) * detailX235 ) );
				
				float4 spec390 = saturate( ( detailTex146 * _Specular * _SpecularColor * _SpecularBoost ) );
				
				float3 temp_cast_9 = (3.0).xxx;
				float3 temp_output_4_0_g215 = pow( abs( packedInput.ase_normal ) , temp_cast_9 );
				float3 break6_g215 = temp_output_4_0_g215;
				float3 projNormal10_g215 = ( temp_output_4_0_g215 / ( break6_g215.x + break6_g215.y + break6_g215.z ) );
				float localBicubicPrepare2_g217 = ( 0.0 );
				float3 break26_g215 = packedInput.ase_texcoord2.xyz;
				float2 appendResult27_g215 = (float2(break26_g215.z , break26_g215.y));
				float3 nSign18_g215 = sign( packedInput.ase_normal );
				float3 break20_g215 = nSign18_g215;
				float2 appendResult21_g215 = (float2(break20_g215.x , 1.0));
				float temp_output_29_0_g215 = _DistortionTiling;
				float temp_output_10_0_g214 = ( _TimeParameters.x * _DistortionSpeed );
				float2 appendResult12_g214 = (float2(temp_output_10_0_g214 , temp_output_10_0_g214));
				float3 temp_cast_10 = (3.0).xxx;
				float3 temp_output_4_0_g219 = pow( abs( packedInput.ase_normal ) , temp_cast_10 );
				float3 break6_g219 = temp_output_4_0_g219;
				float3 projNormal10_g219 = ( temp_output_4_0_g219 / ( break6_g219.x + break6_g219.y + break6_g219.z ) );
				float localBicubicPrepare2_g221 = ( 0.0 );
				float3 break26_g219 = packedInput.ase_texcoord2.xyz;
				float2 appendResult27_g219 = (float2(break26_g219.z , break26_g219.y));
				float3 nSign18_g219 = sign( packedInput.ase_normal );
				float3 break20_g219 = nSign18_g219;
				float2 appendResult21_g219 = (float2(break20_g219.x , 1.0));
				float temp_output_29_0_g219 = _DistortionUVTiling;
				float temp_output_2_0_g214 = ( _TimeParameters.x * _DistortionUVSpeed );
				float2 appendResult5_g214 = (float2(temp_output_2_0_g214 , temp_output_2_0_g214));
				float2 temp_output_65_0_g219 = appendResult5_g214;
				float2 temp_output_68_0_g219 = ( ( appendResult27_g219 * appendResult21_g219 * temp_output_29_0_g219 ) + temp_output_65_0_g219 );
				float2 Input_UV100_g221 = temp_output_68_0_g219;
				float2 UV2_g221 = Input_UV100_g221;
				float4 TexelSize2_g221 = _DistortionMap_TexelSize;
				float2 UV02_g221 = float2( 0,0 );
				float2 UV12_g221 = float2( 0,0 );
				float2 UV22_g221 = float2( 0,0 );
				float2 UV32_g221 = float2( 0,0 );
				float W02_g221 = 0;
				float W12_g221 = 0;
				{
				{
				 UV2_g221 = UV2_g221 * TexelSize2_g221.zw - 0.5;
				    float2 f = frac( UV2_g221 );
				    UV2_g221 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g221.x - 0.5, UV2_g221.x + 1.5, UV2_g221.y - 0.5, UV2_g221.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g221.xyxy;
				    UV02_g221 = off.xz;
				    UV12_g221 = off.yz;
				    UV22_g221 = off.xw;
				    UV32_g221 = off.yw;
				    W02_g221 = s.x / ( s.x + s.y );
				 W12_g221 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g221 = lerp( tex2D( _DistortionMap, UV32_g221 ) , tex2D( _DistortionMap, UV22_g221 ) , W02_g221);
				float4 lerpResult45_g221 = lerp( tex2D( _DistortionMap, UV12_g221 ) , tex2D( _DistortionMap, UV02_g221 ) , W02_g221);
				float4 lerpResult44_g221 = lerp( lerpResult46_g221 , lerpResult45_g221 , W12_g221);
				float4 Output_2D131_g221 = lerpResult44_g221;
				float localBicubicPrepare2_g222 = ( 0.0 );
				float2 appendResult32_g219 = (float2(break26_g219.x , break26_g219.z));
				float2 appendResult22_g219 = (float2(break20_g219.y , 1.0));
				float2 temp_output_66_0_g219 = ( ( temp_output_29_0_g219 * appendResult32_g219 * appendResult22_g219 ) + temp_output_65_0_g219 );
				float2 Input_UV100_g222 = temp_output_66_0_g219;
				float2 UV2_g222 = Input_UV100_g222;
				float4 TexelSize2_g222 = _DistortionMap_TexelSize;
				float2 UV02_g222 = float2( 0,0 );
				float2 UV12_g222 = float2( 0,0 );
				float2 UV22_g222 = float2( 0,0 );
				float2 UV32_g222 = float2( 0,0 );
				float W02_g222 = 0;
				float W12_g222 = 0;
				{
				{
				 UV2_g222 = UV2_g222 * TexelSize2_g222.zw - 0.5;
				    float2 f = frac( UV2_g222 );
				    UV2_g222 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g222.x - 0.5, UV2_g222.x + 1.5, UV2_g222.y - 0.5, UV2_g222.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g222.xyxy;
				    UV02_g222 = off.xz;
				    UV12_g222 = off.yz;
				    UV22_g222 = off.xw;
				    UV32_g222 = off.yw;
				    W02_g222 = s.x / ( s.x + s.y );
				 W12_g222 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g222 = lerp( tex2D( _DistortionMap, UV32_g222 ) , tex2D( _DistortionMap, UV22_g222 ) , W02_g222);
				float4 lerpResult45_g222 = lerp( tex2D( _DistortionMap, UV12_g222 ) , tex2D( _DistortionMap, UV02_g222 ) , W02_g222);
				float4 lerpResult44_g222 = lerp( lerpResult46_g222 , lerpResult45_g222 , W12_g222);
				float4 Output_2D131_g222 = lerpResult44_g222;
				float localBicubicPrepare2_g220 = ( 0.0 );
				float2 appendResult34_g219 = (float2(break26_g219.x , break26_g219.y));
				float2 appendResult25_g219 = (float2(-break20_g219.z , 1.0));
				float2 temp_output_67_0_g219 = ( temp_output_65_0_g219 + ( temp_output_29_0_g219 * appendResult34_g219 * appendResult25_g219 ) );
				float2 Input_UV100_g220 = temp_output_67_0_g219;
				float2 UV2_g220 = Input_UV100_g220;
				float4 TexelSize2_g220 = _DistortionMap_TexelSize;
				float2 UV02_g220 = float2( 0,0 );
				float2 UV12_g220 = float2( 0,0 );
				float2 UV22_g220 = float2( 0,0 );
				float2 UV32_g220 = float2( 0,0 );
				float W02_g220 = 0;
				float W12_g220 = 0;
				{
				{
				 UV2_g220 = UV2_g220 * TexelSize2_g220.zw - 0.5;
				    float2 f = frac( UV2_g220 );
				    UV2_g220 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g220.x - 0.5, UV2_g220.x + 1.5, UV2_g220.y - 0.5, UV2_g220.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g220.xyxy;
				    UV02_g220 = off.xz;
				    UV12_g220 = off.yz;
				    UV22_g220 = off.xw;
				    UV32_g220 = off.yw;
				    W02_g220 = s.x / ( s.x + s.y );
				 W12_g220 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g220 = lerp( tex2D( _DistortionMap, UV32_g220 ) , tex2D( _DistortionMap, UV22_g220 ) , W02_g220);
				float4 lerpResult45_g220 = lerp( tex2D( _DistortionMap, UV12_g220 ) , tex2D( _DistortionMap, UV02_g220 ) , W02_g220);
				float4 lerpResult44_g220 = lerp( lerpResult46_g220 , lerpResult45_g220 , W12_g220);
				float4 Output_2D131_g220 = lerpResult44_g220;
				float4 break11_g214 = ( saturate( ( ( projNormal10_g219.x * Output_2D131_g221 ) + ( projNormal10_g219.y * Output_2D131_g222 ) + ( projNormal10_g219.z * Output_2D131_g220 ) ) ) * _DistortionFactor );
				float2 appendResult13_g214 = (float2(break11_g214.r , break11_g214.g));
				float2 temp_output_65_0_g215 = ( appendResult12_g214 + appendResult13_g214 );
				float2 temp_output_68_0_g215 = ( ( appendResult27_g215 * appendResult21_g215 * temp_output_29_0_g215 ) + temp_output_65_0_g215 );
				float2 Input_UV100_g217 = temp_output_68_0_g215;
				float2 UV2_g217 = Input_UV100_g217;
				float4 TexelSize2_g217 = _DistortionMap_TexelSize;
				float2 UV02_g217 = float2( 0,0 );
				float2 UV12_g217 = float2( 0,0 );
				float2 UV22_g217 = float2( 0,0 );
				float2 UV32_g217 = float2( 0,0 );
				float W02_g217 = 0;
				float W12_g217 = 0;
				{
				{
				 UV2_g217 = UV2_g217 * TexelSize2_g217.zw - 0.5;
				    float2 f = frac( UV2_g217 );
				    UV2_g217 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g217.x - 0.5, UV2_g217.x + 1.5, UV2_g217.y - 0.5, UV2_g217.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g217.xyxy;
				    UV02_g217 = off.xz;
				    UV12_g217 = off.yz;
				    UV22_g217 = off.xw;
				    UV32_g217 = off.yw;
				    W02_g217 = s.x / ( s.x + s.y );
				 W12_g217 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g217 = lerp( tex2D( _DistortionMap, UV32_g217 ) , tex2D( _DistortionMap, UV22_g217 ) , W02_g217);
				float4 lerpResult45_g217 = lerp( tex2D( _DistortionMap, UV12_g217 ) , tex2D( _DistortionMap, UV02_g217 ) , W02_g217);
				float4 lerpResult44_g217 = lerp( lerpResult46_g217 , lerpResult45_g217 , W12_g217);
				float4 Output_2D131_g217 = lerpResult44_g217;
				float localBicubicPrepare2_g218 = ( 0.0 );
				float2 appendResult32_g215 = (float2(break26_g215.x , break26_g215.z));
				float2 appendResult22_g215 = (float2(break20_g215.y , 1.0));
				float2 temp_output_66_0_g215 = ( ( temp_output_29_0_g215 * appendResult32_g215 * appendResult22_g215 ) + temp_output_65_0_g215 );
				float2 Input_UV100_g218 = temp_output_66_0_g215;
				float2 UV2_g218 = Input_UV100_g218;
				float4 TexelSize2_g218 = _DistortionMap_TexelSize;
				float2 UV02_g218 = float2( 0,0 );
				float2 UV12_g218 = float2( 0,0 );
				float2 UV22_g218 = float2( 0,0 );
				float2 UV32_g218 = float2( 0,0 );
				float W02_g218 = 0;
				float W12_g218 = 0;
				{
				{
				 UV2_g218 = UV2_g218 * TexelSize2_g218.zw - 0.5;
				    float2 f = frac( UV2_g218 );
				    UV2_g218 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g218.x - 0.5, UV2_g218.x + 1.5, UV2_g218.y - 0.5, UV2_g218.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g218.xyxy;
				    UV02_g218 = off.xz;
				    UV12_g218 = off.yz;
				    UV22_g218 = off.xw;
				    UV32_g218 = off.yw;
				    W02_g218 = s.x / ( s.x + s.y );
				 W12_g218 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g218 = lerp( tex2D( _DistortionMap, UV32_g218 ) , tex2D( _DistortionMap, UV22_g218 ) , W02_g218);
				float4 lerpResult45_g218 = lerp( tex2D( _DistortionMap, UV12_g218 ) , tex2D( _DistortionMap, UV02_g218 ) , W02_g218);
				float4 lerpResult44_g218 = lerp( lerpResult46_g218 , lerpResult45_g218 , W12_g218);
				float4 Output_2D131_g218 = lerpResult44_g218;
				float localBicubicPrepare2_g216 = ( 0.0 );
				float2 appendResult34_g215 = (float2(break26_g215.x , break26_g215.y));
				float2 appendResult25_g215 = (float2(-break20_g215.z , 1.0));
				float2 temp_output_67_0_g215 = ( temp_output_65_0_g215 + ( temp_output_29_0_g215 * appendResult34_g215 * appendResult25_g215 ) );
				float2 Input_UV100_g216 = temp_output_67_0_g215;
				float2 UV2_g216 = Input_UV100_g216;
				float4 TexelSize2_g216 = _DistortionMap_TexelSize;
				float2 UV02_g216 = float2( 0,0 );
				float2 UV12_g216 = float2( 0,0 );
				float2 UV22_g216 = float2( 0,0 );
				float2 UV32_g216 = float2( 0,0 );
				float W02_g216 = 0;
				float W12_g216 = 0;
				{
				{
				 UV2_g216 = UV2_g216 * TexelSize2_g216.zw - 0.5;
				    float2 f = frac( UV2_g216 );
				    UV2_g216 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g216.x - 0.5, UV2_g216.x + 1.5, UV2_g216.y - 0.5, UV2_g216.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g216.xyxy;
				    UV02_g216 = off.xz;
				    UV12_g216 = off.yz;
				    UV22_g216 = off.xw;
				    UV32_g216 = off.yw;
				    W02_g216 = s.x / ( s.x + s.y );
				 W12_g216 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g216 = lerp( tex2D( _DistortionMap, UV32_g216 ) , tex2D( _DistortionMap, UV22_g216 ) , W02_g216);
				float4 lerpResult45_g216 = lerp( tex2D( _DistortionMap, UV12_g216 ) , tex2D( _DistortionMap, UV02_g216 ) , W02_g216);
				float4 lerpResult44_g216 = lerp( lerpResult46_g216 , lerpResult45_g216 , W12_g216);
				float4 Output_2D131_g216 = lerpResult44_g216;
				float3 temp_cast_11 = (3.0).xxx;
				float3 temp_output_4_0_g247 = pow( abs( packedInput.ase_normal ) , temp_cast_11 );
				float3 break6_g247 = temp_output_4_0_g247;
				float3 projNormal10_g247 = ( temp_output_4_0_g247 / ( break6_g247.x + break6_g247.y + break6_g247.z ) );
				float localBicubicPrepare2_g249 = ( 0.0 );
				float3 break26_g247 = packedInput.ase_texcoord2.xyz;
				float2 appendResult27_g247 = (float2(break26_g247.z , break26_g247.y));
				float3 nSign18_g247 = sign( packedInput.ase_normal );
				float3 break20_g247 = nSign18_g247;
				float2 appendResult21_g247 = (float2(break20_g247.x , 1.0));
				float temp_output_29_0_g247 = _MagmaTiling;
				float2 temp_output_65_0_g247 = float2( 0,0 );
				float2 temp_output_68_0_g247 = ( ( appendResult27_g247 * appendResult21_g247 * temp_output_29_0_g247 ) + temp_output_65_0_g247 );
				float2 Input_UV100_g249 = temp_output_68_0_g247;
				float2 UV2_g249 = Input_UV100_g249;
				float4 TexelSize2_g249 = _MagmaMap_TexelSize;
				float2 UV02_g249 = float2( 0,0 );
				float2 UV12_g249 = float2( 0,0 );
				float2 UV22_g249 = float2( 0,0 );
				float2 UV32_g249 = float2( 0,0 );
				float W02_g249 = 0;
				float W12_g249 = 0;
				{
				{
				 UV2_g249 = UV2_g249 * TexelSize2_g249.zw - 0.5;
				    float2 f = frac( UV2_g249 );
				    UV2_g249 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g249.x - 0.5, UV2_g249.x + 1.5, UV2_g249.y - 0.5, UV2_g249.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g249.xyxy;
				    UV02_g249 = off.xz;
				    UV12_g249 = off.yz;
				    UV22_g249 = off.xw;
				    UV32_g249 = off.yw;
				    W02_g249 = s.x / ( s.x + s.y );
				 W12_g249 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g249 = lerp( tex2D( _MagmaMap, UV32_g249 ) , tex2D( _MagmaMap, UV22_g249 ) , W02_g249);
				float4 lerpResult45_g249 = lerp( tex2D( _MagmaMap, UV12_g249 ) , tex2D( _MagmaMap, UV02_g249 ) , W02_g249);
				float4 lerpResult44_g249 = lerp( lerpResult46_g249 , lerpResult45_g249 , W12_g249);
				float4 Output_2D131_g249 = lerpResult44_g249;
				float localBicubicPrepare2_g250 = ( 0.0 );
				float2 appendResult32_g247 = (float2(break26_g247.x , break26_g247.z));
				float2 appendResult22_g247 = (float2(break20_g247.y , 1.0));
				float2 temp_output_66_0_g247 = ( ( temp_output_29_0_g247 * appendResult32_g247 * appendResult22_g247 ) + temp_output_65_0_g247 );
				float2 Input_UV100_g250 = temp_output_66_0_g247;
				float2 UV2_g250 = Input_UV100_g250;
				float4 TexelSize2_g250 = _MagmaMap_TexelSize;
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
				float4 lerpResult46_g250 = lerp( tex2D( _MagmaMap, UV32_g250 ) , tex2D( _MagmaMap, UV22_g250 ) , W02_g250);
				float4 lerpResult45_g250 = lerp( tex2D( _MagmaMap, UV12_g250 ) , tex2D( _MagmaMap, UV02_g250 ) , W02_g250);
				float4 lerpResult44_g250 = lerp( lerpResult46_g250 , lerpResult45_g250 , W12_g250);
				float4 Output_2D131_g250 = lerpResult44_g250;
				float localBicubicPrepare2_g248 = ( 0.0 );
				float2 appendResult34_g247 = (float2(break26_g247.x , break26_g247.y));
				float2 appendResult25_g247 = (float2(-break20_g247.z , 1.0));
				float2 temp_output_67_0_g247 = ( temp_output_65_0_g247 + ( temp_output_29_0_g247 * appendResult34_g247 * appendResult25_g247 ) );
				float2 Input_UV100_g248 = temp_output_67_0_g247;
				float2 UV2_g248 = Input_UV100_g248;
				float4 TexelSize2_g248 = _MagmaMap_TexelSize;
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
				float4 lerpResult46_g248 = lerp( tex2D( _MagmaMap, UV32_g248 ) , tex2D( _MagmaMap, UV22_g248 ) , W02_g248);
				float4 lerpResult45_g248 = lerp( tex2D( _MagmaMap, UV12_g248 ) , tex2D( _MagmaMap, UV02_g248 ) , W02_g248);
				float4 lerpResult44_g248 = lerp( lerpResult46_g248 , lerpResult45_g248 , W12_g248);
				float4 Output_2D131_g248 = lerpResult44_g248;
				float4 temp_output_361_0 = saturate( ( ( projNormal10_g247.x * Output_2D131_g249 ) + ( projNormal10_g247.y * Output_2D131_g250 ) + ( projNormal10_g247.z * Output_2D131_g248 ) ) );
				float4 temp_cast_12 = (_MagmaPower).xxxx;
				float4 magmaDetial234 = saturate( ( saturate( pow( max( float4( 0,0,0,0 ) , temp_output_361_0 ) , temp_cast_12 ) ) * _MagmaBoost * temp_output_361_0 ) );
				float3 temp_cast_13 = (3.0).xxx;
				float3 temp_output_4_0_g242 = pow( abs( packedInput.ase_normal ) , temp_cast_13 );
				float3 break6_g242 = temp_output_4_0_g242;
				float3 projNormal10_g242 = ( temp_output_4_0_g242 / ( break6_g242.x + break6_g242.y + break6_g242.z ) );
				float localBicubicPrepare2_g244 = ( 0.0 );
				float3 break26_g242 = packedInput.ase_texcoord2.xyz;
				float2 appendResult27_g242 = (float2(break26_g242.z , break26_g242.y));
				float3 nSign18_g242 = sign( packedInput.ase_normal );
				float3 break20_g242 = nSign18_g242;
				float2 appendResult21_g242 = (float2(break20_g242.x , 1.0));
				float temp_output_29_0_g242 = _LavaMaskTiling;
				float2 temp_output_65_0_g242 = float2( 0,0 );
				float2 temp_output_68_0_g242 = ( ( appendResult27_g242 * appendResult21_g242 * temp_output_29_0_g242 ) + temp_output_65_0_g242 );
				float2 Input_UV100_g244 = temp_output_68_0_g242;
				float2 UV2_g244 = Input_UV100_g244;
				float4 TexelSize2_g244 = _HeightMap_TexelSize;
				float2 UV02_g244 = float2( 0,0 );
				float2 UV12_g244 = float2( 0,0 );
				float2 UV22_g244 = float2( 0,0 );
				float2 UV32_g244 = float2( 0,0 );
				float W02_g244 = 0;
				float W12_g244 = 0;
				{
				{
				 UV2_g244 = UV2_g244 * TexelSize2_g244.zw - 0.5;
				    float2 f = frac( UV2_g244 );
				    UV2_g244 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g244.x - 0.5, UV2_g244.x + 1.5, UV2_g244.y - 0.5, UV2_g244.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g244.xyxy;
				    UV02_g244 = off.xz;
				    UV12_g244 = off.yz;
				    UV22_g244 = off.xw;
				    UV32_g244 = off.yw;
				    W02_g244 = s.x / ( s.x + s.y );
				 W12_g244 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g244 = lerp( tex2D( _HeightMap, UV32_g244 ) , tex2D( _HeightMap, UV22_g244 ) , W02_g244);
				float4 lerpResult45_g244 = lerp( tex2D( _HeightMap, UV12_g244 ) , tex2D( _HeightMap, UV02_g244 ) , W02_g244);
				float4 lerpResult44_g244 = lerp( lerpResult46_g244 , lerpResult45_g244 , W12_g244);
				float4 Output_2D131_g244 = lerpResult44_g244;
				float localBicubicPrepare2_g245 = ( 0.0 );
				float2 appendResult32_g242 = (float2(break26_g242.x , break26_g242.z));
				float2 appendResult22_g242 = (float2(break20_g242.y , 1.0));
				float2 temp_output_66_0_g242 = ( ( temp_output_29_0_g242 * appendResult32_g242 * appendResult22_g242 ) + temp_output_65_0_g242 );
				float2 Input_UV100_g245 = temp_output_66_0_g242;
				float2 UV2_g245 = Input_UV100_g245;
				float4 TexelSize2_g245 = _HeightMap_TexelSize;
				float2 UV02_g245 = float2( 0,0 );
				float2 UV12_g245 = float2( 0,0 );
				float2 UV22_g245 = float2( 0,0 );
				float2 UV32_g245 = float2( 0,0 );
				float W02_g245 = 0;
				float W12_g245 = 0;
				{
				{
				 UV2_g245 = UV2_g245 * TexelSize2_g245.zw - 0.5;
				    float2 f = frac( UV2_g245 );
				    UV2_g245 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g245.x - 0.5, UV2_g245.x + 1.5, UV2_g245.y - 0.5, UV2_g245.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g245.xyxy;
				    UV02_g245 = off.xz;
				    UV12_g245 = off.yz;
				    UV22_g245 = off.xw;
				    UV32_g245 = off.yw;
				    W02_g245 = s.x / ( s.x + s.y );
				 W12_g245 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g245 = lerp( tex2D( _HeightMap, UV32_g245 ) , tex2D( _HeightMap, UV22_g245 ) , W02_g245);
				float4 lerpResult45_g245 = lerp( tex2D( _HeightMap, UV12_g245 ) , tex2D( _HeightMap, UV02_g245 ) , W02_g245);
				float4 lerpResult44_g245 = lerp( lerpResult46_g245 , lerpResult45_g245 , W12_g245);
				float4 Output_2D131_g245 = lerpResult44_g245;
				float localBicubicPrepare2_g243 = ( 0.0 );
				float2 appendResult34_g242 = (float2(break26_g242.x , break26_g242.y));
				float2 appendResult25_g242 = (float2(-break20_g242.z , 1.0));
				float2 temp_output_67_0_g242 = ( temp_output_65_0_g242 + ( temp_output_29_0_g242 * appendResult34_g242 * appendResult25_g242 ) );
				float2 Input_UV100_g243 = temp_output_67_0_g242;
				float2 UV2_g243 = Input_UV100_g243;
				float4 TexelSize2_g243 = _HeightMap_TexelSize;
				float2 UV02_g243 = float2( 0,0 );
				float2 UV12_g243 = float2( 0,0 );
				float2 UV22_g243 = float2( 0,0 );
				float2 UV32_g243 = float2( 0,0 );
				float W02_g243 = 0;
				float W12_g243 = 0;
				{
				{
				 UV2_g243 = UV2_g243 * TexelSize2_g243.zw - 0.5;
				    float2 f = frac( UV2_g243 );
				    UV2_g243 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g243.x - 0.5, UV2_g243.x + 1.5, UV2_g243.y - 0.5, UV2_g243.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g243.xyxy;
				    UV02_g243 = off.xz;
				    UV12_g243 = off.yz;
				    UV22_g243 = off.xw;
				    UV32_g243 = off.yw;
				    W02_g243 = s.x / ( s.x + s.y );
				 W12_g243 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g243 = lerp( tex2D( _HeightMap, UV32_g243 ) , tex2D( _HeightMap, UV22_g243 ) , W02_g243);
				float4 lerpResult45_g243 = lerp( tex2D( _HeightMap, UV12_g243 ) , tex2D( _HeightMap, UV02_g243 ) , W02_g243);
				float4 lerpResult44_g243 = lerp( lerpResult46_g243 , lerpResult45_g243 , W12_g243);
				float4 Output_2D131_g243 = lerpResult44_g243;
				float lavaMaskMap229 = saturate( ( ( projNormal10_g242.x * Output_2D131_g244 ) + ( projNormal10_g242.y * Output_2D131_g245 ) + ( projNormal10_g242.z * Output_2D131_g243 ) ) ).r;
				float dotResult254 = dot( ase_tanViewDir , normalUnpacked196 );
				float lavaMask272 = saturate( ( magmaDetial234.r + ( saturate( ( saturate( pow( max( 0.0 , saturate( ( 1.0 - lavaMaskMap229 ) ) ) , _LavaMaskFactorsX ) ) * _LavaMaskFactorsY ) ) * saturate( ( saturate( pow( max( 0.0 , dotResult254 ) , _LavaMaskPower ) ) * _LavaMaskBoost ) ) ) ) );
				float4 lerpResult274 = lerp( _MagmaColorMin , _MagmaColorMax , lavaMask272);
				float4 lavaColor277 = ( saturate( ( ( projNormal10_g215.x * Output_2D131_g217 ) + ( projNormal10_g215.y * Output_2D131_g218 ) + ( projNormal10_g215.z * Output_2D131_g216 ) ) ) * lerpResult274 * _MagmaGlow );
				
				float smooth388 = ( ( 1.0 - detailTex146 ) * _Smoothness );
				
				surfaceDescription.BaseColor = ( baseColor213 + fresnel268 );
				surfaceDescription.Normal = normalUnpacked196;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = 0;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = ( float4( fresnel268 , 0.0 ) + spec390 ).rgb;
				#endif

				surfaceDescription.Emission = (( lavaColor277 * lavaMask272 )).rgb;
				surfaceDescription.Smoothness = ( fresnel268 * smooth388 ).x;
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
			float4 _LavaLow;
			float4 _MagmaMap_TexelSize;
			float4 _MagmaColorMax;
			float4 _MagmaColorMin;
			float4 _DistortionMap_TexelSize;
			float4 _FresnelColor;
			float4 _NormalMap_TexelSize;
			float4 _LavaHigh;
			float4 _SpecularColor;
			float4 _HeightMap_TexelSize;
			float4 _LavaMid;
			float4 _DetailMap_TexelSize;
			float _LavaDetail;
			float _LavaMaskBoost;
			float _LavaMaskPower;
			float _LavaMaskFactorsY;
			float _LavaMaskFactorsX;
			float _LavaMaskTiling;
			float _MagmaBoost;
			float _MagmaPower;
			float _MagmaTiling;
			float _DetailExp;
			float _DetailTiling;
			float _DistortionFactor;
			float _DistortionUVSpeed;
			float _DistortionUVTiling;
			float _DistortionSpeed;
			float _DistortionTiling;
			float _SpecularBoost;
			float _MagmaGlow;
			float _Specular;
			float _HeightTiling;
			float _FrenselMult;
			float _FresnelPower;
			float _NormalScale;
			float _NormalTiling;
			float _HeightDetail;
			float _LavaFactorsZ;
			float _LavaFactorsY;
			float _LavaFactorsX;
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
			float4 _LavaLow;
			float4 _MagmaMap_TexelSize;
			float4 _MagmaColorMax;
			float4 _MagmaColorMin;
			float4 _DistortionMap_TexelSize;
			float4 _FresnelColor;
			float4 _NormalMap_TexelSize;
			float4 _LavaHigh;
			float4 _SpecularColor;
			float4 _HeightMap_TexelSize;
			float4 _LavaMid;
			float4 _DetailMap_TexelSize;
			float _LavaDetail;
			float _LavaMaskBoost;
			float _LavaMaskPower;
			float _LavaMaskFactorsY;
			float _LavaMaskFactorsX;
			float _LavaMaskTiling;
			float _MagmaBoost;
			float _MagmaPower;
			float _MagmaTiling;
			float _DetailExp;
			float _DetailTiling;
			float _DistortionFactor;
			float _DistortionUVSpeed;
			float _DistortionUVTiling;
			float _DistortionSpeed;
			float _DistortionTiling;
			float _SpecularBoost;
			float _MagmaGlow;
			float _Specular;
			float _HeightTiling;
			float _FrenselMult;
			float _FresnelPower;
			float _NormalScale;
			float _NormalTiling;
			float _HeightDetail;
			float _LavaFactorsZ;
			float _LavaFactorsY;
			float _LavaFactorsX;
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
			float4 _LavaLow;
			float4 _MagmaMap_TexelSize;
			float4 _MagmaColorMax;
			float4 _MagmaColorMin;
			float4 _DistortionMap_TexelSize;
			float4 _FresnelColor;
			float4 _NormalMap_TexelSize;
			float4 _LavaHigh;
			float4 _SpecularColor;
			float4 _HeightMap_TexelSize;
			float4 _LavaMid;
			float4 _DetailMap_TexelSize;
			float _LavaDetail;
			float _LavaMaskBoost;
			float _LavaMaskPower;
			float _LavaMaskFactorsY;
			float _LavaMaskFactorsX;
			float _LavaMaskTiling;
			float _MagmaBoost;
			float _MagmaPower;
			float _MagmaTiling;
			float _DetailExp;
			float _DetailTiling;
			float _DistortionFactor;
			float _DistortionUVSpeed;
			float _DistortionUVTiling;
			float _DistortionSpeed;
			float _DistortionTiling;
			float _SpecularBoost;
			float _MagmaGlow;
			float _Specular;
			float _HeightTiling;
			float _FrenselMult;
			float _FresnelPower;
			float _NormalScale;
			float _NormalTiling;
			float _HeightDetail;
			float _LavaFactorsZ;
			float _LavaFactorsY;
			float _LavaFactorsX;
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
			sampler2D _DetailMap;


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
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
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
				float4 ase_texcoord4 : TEXCOORD4;
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

				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
				float3 ase_worldTangent = TransformObjectToWorldDir(inputMesh.tangentOS.xyz);
				float ase_vertexTangentSign = inputMesh.tangentOS.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				outputPackedVaryingsMeshToPS.ase_texcoord4.xyz = ase_worldBitangent;
				
				outputPackedVaryingsMeshToPS.ase_normal = inputMesh.normalOS;
				outputPackedVaryingsMeshToPS.ase_texcoord3 = float4(inputMesh.positionOS,1);
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord4.w = 0;

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
				float3 temp_cast_0 = (3.0).xxx;
				float3 temp_output_4_0_g228 = pow( abs( packedInput.ase_normal ) , temp_cast_0 );
				float3 break6_g228 = temp_output_4_0_g228;
				float3 projNormal10_g228 = ( temp_output_4_0_g228 / ( break6_g228.x + break6_g228.y + break6_g228.z ) );
				float localBicubicPrepare2_g230 = ( 0.0 );
				float3 break26_g228 = packedInput.ase_texcoord3.xyz;
				float2 appendResult27_g228 = (float2(break26_g228.z , break26_g228.y));
				float3 nSign18_g228 = sign( packedInput.ase_normal );
				float3 break20_g228 = nSign18_g228;
				float2 appendResult21_g228 = (float2(break20_g228.x , 1.0));
				float temp_output_29_0_g228 = _NormalTiling;
				float2 temp_output_65_0_g228 = float2( 0,0 );
				float2 temp_output_68_0_g228 = ( ( appendResult27_g228 * appendResult21_g228 * temp_output_29_0_g228 ) + temp_output_65_0_g228 );
				float2 Input_UV100_g230 = temp_output_68_0_g228;
				float2 UV2_g230 = Input_UV100_g230;
				float4 TexelSize2_g230 = _NormalMap_TexelSize;
				float2 UV02_g230 = float2( 0,0 );
				float2 UV12_g230 = float2( 0,0 );
				float2 UV22_g230 = float2( 0,0 );
				float2 UV32_g230 = float2( 0,0 );
				float W02_g230 = 0;
				float W12_g230 = 0;
				{
				{
				 UV2_g230 = UV2_g230 * TexelSize2_g230.zw - 0.5;
				    float2 f = frac( UV2_g230 );
				    UV2_g230 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g230.x - 0.5, UV2_g230.x + 1.5, UV2_g230.y - 0.5, UV2_g230.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g230.xyxy;
				    UV02_g230 = off.xz;
				    UV12_g230 = off.yz;
				    UV22_g230 = off.xw;
				    UV32_g230 = off.yw;
				    W02_g230 = s.x / ( s.x + s.y );
				 W12_g230 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g230 = lerp( tex2D( _NormalMap, UV32_g230 ) , tex2D( _NormalMap, UV22_g230 ) , W02_g230);
				float4 lerpResult45_g230 = lerp( tex2D( _NormalMap, UV12_g230 ) , tex2D( _NormalMap, UV02_g230 ) , W02_g230);
				float4 lerpResult44_g230 = lerp( lerpResult46_g230 , lerpResult45_g230 , W12_g230);
				float4 Output_2D131_g230 = lerpResult44_g230;
				float localBicubicPrepare2_g231 = ( 0.0 );
				float2 appendResult32_g228 = (float2(break26_g228.x , break26_g228.z));
				float2 appendResult22_g228 = (float2(break20_g228.y , 1.0));
				float2 temp_output_66_0_g228 = ( ( temp_output_29_0_g228 * appendResult32_g228 * appendResult22_g228 ) + temp_output_65_0_g228 );
				float2 Input_UV100_g231 = temp_output_66_0_g228;
				float2 UV2_g231 = Input_UV100_g231;
				float4 TexelSize2_g231 = _NormalMap_TexelSize;
				float2 UV02_g231 = float2( 0,0 );
				float2 UV12_g231 = float2( 0,0 );
				float2 UV22_g231 = float2( 0,0 );
				float2 UV32_g231 = float2( 0,0 );
				float W02_g231 = 0;
				float W12_g231 = 0;
				{
				{
				 UV2_g231 = UV2_g231 * TexelSize2_g231.zw - 0.5;
				    float2 f = frac( UV2_g231 );
				    UV2_g231 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g231.x - 0.5, UV2_g231.x + 1.5, UV2_g231.y - 0.5, UV2_g231.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g231.xyxy;
				    UV02_g231 = off.xz;
				    UV12_g231 = off.yz;
				    UV22_g231 = off.xw;
				    UV32_g231 = off.yw;
				    W02_g231 = s.x / ( s.x + s.y );
				 W12_g231 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g231 = lerp( tex2D( _NormalMap, UV32_g231 ) , tex2D( _NormalMap, UV22_g231 ) , W02_g231);
				float4 lerpResult45_g231 = lerp( tex2D( _NormalMap, UV12_g231 ) , tex2D( _NormalMap, UV02_g231 ) , W02_g231);
				float4 lerpResult44_g231 = lerp( lerpResult46_g231 , lerpResult45_g231 , W12_g231);
				float4 Output_2D131_g231 = lerpResult44_g231;
				float localBicubicPrepare2_g229 = ( 0.0 );
				float2 appendResult34_g228 = (float2(break26_g228.x , break26_g228.y));
				float2 appendResult25_g228 = (float2(-break20_g228.z , 1.0));
				float2 temp_output_67_0_g228 = ( temp_output_65_0_g228 + ( temp_output_29_0_g228 * appendResult34_g228 * appendResult25_g228 ) );
				float2 Input_UV100_g229 = temp_output_67_0_g228;
				float2 UV2_g229 = Input_UV100_g229;
				float4 TexelSize2_g229 = _NormalMap_TexelSize;
				float2 UV02_g229 = float2( 0,0 );
				float2 UV12_g229 = float2( 0,0 );
				float2 UV22_g229 = float2( 0,0 );
				float2 UV32_g229 = float2( 0,0 );
				float W02_g229 = 0;
				float W12_g229 = 0;
				{
				{
				 UV2_g229 = UV2_g229 * TexelSize2_g229.zw - 0.5;
				    float2 f = frac( UV2_g229 );
				    UV2_g229 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g229.x - 0.5, UV2_g229.x + 1.5, UV2_g229.y - 0.5, UV2_g229.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g229.xyxy;
				    UV02_g229 = off.xz;
				    UV12_g229 = off.yz;
				    UV22_g229 = off.xw;
				    UV32_g229 = off.yw;
				    W02_g229 = s.x / ( s.x + s.y );
				 W12_g229 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g229 = lerp( tex2D( _NormalMap, UV32_g229 ) , tex2D( _NormalMap, UV22_g229 ) , W02_g229);
				float4 lerpResult45_g229 = lerp( tex2D( _NormalMap, UV12_g229 ) , tex2D( _NormalMap, UV02_g229 ) , W02_g229);
				float4 lerpResult44_g229 = lerp( lerpResult46_g229 , lerpResult45_g229 , W12_g229);
				float4 Output_2D131_g229 = lerpResult44_g229;
				float3 unpack195 = UnpackNormalScale( saturate( ( ( projNormal10_g228.x * Output_2D131_g230 ) + ( projNormal10_g228.y * Output_2D131_g231 ) + ( projNormal10_g228.z * Output_2D131_g229 ) ) ), _NormalScale );
				unpack195.z = lerp( 1, unpack195.z, saturate(_NormalScale) );
				float3 normalUnpacked196 = unpack195;
				
				float3 ase_worldBitangent = packedInput.ase_texcoord4.xyz;
				float3 tanToWorld0 = float3( tangentWS.xyz.x, ase_worldBitangent.x, normalWS.x );
				float3 tanToWorld1 = float3( tangentWS.xyz.y, ase_worldBitangent.y, normalWS.y );
				float3 tanToWorld2 = float3( tangentWS.xyz.z, ase_worldBitangent.z, normalWS.z );
				float3 ase_tanViewDir =  tanToWorld0 * V.x + tanToWorld1 * V.y  + tanToWorld2 * V.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float3 normalizeResult5_g236 = normalize( normalUnpacked196 );
				float dotResult14_g236 = dot( ase_tanViewDir , normalizeResult5_g236 );
				float3 temp_cast_2 = (3.0).xxx;
				float3 temp_output_4_0_g237 = pow( abs( packedInput.ase_normal ) , temp_cast_2 );
				float3 break6_g237 = temp_output_4_0_g237;
				float3 projNormal10_g237 = ( temp_output_4_0_g237 / ( break6_g237.x + break6_g237.y + break6_g237.z ) );
				float localBicubicPrepare2_g239 = ( 0.0 );
				float3 break26_g237 = packedInput.ase_texcoord3.xyz;
				float2 appendResult27_g237 = (float2(break26_g237.z , break26_g237.y));
				float3 nSign18_g237 = sign( packedInput.ase_normal );
				float3 break20_g237 = nSign18_g237;
				float2 appendResult21_g237 = (float2(break20_g237.x , 1.0));
				float temp_output_29_0_g237 = _DetailTiling;
				float2 temp_output_65_0_g237 = float2( 0,0 );
				float2 temp_output_68_0_g237 = ( ( appendResult27_g237 * appendResult21_g237 * temp_output_29_0_g237 ) + temp_output_65_0_g237 );
				float2 Input_UV100_g239 = temp_output_68_0_g237;
				float2 UV2_g239 = Input_UV100_g239;
				float4 TexelSize2_g239 = _DetailMap_TexelSize;
				float2 UV02_g239 = float2( 0,0 );
				float2 UV12_g239 = float2( 0,0 );
				float2 UV22_g239 = float2( 0,0 );
				float2 UV32_g239 = float2( 0,0 );
				float W02_g239 = 0;
				float W12_g239 = 0;
				{
				{
				 UV2_g239 = UV2_g239 * TexelSize2_g239.zw - 0.5;
				    float2 f = frac( UV2_g239 );
				    UV2_g239 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g239.x - 0.5, UV2_g239.x + 1.5, UV2_g239.y - 0.5, UV2_g239.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g239.xyxy;
				    UV02_g239 = off.xz;
				    UV12_g239 = off.yz;
				    UV22_g239 = off.xw;
				    UV32_g239 = off.yw;
				    W02_g239 = s.x / ( s.x + s.y );
				 W12_g239 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g239 = lerp( tex2D( _DetailMap, UV32_g239 ) , tex2D( _DetailMap, UV22_g239 ) , W02_g239);
				float4 lerpResult45_g239 = lerp( tex2D( _DetailMap, UV12_g239 ) , tex2D( _DetailMap, UV02_g239 ) , W02_g239);
				float4 lerpResult44_g239 = lerp( lerpResult46_g239 , lerpResult45_g239 , W12_g239);
				float4 Output_2D131_g239 = lerpResult44_g239;
				float localBicubicPrepare2_g240 = ( 0.0 );
				float2 appendResult32_g237 = (float2(break26_g237.x , break26_g237.z));
				float2 appendResult22_g237 = (float2(break20_g237.y , 1.0));
				float2 temp_output_66_0_g237 = ( ( temp_output_29_0_g237 * appendResult32_g237 * appendResult22_g237 ) + temp_output_65_0_g237 );
				float2 Input_UV100_g240 = temp_output_66_0_g237;
				float2 UV2_g240 = Input_UV100_g240;
				float4 TexelSize2_g240 = _DetailMap_TexelSize;
				float2 UV02_g240 = float2( 0,0 );
				float2 UV12_g240 = float2( 0,0 );
				float2 UV22_g240 = float2( 0,0 );
				float2 UV32_g240 = float2( 0,0 );
				float W02_g240 = 0;
				float W12_g240 = 0;
				{
				{
				 UV2_g240 = UV2_g240 * TexelSize2_g240.zw - 0.5;
				    float2 f = frac( UV2_g240 );
				    UV2_g240 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g240.x - 0.5, UV2_g240.x + 1.5, UV2_g240.y - 0.5, UV2_g240.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g240.xyxy;
				    UV02_g240 = off.xz;
				    UV12_g240 = off.yz;
				    UV22_g240 = off.xw;
				    UV32_g240 = off.yw;
				    W02_g240 = s.x / ( s.x + s.y );
				 W12_g240 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g240 = lerp( tex2D( _DetailMap, UV32_g240 ) , tex2D( _DetailMap, UV22_g240 ) , W02_g240);
				float4 lerpResult45_g240 = lerp( tex2D( _DetailMap, UV12_g240 ) , tex2D( _DetailMap, UV02_g240 ) , W02_g240);
				float4 lerpResult44_g240 = lerp( lerpResult46_g240 , lerpResult45_g240 , W12_g240);
				float4 Output_2D131_g240 = lerpResult44_g240;
				float localBicubicPrepare2_g238 = ( 0.0 );
				float2 appendResult34_g237 = (float2(break26_g237.x , break26_g237.y));
				float2 appendResult25_g237 = (float2(-break20_g237.z , 1.0));
				float2 temp_output_67_0_g237 = ( temp_output_65_0_g237 + ( temp_output_29_0_g237 * appendResult34_g237 * appendResult25_g237 ) );
				float2 Input_UV100_g238 = temp_output_67_0_g237;
				float2 UV2_g238 = Input_UV100_g238;
				float4 TexelSize2_g238 = _DetailMap_TexelSize;
				float2 UV02_g238 = float2( 0,0 );
				float2 UV12_g238 = float2( 0,0 );
				float2 UV22_g238 = float2( 0,0 );
				float2 UV32_g238 = float2( 0,0 );
				float W02_g238 = 0;
				float W12_g238 = 0;
				{
				{
				 UV2_g238 = UV2_g238 * TexelSize2_g238.zw - 0.5;
				    float2 f = frac( UV2_g238 );
				    UV2_g238 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g238.x - 0.5, UV2_g238.x + 1.5, UV2_g238.y - 0.5, UV2_g238.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g238.xyxy;
				    UV02_g238 = off.xz;
				    UV12_g238 = off.yz;
				    UV22_g238 = off.xw;
				    UV32_g238 = off.yw;
				    W02_g238 = s.x / ( s.x + s.y );
				 W12_g238 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g238 = lerp( tex2D( _DetailMap, UV32_g238 ) , tex2D( _DetailMap, UV22_g238 ) , W02_g238);
				float4 lerpResult45_g238 = lerp( tex2D( _DetailMap, UV12_g238 ) , tex2D( _DetailMap, UV02_g238 ) , W02_g238);
				float4 lerpResult44_g238 = lerp( lerpResult46_g238 , lerpResult45_g238 , W12_g238);
				float4 Output_2D131_g238 = lerpResult44_g238;
				float4 break138 = saturate( ( ( projNormal10_g237.x * Output_2D131_g239 ) + ( projNormal10_g237.y * Output_2D131_g240 ) + ( projNormal10_g237.z * Output_2D131_g238 ) ) );
				float detailX235 = break138.r;
				float3 fresnel268 = saturate( ( ( ( saturate( pow( max( 0.0 , saturate( ( 1.0 - dotResult14_g236 ) ) ) , _FresnelPower ) ) * _FrenselMult ) * (_FresnelColor).rgb ) * detailX235 ) );
				float detailTex146 = saturate( ( _DetailExp * pow( max( 0.0 , ( break138.r * break138.g ) ) , _DetailExp ) * 5000.0 ) );
				float smooth388 = ( ( 1.0 - detailTex146 ) * _Smoothness );
				
				surfaceDescription.Normal = normalUnpacked196;
				surfaceDescription.Smoothness = ( fresnel268 * smooth388 ).x;
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
			float4 _LavaLow;
			float4 _MagmaMap_TexelSize;
			float4 _MagmaColorMax;
			float4 _MagmaColorMin;
			float4 _DistortionMap_TexelSize;
			float4 _FresnelColor;
			float4 _NormalMap_TexelSize;
			float4 _LavaHigh;
			float4 _SpecularColor;
			float4 _HeightMap_TexelSize;
			float4 _LavaMid;
			float4 _DetailMap_TexelSize;
			float _LavaDetail;
			float _LavaMaskBoost;
			float _LavaMaskPower;
			float _LavaMaskFactorsY;
			float _LavaMaskFactorsX;
			float _LavaMaskTiling;
			float _MagmaBoost;
			float _MagmaPower;
			float _MagmaTiling;
			float _DetailExp;
			float _DetailTiling;
			float _DistortionFactor;
			float _DistortionUVSpeed;
			float _DistortionUVTiling;
			float _DistortionSpeed;
			float _DistortionTiling;
			float _SpecularBoost;
			float _MagmaGlow;
			float _Specular;
			float _HeightTiling;
			float _FrenselMult;
			float _FresnelPower;
			float _NormalScale;
			float _NormalTiling;
			float _HeightDetail;
			float _LavaFactorsZ;
			float _LavaFactorsY;
			float _LavaFactorsX;
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
			sampler2D _DetailMap;


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
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
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
				float4 ase_tangent : TANGENT;
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
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
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
				float3 ase_worldTangent = TransformObjectToWorldDir(inputMesh.ase_tangent.xyz);
				outputPackedVaryingsMeshToPS.ase_texcoord4.xyz = ase_worldTangent;
				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
				outputPackedVaryingsMeshToPS.ase_texcoord5.xyz = ase_worldNormal;
				float ase_vertexTangentSign = inputMesh.ase_tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				outputPackedVaryingsMeshToPS.ase_texcoord6.xyz = ase_worldBitangent;
				
				outputPackedVaryingsMeshToPS.ase_normal = inputMesh.normalOS;
				outputPackedVaryingsMeshToPS.ase_texcoord3 = float4(inputMesh.positionOS,1);
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord4.w = 0;
				outputPackedVaryingsMeshToPS.ase_texcoord5.w = 0;
				outputPackedVaryingsMeshToPS.ase_texcoord6.w = 0;

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
				float4 ase_tangent : TANGENT;

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
				o.ase_tangent = v.ase_tangent;
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
				o.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
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
				float3 temp_cast_0 = (3.0).xxx;
				float3 temp_output_4_0_g228 = pow( abs( packedInput.ase_normal ) , temp_cast_0 );
				float3 break6_g228 = temp_output_4_0_g228;
				float3 projNormal10_g228 = ( temp_output_4_0_g228 / ( break6_g228.x + break6_g228.y + break6_g228.z ) );
				float localBicubicPrepare2_g230 = ( 0.0 );
				float3 break26_g228 = packedInput.ase_texcoord3.xyz;
				float2 appendResult27_g228 = (float2(break26_g228.z , break26_g228.y));
				float3 nSign18_g228 = sign( packedInput.ase_normal );
				float3 break20_g228 = nSign18_g228;
				float2 appendResult21_g228 = (float2(break20_g228.x , 1.0));
				float temp_output_29_0_g228 = _NormalTiling;
				float2 temp_output_65_0_g228 = float2( 0,0 );
				float2 temp_output_68_0_g228 = ( ( appendResult27_g228 * appendResult21_g228 * temp_output_29_0_g228 ) + temp_output_65_0_g228 );
				float2 Input_UV100_g230 = temp_output_68_0_g228;
				float2 UV2_g230 = Input_UV100_g230;
				float4 TexelSize2_g230 = _NormalMap_TexelSize;
				float2 UV02_g230 = float2( 0,0 );
				float2 UV12_g230 = float2( 0,0 );
				float2 UV22_g230 = float2( 0,0 );
				float2 UV32_g230 = float2( 0,0 );
				float W02_g230 = 0;
				float W12_g230 = 0;
				{
				{
				 UV2_g230 = UV2_g230 * TexelSize2_g230.zw - 0.5;
				    float2 f = frac( UV2_g230 );
				    UV2_g230 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g230.x - 0.5, UV2_g230.x + 1.5, UV2_g230.y - 0.5, UV2_g230.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g230.xyxy;
				    UV02_g230 = off.xz;
				    UV12_g230 = off.yz;
				    UV22_g230 = off.xw;
				    UV32_g230 = off.yw;
				    W02_g230 = s.x / ( s.x + s.y );
				 W12_g230 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g230 = lerp( tex2D( _NormalMap, UV32_g230 ) , tex2D( _NormalMap, UV22_g230 ) , W02_g230);
				float4 lerpResult45_g230 = lerp( tex2D( _NormalMap, UV12_g230 ) , tex2D( _NormalMap, UV02_g230 ) , W02_g230);
				float4 lerpResult44_g230 = lerp( lerpResult46_g230 , lerpResult45_g230 , W12_g230);
				float4 Output_2D131_g230 = lerpResult44_g230;
				float localBicubicPrepare2_g231 = ( 0.0 );
				float2 appendResult32_g228 = (float2(break26_g228.x , break26_g228.z));
				float2 appendResult22_g228 = (float2(break20_g228.y , 1.0));
				float2 temp_output_66_0_g228 = ( ( temp_output_29_0_g228 * appendResult32_g228 * appendResult22_g228 ) + temp_output_65_0_g228 );
				float2 Input_UV100_g231 = temp_output_66_0_g228;
				float2 UV2_g231 = Input_UV100_g231;
				float4 TexelSize2_g231 = _NormalMap_TexelSize;
				float2 UV02_g231 = float2( 0,0 );
				float2 UV12_g231 = float2( 0,0 );
				float2 UV22_g231 = float2( 0,0 );
				float2 UV32_g231 = float2( 0,0 );
				float W02_g231 = 0;
				float W12_g231 = 0;
				{
				{
				 UV2_g231 = UV2_g231 * TexelSize2_g231.zw - 0.5;
				    float2 f = frac( UV2_g231 );
				    UV2_g231 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g231.x - 0.5, UV2_g231.x + 1.5, UV2_g231.y - 0.5, UV2_g231.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g231.xyxy;
				    UV02_g231 = off.xz;
				    UV12_g231 = off.yz;
				    UV22_g231 = off.xw;
				    UV32_g231 = off.yw;
				    W02_g231 = s.x / ( s.x + s.y );
				 W12_g231 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g231 = lerp( tex2D( _NormalMap, UV32_g231 ) , tex2D( _NormalMap, UV22_g231 ) , W02_g231);
				float4 lerpResult45_g231 = lerp( tex2D( _NormalMap, UV12_g231 ) , tex2D( _NormalMap, UV02_g231 ) , W02_g231);
				float4 lerpResult44_g231 = lerp( lerpResult46_g231 , lerpResult45_g231 , W12_g231);
				float4 Output_2D131_g231 = lerpResult44_g231;
				float localBicubicPrepare2_g229 = ( 0.0 );
				float2 appendResult34_g228 = (float2(break26_g228.x , break26_g228.y));
				float2 appendResult25_g228 = (float2(-break20_g228.z , 1.0));
				float2 temp_output_67_0_g228 = ( temp_output_65_0_g228 + ( temp_output_29_0_g228 * appendResult34_g228 * appendResult25_g228 ) );
				float2 Input_UV100_g229 = temp_output_67_0_g228;
				float2 UV2_g229 = Input_UV100_g229;
				float4 TexelSize2_g229 = _NormalMap_TexelSize;
				float2 UV02_g229 = float2( 0,0 );
				float2 UV12_g229 = float2( 0,0 );
				float2 UV22_g229 = float2( 0,0 );
				float2 UV32_g229 = float2( 0,0 );
				float W02_g229 = 0;
				float W12_g229 = 0;
				{
				{
				 UV2_g229 = UV2_g229 * TexelSize2_g229.zw - 0.5;
				    float2 f = frac( UV2_g229 );
				    UV2_g229 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g229.x - 0.5, UV2_g229.x + 1.5, UV2_g229.y - 0.5, UV2_g229.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g229.xyxy;
				    UV02_g229 = off.xz;
				    UV12_g229 = off.yz;
				    UV22_g229 = off.xw;
				    UV32_g229 = off.yw;
				    W02_g229 = s.x / ( s.x + s.y );
				 W12_g229 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g229 = lerp( tex2D( _NormalMap, UV32_g229 ) , tex2D( _NormalMap, UV22_g229 ) , W02_g229);
				float4 lerpResult45_g229 = lerp( tex2D( _NormalMap, UV12_g229 ) , tex2D( _NormalMap, UV02_g229 ) , W02_g229);
				float4 lerpResult44_g229 = lerp( lerpResult46_g229 , lerpResult45_g229 , W12_g229);
				float4 Output_2D131_g229 = lerpResult44_g229;
				float3 unpack195 = UnpackNormalScale( saturate( ( ( projNormal10_g228.x * Output_2D131_g230 ) + ( projNormal10_g228.y * Output_2D131_g231 ) + ( projNormal10_g228.z * Output_2D131_g229 ) ) ), _NormalScale );
				unpack195.z = lerp( 1, unpack195.z, saturate(_NormalScale) );
				float3 normalUnpacked196 = unpack195;
				
				float3 ase_worldTangent = packedInput.ase_texcoord4.xyz;
				float3 ase_worldNormal = packedInput.ase_texcoord5.xyz;
				float3 ase_worldBitangent = packedInput.ase_texcoord6.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 ase_tanViewDir =  tanToWorld0 * V.x + tanToWorld1 * V.y  + tanToWorld2 * V.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float3 normalizeResult5_g236 = normalize( normalUnpacked196 );
				float dotResult14_g236 = dot( ase_tanViewDir , normalizeResult5_g236 );
				float3 temp_cast_2 = (3.0).xxx;
				float3 temp_output_4_0_g237 = pow( abs( packedInput.ase_normal ) , temp_cast_2 );
				float3 break6_g237 = temp_output_4_0_g237;
				float3 projNormal10_g237 = ( temp_output_4_0_g237 / ( break6_g237.x + break6_g237.y + break6_g237.z ) );
				float localBicubicPrepare2_g239 = ( 0.0 );
				float3 break26_g237 = packedInput.ase_texcoord3.xyz;
				float2 appendResult27_g237 = (float2(break26_g237.z , break26_g237.y));
				float3 nSign18_g237 = sign( packedInput.ase_normal );
				float3 break20_g237 = nSign18_g237;
				float2 appendResult21_g237 = (float2(break20_g237.x , 1.0));
				float temp_output_29_0_g237 = _DetailTiling;
				float2 temp_output_65_0_g237 = float2( 0,0 );
				float2 temp_output_68_0_g237 = ( ( appendResult27_g237 * appendResult21_g237 * temp_output_29_0_g237 ) + temp_output_65_0_g237 );
				float2 Input_UV100_g239 = temp_output_68_0_g237;
				float2 UV2_g239 = Input_UV100_g239;
				float4 TexelSize2_g239 = _DetailMap_TexelSize;
				float2 UV02_g239 = float2( 0,0 );
				float2 UV12_g239 = float2( 0,0 );
				float2 UV22_g239 = float2( 0,0 );
				float2 UV32_g239 = float2( 0,0 );
				float W02_g239 = 0;
				float W12_g239 = 0;
				{
				{
				 UV2_g239 = UV2_g239 * TexelSize2_g239.zw - 0.5;
				    float2 f = frac( UV2_g239 );
				    UV2_g239 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g239.x - 0.5, UV2_g239.x + 1.5, UV2_g239.y - 0.5, UV2_g239.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g239.xyxy;
				    UV02_g239 = off.xz;
				    UV12_g239 = off.yz;
				    UV22_g239 = off.xw;
				    UV32_g239 = off.yw;
				    W02_g239 = s.x / ( s.x + s.y );
				 W12_g239 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g239 = lerp( tex2D( _DetailMap, UV32_g239 ) , tex2D( _DetailMap, UV22_g239 ) , W02_g239);
				float4 lerpResult45_g239 = lerp( tex2D( _DetailMap, UV12_g239 ) , tex2D( _DetailMap, UV02_g239 ) , W02_g239);
				float4 lerpResult44_g239 = lerp( lerpResult46_g239 , lerpResult45_g239 , W12_g239);
				float4 Output_2D131_g239 = lerpResult44_g239;
				float localBicubicPrepare2_g240 = ( 0.0 );
				float2 appendResult32_g237 = (float2(break26_g237.x , break26_g237.z));
				float2 appendResult22_g237 = (float2(break20_g237.y , 1.0));
				float2 temp_output_66_0_g237 = ( ( temp_output_29_0_g237 * appendResult32_g237 * appendResult22_g237 ) + temp_output_65_0_g237 );
				float2 Input_UV100_g240 = temp_output_66_0_g237;
				float2 UV2_g240 = Input_UV100_g240;
				float4 TexelSize2_g240 = _DetailMap_TexelSize;
				float2 UV02_g240 = float2( 0,0 );
				float2 UV12_g240 = float2( 0,0 );
				float2 UV22_g240 = float2( 0,0 );
				float2 UV32_g240 = float2( 0,0 );
				float W02_g240 = 0;
				float W12_g240 = 0;
				{
				{
				 UV2_g240 = UV2_g240 * TexelSize2_g240.zw - 0.5;
				    float2 f = frac( UV2_g240 );
				    UV2_g240 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g240.x - 0.5, UV2_g240.x + 1.5, UV2_g240.y - 0.5, UV2_g240.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g240.xyxy;
				    UV02_g240 = off.xz;
				    UV12_g240 = off.yz;
				    UV22_g240 = off.xw;
				    UV32_g240 = off.yw;
				    W02_g240 = s.x / ( s.x + s.y );
				 W12_g240 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g240 = lerp( tex2D( _DetailMap, UV32_g240 ) , tex2D( _DetailMap, UV22_g240 ) , W02_g240);
				float4 lerpResult45_g240 = lerp( tex2D( _DetailMap, UV12_g240 ) , tex2D( _DetailMap, UV02_g240 ) , W02_g240);
				float4 lerpResult44_g240 = lerp( lerpResult46_g240 , lerpResult45_g240 , W12_g240);
				float4 Output_2D131_g240 = lerpResult44_g240;
				float localBicubicPrepare2_g238 = ( 0.0 );
				float2 appendResult34_g237 = (float2(break26_g237.x , break26_g237.y));
				float2 appendResult25_g237 = (float2(-break20_g237.z , 1.0));
				float2 temp_output_67_0_g237 = ( temp_output_65_0_g237 + ( temp_output_29_0_g237 * appendResult34_g237 * appendResult25_g237 ) );
				float2 Input_UV100_g238 = temp_output_67_0_g237;
				float2 UV2_g238 = Input_UV100_g238;
				float4 TexelSize2_g238 = _DetailMap_TexelSize;
				float2 UV02_g238 = float2( 0,0 );
				float2 UV12_g238 = float2( 0,0 );
				float2 UV22_g238 = float2( 0,0 );
				float2 UV32_g238 = float2( 0,0 );
				float W02_g238 = 0;
				float W12_g238 = 0;
				{
				{
				 UV2_g238 = UV2_g238 * TexelSize2_g238.zw - 0.5;
				    float2 f = frac( UV2_g238 );
				    UV2_g238 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g238.x - 0.5, UV2_g238.x + 1.5, UV2_g238.y - 0.5, UV2_g238.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g238.xyxy;
				    UV02_g238 = off.xz;
				    UV12_g238 = off.yz;
				    UV22_g238 = off.xw;
				    UV32_g238 = off.yw;
				    W02_g238 = s.x / ( s.x + s.y );
				 W12_g238 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g238 = lerp( tex2D( _DetailMap, UV32_g238 ) , tex2D( _DetailMap, UV22_g238 ) , W02_g238);
				float4 lerpResult45_g238 = lerp( tex2D( _DetailMap, UV12_g238 ) , tex2D( _DetailMap, UV02_g238 ) , W02_g238);
				float4 lerpResult44_g238 = lerp( lerpResult46_g238 , lerpResult45_g238 , W12_g238);
				float4 Output_2D131_g238 = lerpResult44_g238;
				float4 break138 = saturate( ( ( projNormal10_g237.x * Output_2D131_g239 ) + ( projNormal10_g237.y * Output_2D131_g240 ) + ( projNormal10_g237.z * Output_2D131_g238 ) ) );
				float detailX235 = break138.r;
				float3 fresnel268 = saturate( ( ( ( saturate( pow( max( 0.0 , saturate( ( 1.0 - dotResult14_g236 ) ) ) , _FresnelPower ) ) * _FrenselMult ) * (_FresnelColor).rgb ) * detailX235 ) );
				float detailTex146 = saturate( ( _DetailExp * pow( max( 0.0 , ( break138.r * break138.g ) ) , _DetailExp ) * 5000.0 ) );
				float smooth388 = ( ( 1.0 - detailTex146 ) * _Smoothness );
				
				surfaceDescription.Normal = normalUnpacked196;
				surfaceDescription.Smoothness = ( fresnel268 * smooth388 ).x;
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
			float4 _LavaLow;
			float4 _MagmaMap_TexelSize;
			float4 _MagmaColorMax;
			float4 _MagmaColorMin;
			float4 _DistortionMap_TexelSize;
			float4 _FresnelColor;
			float4 _NormalMap_TexelSize;
			float4 _LavaHigh;
			float4 _SpecularColor;
			float4 _HeightMap_TexelSize;
			float4 _LavaMid;
			float4 _DetailMap_TexelSize;
			float _LavaDetail;
			float _LavaMaskBoost;
			float _LavaMaskPower;
			float _LavaMaskFactorsY;
			float _LavaMaskFactorsX;
			float _LavaMaskTiling;
			float _MagmaBoost;
			float _MagmaPower;
			float _MagmaTiling;
			float _DetailExp;
			float _DetailTiling;
			float _DistortionFactor;
			float _DistortionUVSpeed;
			float _DistortionUVTiling;
			float _DistortionSpeed;
			float _DistortionTiling;
			float _SpecularBoost;
			float _MagmaGlow;
			float _Specular;
			float _HeightTiling;
			float _FrenselMult;
			float _FresnelPower;
			float _NormalScale;
			float _NormalTiling;
			float _HeightDetail;
			float _LavaFactorsZ;
			float _LavaFactorsY;
			float _LavaFactorsX;
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

			sampler2D _DetailMap;
			sampler2D _HeightMap;
			sampler2D _NormalMap;
			sampler2D _DistortionMap;
			sampler2D _MagmaMap;


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

			#define ASE_NEEDS_FRAG_NORMAL
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR


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
				outputPackedVaryingsMeshToPS.ase_texcoord8.xyz = ase_worldBitangent;
				
				outputPackedVaryingsMeshToPS.ase_normal = inputMesh.normalOS;
				outputPackedVaryingsMeshToPS.ase_texcoord7 = float4(inputMesh.positionOS,1);
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord8.w = 0;

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
				float3 temp_cast_2 = (3.0).xxx;
				float3 temp_output_4_0_g237 = pow( abs( packedInput.ase_normal ) , temp_cast_2 );
				float3 break6_g237 = temp_output_4_0_g237;
				float3 projNormal10_g237 = ( temp_output_4_0_g237 / ( break6_g237.x + break6_g237.y + break6_g237.z ) );
				float localBicubicPrepare2_g239 = ( 0.0 );
				float3 break26_g237 = packedInput.ase_texcoord7.xyz;
				float2 appendResult27_g237 = (float2(break26_g237.z , break26_g237.y));
				float3 nSign18_g237 = sign( packedInput.ase_normal );
				float3 break20_g237 = nSign18_g237;
				float2 appendResult21_g237 = (float2(break20_g237.x , 1.0));
				float temp_output_29_0_g237 = _DetailTiling;
				float2 temp_output_65_0_g237 = float2( 0,0 );
				float2 temp_output_68_0_g237 = ( ( appendResult27_g237 * appendResult21_g237 * temp_output_29_0_g237 ) + temp_output_65_0_g237 );
				float2 Input_UV100_g239 = temp_output_68_0_g237;
				float2 UV2_g239 = Input_UV100_g239;
				float4 TexelSize2_g239 = _DetailMap_TexelSize;
				float2 UV02_g239 = float2( 0,0 );
				float2 UV12_g239 = float2( 0,0 );
				float2 UV22_g239 = float2( 0,0 );
				float2 UV32_g239 = float2( 0,0 );
				float W02_g239 = 0;
				float W12_g239 = 0;
				{
				{
				 UV2_g239 = UV2_g239 * TexelSize2_g239.zw - 0.5;
				    float2 f = frac( UV2_g239 );
				    UV2_g239 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g239.x - 0.5, UV2_g239.x + 1.5, UV2_g239.y - 0.5, UV2_g239.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g239.xyxy;
				    UV02_g239 = off.xz;
				    UV12_g239 = off.yz;
				    UV22_g239 = off.xw;
				    UV32_g239 = off.yw;
				    W02_g239 = s.x / ( s.x + s.y );
				 W12_g239 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g239 = lerp( tex2D( _DetailMap, UV32_g239 ) , tex2D( _DetailMap, UV22_g239 ) , W02_g239);
				float4 lerpResult45_g239 = lerp( tex2D( _DetailMap, UV12_g239 ) , tex2D( _DetailMap, UV02_g239 ) , W02_g239);
				float4 lerpResult44_g239 = lerp( lerpResult46_g239 , lerpResult45_g239 , W12_g239);
				float4 Output_2D131_g239 = lerpResult44_g239;
				float localBicubicPrepare2_g240 = ( 0.0 );
				float2 appendResult32_g237 = (float2(break26_g237.x , break26_g237.z));
				float2 appendResult22_g237 = (float2(break20_g237.y , 1.0));
				float2 temp_output_66_0_g237 = ( ( temp_output_29_0_g237 * appendResult32_g237 * appendResult22_g237 ) + temp_output_65_0_g237 );
				float2 Input_UV100_g240 = temp_output_66_0_g237;
				float2 UV2_g240 = Input_UV100_g240;
				float4 TexelSize2_g240 = _DetailMap_TexelSize;
				float2 UV02_g240 = float2( 0,0 );
				float2 UV12_g240 = float2( 0,0 );
				float2 UV22_g240 = float2( 0,0 );
				float2 UV32_g240 = float2( 0,0 );
				float W02_g240 = 0;
				float W12_g240 = 0;
				{
				{
				 UV2_g240 = UV2_g240 * TexelSize2_g240.zw - 0.5;
				    float2 f = frac( UV2_g240 );
				    UV2_g240 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g240.x - 0.5, UV2_g240.x + 1.5, UV2_g240.y - 0.5, UV2_g240.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g240.xyxy;
				    UV02_g240 = off.xz;
				    UV12_g240 = off.yz;
				    UV22_g240 = off.xw;
				    UV32_g240 = off.yw;
				    W02_g240 = s.x / ( s.x + s.y );
				 W12_g240 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g240 = lerp( tex2D( _DetailMap, UV32_g240 ) , tex2D( _DetailMap, UV22_g240 ) , W02_g240);
				float4 lerpResult45_g240 = lerp( tex2D( _DetailMap, UV12_g240 ) , tex2D( _DetailMap, UV02_g240 ) , W02_g240);
				float4 lerpResult44_g240 = lerp( lerpResult46_g240 , lerpResult45_g240 , W12_g240);
				float4 Output_2D131_g240 = lerpResult44_g240;
				float localBicubicPrepare2_g238 = ( 0.0 );
				float2 appendResult34_g237 = (float2(break26_g237.x , break26_g237.y));
				float2 appendResult25_g237 = (float2(-break20_g237.z , 1.0));
				float2 temp_output_67_0_g237 = ( temp_output_65_0_g237 + ( temp_output_29_0_g237 * appendResult34_g237 * appendResult25_g237 ) );
				float2 Input_UV100_g238 = temp_output_67_0_g237;
				float2 UV2_g238 = Input_UV100_g238;
				float4 TexelSize2_g238 = _DetailMap_TexelSize;
				float2 UV02_g238 = float2( 0,0 );
				float2 UV12_g238 = float2( 0,0 );
				float2 UV22_g238 = float2( 0,0 );
				float2 UV32_g238 = float2( 0,0 );
				float W02_g238 = 0;
				float W12_g238 = 0;
				{
				{
				 UV2_g238 = UV2_g238 * TexelSize2_g238.zw - 0.5;
				    float2 f = frac( UV2_g238 );
				    UV2_g238 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g238.x - 0.5, UV2_g238.x + 1.5, UV2_g238.y - 0.5, UV2_g238.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g238.xyxy;
				    UV02_g238 = off.xz;
				    UV12_g238 = off.yz;
				    UV22_g238 = off.xw;
				    UV32_g238 = off.yw;
				    W02_g238 = s.x / ( s.x + s.y );
				 W12_g238 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g238 = lerp( tex2D( _DetailMap, UV32_g238 ) , tex2D( _DetailMap, UV22_g238 ) , W02_g238);
				float4 lerpResult45_g238 = lerp( tex2D( _DetailMap, UV12_g238 ) , tex2D( _DetailMap, UV02_g238 ) , W02_g238);
				float4 lerpResult44_g238 = lerp( lerpResult46_g238 , lerpResult45_g238 , W12_g238);
				float4 Output_2D131_g238 = lerpResult44_g238;
				float4 break138 = saturate( ( ( projNormal10_g237.x * Output_2D131_g239 ) + ( projNormal10_g237.y * Output_2D131_g240 ) + ( projNormal10_g237.z * Output_2D131_g238 ) ) );
				float detailTex146 = saturate( ( _DetailExp * pow( max( 0.0 , ( break138.r * break138.g ) ) , _DetailExp ) * 5000.0 ) );
				float3 temp_cast_3 = (3.0).xxx;
				float3 temp_output_4_0_g232 = pow( abs( packedInput.ase_normal ) , temp_cast_3 );
				float3 break6_g232 = temp_output_4_0_g232;
				float3 projNormal10_g232 = ( temp_output_4_0_g232 / ( break6_g232.x + break6_g232.y + break6_g232.z ) );
				float localBicubicPrepare2_g234 = ( 0.0 );
				float3 break26_g232 = packedInput.ase_texcoord7.xyz;
				float2 appendResult27_g232 = (float2(break26_g232.z , break26_g232.y));
				float3 nSign18_g232 = sign( packedInput.ase_normal );
				float3 break20_g232 = nSign18_g232;
				float2 appendResult21_g232 = (float2(break20_g232.x , 1.0));
				float temp_output_29_0_g232 = _HeightTiling;
				float2 temp_output_65_0_g232 = float2( 0,0 );
				float2 temp_output_68_0_g232 = ( ( appendResult27_g232 * appendResult21_g232 * temp_output_29_0_g232 ) + temp_output_65_0_g232 );
				float2 Input_UV100_g234 = temp_output_68_0_g232;
				float2 UV2_g234 = Input_UV100_g234;
				float4 TexelSize2_g234 = _HeightMap_TexelSize;
				float2 UV02_g234 = float2( 0,0 );
				float2 UV12_g234 = float2( 0,0 );
				float2 UV22_g234 = float2( 0,0 );
				float2 UV32_g234 = float2( 0,0 );
				float W02_g234 = 0;
				float W12_g234 = 0;
				{
				{
				 UV2_g234 = UV2_g234 * TexelSize2_g234.zw - 0.5;
				    float2 f = frac( UV2_g234 );
				    UV2_g234 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g234.x - 0.5, UV2_g234.x + 1.5, UV2_g234.y - 0.5, UV2_g234.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g234.xyxy;
				    UV02_g234 = off.xz;
				    UV12_g234 = off.yz;
				    UV22_g234 = off.xw;
				    UV32_g234 = off.yw;
				    W02_g234 = s.x / ( s.x + s.y );
				 W12_g234 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g234 = lerp( tex2D( _HeightMap, UV32_g234 ) , tex2D( _HeightMap, UV22_g234 ) , W02_g234);
				float4 lerpResult45_g234 = lerp( tex2D( _HeightMap, UV12_g234 ) , tex2D( _HeightMap, UV02_g234 ) , W02_g234);
				float4 lerpResult44_g234 = lerp( lerpResult46_g234 , lerpResult45_g234 , W12_g234);
				float4 Output_2D131_g234 = lerpResult44_g234;
				float localBicubicPrepare2_g235 = ( 0.0 );
				float2 appendResult32_g232 = (float2(break26_g232.x , break26_g232.z));
				float2 appendResult22_g232 = (float2(break20_g232.y , 1.0));
				float2 temp_output_66_0_g232 = ( ( temp_output_29_0_g232 * appendResult32_g232 * appendResult22_g232 ) + temp_output_65_0_g232 );
				float2 Input_UV100_g235 = temp_output_66_0_g232;
				float2 UV2_g235 = Input_UV100_g235;
				float4 TexelSize2_g235 = _HeightMap_TexelSize;
				float2 UV02_g235 = float2( 0,0 );
				float2 UV12_g235 = float2( 0,0 );
				float2 UV22_g235 = float2( 0,0 );
				float2 UV32_g235 = float2( 0,0 );
				float W02_g235 = 0;
				float W12_g235 = 0;
				{
				{
				 UV2_g235 = UV2_g235 * TexelSize2_g235.zw - 0.5;
				    float2 f = frac( UV2_g235 );
				    UV2_g235 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g235.x - 0.5, UV2_g235.x + 1.5, UV2_g235.y - 0.5, UV2_g235.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g235.xyxy;
				    UV02_g235 = off.xz;
				    UV12_g235 = off.yz;
				    UV22_g235 = off.xw;
				    UV32_g235 = off.yw;
				    W02_g235 = s.x / ( s.x + s.y );
				 W12_g235 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g235 = lerp( tex2D( _HeightMap, UV32_g235 ) , tex2D( _HeightMap, UV22_g235 ) , W02_g235);
				float4 lerpResult45_g235 = lerp( tex2D( _HeightMap, UV12_g235 ) , tex2D( _HeightMap, UV02_g235 ) , W02_g235);
				float4 lerpResult44_g235 = lerp( lerpResult46_g235 , lerpResult45_g235 , W12_g235);
				float4 Output_2D131_g235 = lerpResult44_g235;
				float localBicubicPrepare2_g233 = ( 0.0 );
				float2 appendResult34_g232 = (float2(break26_g232.x , break26_g232.y));
				float2 appendResult25_g232 = (float2(-break20_g232.z , 1.0));
				float2 temp_output_67_0_g232 = ( temp_output_65_0_g232 + ( temp_output_29_0_g232 * appendResult34_g232 * appendResult25_g232 ) );
				float2 Input_UV100_g233 = temp_output_67_0_g232;
				float2 UV2_g233 = Input_UV100_g233;
				float4 TexelSize2_g233 = _HeightMap_TexelSize;
				float2 UV02_g233 = float2( 0,0 );
				float2 UV12_g233 = float2( 0,0 );
				float2 UV22_g233 = float2( 0,0 );
				float2 UV32_g233 = float2( 0,0 );
				float W02_g233 = 0;
				float W12_g233 = 0;
				{
				{
				 UV2_g233 = UV2_g233 * TexelSize2_g233.zw - 0.5;
				    float2 f = frac( UV2_g233 );
				    UV2_g233 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g233.x - 0.5, UV2_g233.x + 1.5, UV2_g233.y - 0.5, UV2_g233.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g233.xyxy;
				    UV02_g233 = off.xz;
				    UV12_g233 = off.yz;
				    UV22_g233 = off.xw;
				    UV32_g233 = off.yw;
				    W02_g233 = s.x / ( s.x + s.y );
				 W12_g233 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g233 = lerp( tex2D( _HeightMap, UV32_g233 ) , tex2D( _HeightMap, UV22_g233 ) , W02_g233);
				float4 lerpResult45_g233 = lerp( tex2D( _HeightMap, UV12_g233 ) , tex2D( _HeightMap, UV02_g233 ) , W02_g233);
				float4 lerpResult44_g233 = lerp( lerpResult46_g233 , lerpResult45_g233 , W12_g233);
				float4 Output_2D131_g233 = lerpResult44_g233;
				float detaledHeight167 = saturate( ( detailTex146 * saturate( ( saturate( ( ( projNormal10_g232.x * Output_2D131_g234 ) + ( projNormal10_g232.y * Output_2D131_g235 ) + ( projNormal10_g232.z * Output_2D131_g233 ) ) ).r * _HeightDetail ) ) ) );
				float temp_output_2_0_g241 = saturate( ( _LavaFactorsX - _LavaDetail ) );
				float detaledHeight01178 = saturate( saturate( ( ( detaledHeight167 - temp_output_2_0_g241 ) / ( saturate( ( _LavaFactorsY - _LavaDetail ) ) - temp_output_2_0_g241 ) ) ) );
				float temp_output_6_0_g227 = ( detaledHeight01178 / _LavaFactorsZ );
				float3 lerpResult8_g227 = lerp( _LavaLow.rgb , _LavaMid.rgb , saturate( temp_output_6_0_g227 ));
				float3 lerpResult12_g227 = lerp( lerpResult8_g227 , _LavaHigh.rgb , saturate( ( temp_output_6_0_g227 - 1.0 ) ));
				float3 baseColor213 = lerpResult12_g227;
				float3 ase_worldBitangent = packedInput.ase_texcoord8.xyz;
				float3 tanToWorld0 = float3( tangentWS.xyz.x, ase_worldBitangent.x, normalWS.x );
				float3 tanToWorld1 = float3( tangentWS.xyz.y, ase_worldBitangent.y, normalWS.y );
				float3 tanToWorld2 = float3( tangentWS.xyz.z, ase_worldBitangent.z, normalWS.z );
				float3 ase_tanViewDir =  tanToWorld0 * V.x + tanToWorld1 * V.y  + tanToWorld2 * V.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float3 temp_cast_5 = (3.0).xxx;
				float3 temp_output_4_0_g228 = pow( abs( packedInput.ase_normal ) , temp_cast_5 );
				float3 break6_g228 = temp_output_4_0_g228;
				float3 projNormal10_g228 = ( temp_output_4_0_g228 / ( break6_g228.x + break6_g228.y + break6_g228.z ) );
				float localBicubicPrepare2_g230 = ( 0.0 );
				float3 break26_g228 = packedInput.ase_texcoord7.xyz;
				float2 appendResult27_g228 = (float2(break26_g228.z , break26_g228.y));
				float3 nSign18_g228 = sign( packedInput.ase_normal );
				float3 break20_g228 = nSign18_g228;
				float2 appendResult21_g228 = (float2(break20_g228.x , 1.0));
				float temp_output_29_0_g228 = _NormalTiling;
				float2 temp_output_65_0_g228 = float2( 0,0 );
				float2 temp_output_68_0_g228 = ( ( appendResult27_g228 * appendResult21_g228 * temp_output_29_0_g228 ) + temp_output_65_0_g228 );
				float2 Input_UV100_g230 = temp_output_68_0_g228;
				float2 UV2_g230 = Input_UV100_g230;
				float4 TexelSize2_g230 = _NormalMap_TexelSize;
				float2 UV02_g230 = float2( 0,0 );
				float2 UV12_g230 = float2( 0,0 );
				float2 UV22_g230 = float2( 0,0 );
				float2 UV32_g230 = float2( 0,0 );
				float W02_g230 = 0;
				float W12_g230 = 0;
				{
				{
				 UV2_g230 = UV2_g230 * TexelSize2_g230.zw - 0.5;
				    float2 f = frac( UV2_g230 );
				    UV2_g230 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g230.x - 0.5, UV2_g230.x + 1.5, UV2_g230.y - 0.5, UV2_g230.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g230.xyxy;
				    UV02_g230 = off.xz;
				    UV12_g230 = off.yz;
				    UV22_g230 = off.xw;
				    UV32_g230 = off.yw;
				    W02_g230 = s.x / ( s.x + s.y );
				 W12_g230 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g230 = lerp( tex2D( _NormalMap, UV32_g230 ) , tex2D( _NormalMap, UV22_g230 ) , W02_g230);
				float4 lerpResult45_g230 = lerp( tex2D( _NormalMap, UV12_g230 ) , tex2D( _NormalMap, UV02_g230 ) , W02_g230);
				float4 lerpResult44_g230 = lerp( lerpResult46_g230 , lerpResult45_g230 , W12_g230);
				float4 Output_2D131_g230 = lerpResult44_g230;
				float localBicubicPrepare2_g231 = ( 0.0 );
				float2 appendResult32_g228 = (float2(break26_g228.x , break26_g228.z));
				float2 appendResult22_g228 = (float2(break20_g228.y , 1.0));
				float2 temp_output_66_0_g228 = ( ( temp_output_29_0_g228 * appendResult32_g228 * appendResult22_g228 ) + temp_output_65_0_g228 );
				float2 Input_UV100_g231 = temp_output_66_0_g228;
				float2 UV2_g231 = Input_UV100_g231;
				float4 TexelSize2_g231 = _NormalMap_TexelSize;
				float2 UV02_g231 = float2( 0,0 );
				float2 UV12_g231 = float2( 0,0 );
				float2 UV22_g231 = float2( 0,0 );
				float2 UV32_g231 = float2( 0,0 );
				float W02_g231 = 0;
				float W12_g231 = 0;
				{
				{
				 UV2_g231 = UV2_g231 * TexelSize2_g231.zw - 0.5;
				    float2 f = frac( UV2_g231 );
				    UV2_g231 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g231.x - 0.5, UV2_g231.x + 1.5, UV2_g231.y - 0.5, UV2_g231.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g231.xyxy;
				    UV02_g231 = off.xz;
				    UV12_g231 = off.yz;
				    UV22_g231 = off.xw;
				    UV32_g231 = off.yw;
				    W02_g231 = s.x / ( s.x + s.y );
				 W12_g231 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g231 = lerp( tex2D( _NormalMap, UV32_g231 ) , tex2D( _NormalMap, UV22_g231 ) , W02_g231);
				float4 lerpResult45_g231 = lerp( tex2D( _NormalMap, UV12_g231 ) , tex2D( _NormalMap, UV02_g231 ) , W02_g231);
				float4 lerpResult44_g231 = lerp( lerpResult46_g231 , lerpResult45_g231 , W12_g231);
				float4 Output_2D131_g231 = lerpResult44_g231;
				float localBicubicPrepare2_g229 = ( 0.0 );
				float2 appendResult34_g228 = (float2(break26_g228.x , break26_g228.y));
				float2 appendResult25_g228 = (float2(-break20_g228.z , 1.0));
				float2 temp_output_67_0_g228 = ( temp_output_65_0_g228 + ( temp_output_29_0_g228 * appendResult34_g228 * appendResult25_g228 ) );
				float2 Input_UV100_g229 = temp_output_67_0_g228;
				float2 UV2_g229 = Input_UV100_g229;
				float4 TexelSize2_g229 = _NormalMap_TexelSize;
				float2 UV02_g229 = float2( 0,0 );
				float2 UV12_g229 = float2( 0,0 );
				float2 UV22_g229 = float2( 0,0 );
				float2 UV32_g229 = float2( 0,0 );
				float W02_g229 = 0;
				float W12_g229 = 0;
				{
				{
				 UV2_g229 = UV2_g229 * TexelSize2_g229.zw - 0.5;
				    float2 f = frac( UV2_g229 );
				    UV2_g229 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g229.x - 0.5, UV2_g229.x + 1.5, UV2_g229.y - 0.5, UV2_g229.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g229.xyxy;
				    UV02_g229 = off.xz;
				    UV12_g229 = off.yz;
				    UV22_g229 = off.xw;
				    UV32_g229 = off.yw;
				    W02_g229 = s.x / ( s.x + s.y );
				 W12_g229 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g229 = lerp( tex2D( _NormalMap, UV32_g229 ) , tex2D( _NormalMap, UV22_g229 ) , W02_g229);
				float4 lerpResult45_g229 = lerp( tex2D( _NormalMap, UV12_g229 ) , tex2D( _NormalMap, UV02_g229 ) , W02_g229);
				float4 lerpResult44_g229 = lerp( lerpResult46_g229 , lerpResult45_g229 , W12_g229);
				float4 Output_2D131_g229 = lerpResult44_g229;
				float3 unpack195 = UnpackNormalScale( saturate( ( ( projNormal10_g228.x * Output_2D131_g230 ) + ( projNormal10_g228.y * Output_2D131_g231 ) + ( projNormal10_g228.z * Output_2D131_g229 ) ) ), _NormalScale );
				unpack195.z = lerp( 1, unpack195.z, saturate(_NormalScale) );
				float3 normalUnpacked196 = unpack195;
				float3 normalizeResult5_g236 = normalize( normalUnpacked196 );
				float dotResult14_g236 = dot( ase_tanViewDir , normalizeResult5_g236 );
				float detailX235 = break138.r;
				float3 fresnel268 = saturate( ( ( ( saturate( pow( max( 0.0 , saturate( ( 1.0 - dotResult14_g236 ) ) ) , _FresnelPower ) ) * _FrenselMult ) * (_FresnelColor).rgb ) * detailX235 ) );
				
				float4 spec390 = saturate( ( detailTex146 * _Specular * _SpecularColor * _SpecularBoost ) );
				
				float3 temp_cast_9 = (3.0).xxx;
				float3 temp_output_4_0_g215 = pow( abs( packedInput.ase_normal ) , temp_cast_9 );
				float3 break6_g215 = temp_output_4_0_g215;
				float3 projNormal10_g215 = ( temp_output_4_0_g215 / ( break6_g215.x + break6_g215.y + break6_g215.z ) );
				float localBicubicPrepare2_g217 = ( 0.0 );
				float3 break26_g215 = packedInput.ase_texcoord7.xyz;
				float2 appendResult27_g215 = (float2(break26_g215.z , break26_g215.y));
				float3 nSign18_g215 = sign( packedInput.ase_normal );
				float3 break20_g215 = nSign18_g215;
				float2 appendResult21_g215 = (float2(break20_g215.x , 1.0));
				float temp_output_29_0_g215 = _DistortionTiling;
				float temp_output_10_0_g214 = ( _TimeParameters.x * _DistortionSpeed );
				float2 appendResult12_g214 = (float2(temp_output_10_0_g214 , temp_output_10_0_g214));
				float3 temp_cast_10 = (3.0).xxx;
				float3 temp_output_4_0_g219 = pow( abs( packedInput.ase_normal ) , temp_cast_10 );
				float3 break6_g219 = temp_output_4_0_g219;
				float3 projNormal10_g219 = ( temp_output_4_0_g219 / ( break6_g219.x + break6_g219.y + break6_g219.z ) );
				float localBicubicPrepare2_g221 = ( 0.0 );
				float3 break26_g219 = packedInput.ase_texcoord7.xyz;
				float2 appendResult27_g219 = (float2(break26_g219.z , break26_g219.y));
				float3 nSign18_g219 = sign( packedInput.ase_normal );
				float3 break20_g219 = nSign18_g219;
				float2 appendResult21_g219 = (float2(break20_g219.x , 1.0));
				float temp_output_29_0_g219 = _DistortionUVTiling;
				float temp_output_2_0_g214 = ( _TimeParameters.x * _DistortionUVSpeed );
				float2 appendResult5_g214 = (float2(temp_output_2_0_g214 , temp_output_2_0_g214));
				float2 temp_output_65_0_g219 = appendResult5_g214;
				float2 temp_output_68_0_g219 = ( ( appendResult27_g219 * appendResult21_g219 * temp_output_29_0_g219 ) + temp_output_65_0_g219 );
				float2 Input_UV100_g221 = temp_output_68_0_g219;
				float2 UV2_g221 = Input_UV100_g221;
				float4 TexelSize2_g221 = _DistortionMap_TexelSize;
				float2 UV02_g221 = float2( 0,0 );
				float2 UV12_g221 = float2( 0,0 );
				float2 UV22_g221 = float2( 0,0 );
				float2 UV32_g221 = float2( 0,0 );
				float W02_g221 = 0;
				float W12_g221 = 0;
				{
				{
				 UV2_g221 = UV2_g221 * TexelSize2_g221.zw - 0.5;
				    float2 f = frac( UV2_g221 );
				    UV2_g221 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g221.x - 0.5, UV2_g221.x + 1.5, UV2_g221.y - 0.5, UV2_g221.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g221.xyxy;
				    UV02_g221 = off.xz;
				    UV12_g221 = off.yz;
				    UV22_g221 = off.xw;
				    UV32_g221 = off.yw;
				    W02_g221 = s.x / ( s.x + s.y );
				 W12_g221 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g221 = lerp( tex2D( _DistortionMap, UV32_g221 ) , tex2D( _DistortionMap, UV22_g221 ) , W02_g221);
				float4 lerpResult45_g221 = lerp( tex2D( _DistortionMap, UV12_g221 ) , tex2D( _DistortionMap, UV02_g221 ) , W02_g221);
				float4 lerpResult44_g221 = lerp( lerpResult46_g221 , lerpResult45_g221 , W12_g221);
				float4 Output_2D131_g221 = lerpResult44_g221;
				float localBicubicPrepare2_g222 = ( 0.0 );
				float2 appendResult32_g219 = (float2(break26_g219.x , break26_g219.z));
				float2 appendResult22_g219 = (float2(break20_g219.y , 1.0));
				float2 temp_output_66_0_g219 = ( ( temp_output_29_0_g219 * appendResult32_g219 * appendResult22_g219 ) + temp_output_65_0_g219 );
				float2 Input_UV100_g222 = temp_output_66_0_g219;
				float2 UV2_g222 = Input_UV100_g222;
				float4 TexelSize2_g222 = _DistortionMap_TexelSize;
				float2 UV02_g222 = float2( 0,0 );
				float2 UV12_g222 = float2( 0,0 );
				float2 UV22_g222 = float2( 0,0 );
				float2 UV32_g222 = float2( 0,0 );
				float W02_g222 = 0;
				float W12_g222 = 0;
				{
				{
				 UV2_g222 = UV2_g222 * TexelSize2_g222.zw - 0.5;
				    float2 f = frac( UV2_g222 );
				    UV2_g222 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g222.x - 0.5, UV2_g222.x + 1.5, UV2_g222.y - 0.5, UV2_g222.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g222.xyxy;
				    UV02_g222 = off.xz;
				    UV12_g222 = off.yz;
				    UV22_g222 = off.xw;
				    UV32_g222 = off.yw;
				    W02_g222 = s.x / ( s.x + s.y );
				 W12_g222 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g222 = lerp( tex2D( _DistortionMap, UV32_g222 ) , tex2D( _DistortionMap, UV22_g222 ) , W02_g222);
				float4 lerpResult45_g222 = lerp( tex2D( _DistortionMap, UV12_g222 ) , tex2D( _DistortionMap, UV02_g222 ) , W02_g222);
				float4 lerpResult44_g222 = lerp( lerpResult46_g222 , lerpResult45_g222 , W12_g222);
				float4 Output_2D131_g222 = lerpResult44_g222;
				float localBicubicPrepare2_g220 = ( 0.0 );
				float2 appendResult34_g219 = (float2(break26_g219.x , break26_g219.y));
				float2 appendResult25_g219 = (float2(-break20_g219.z , 1.0));
				float2 temp_output_67_0_g219 = ( temp_output_65_0_g219 + ( temp_output_29_0_g219 * appendResult34_g219 * appendResult25_g219 ) );
				float2 Input_UV100_g220 = temp_output_67_0_g219;
				float2 UV2_g220 = Input_UV100_g220;
				float4 TexelSize2_g220 = _DistortionMap_TexelSize;
				float2 UV02_g220 = float2( 0,0 );
				float2 UV12_g220 = float2( 0,0 );
				float2 UV22_g220 = float2( 0,0 );
				float2 UV32_g220 = float2( 0,0 );
				float W02_g220 = 0;
				float W12_g220 = 0;
				{
				{
				 UV2_g220 = UV2_g220 * TexelSize2_g220.zw - 0.5;
				    float2 f = frac( UV2_g220 );
				    UV2_g220 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g220.x - 0.5, UV2_g220.x + 1.5, UV2_g220.y - 0.5, UV2_g220.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g220.xyxy;
				    UV02_g220 = off.xz;
				    UV12_g220 = off.yz;
				    UV22_g220 = off.xw;
				    UV32_g220 = off.yw;
				    W02_g220 = s.x / ( s.x + s.y );
				 W12_g220 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g220 = lerp( tex2D( _DistortionMap, UV32_g220 ) , tex2D( _DistortionMap, UV22_g220 ) , W02_g220);
				float4 lerpResult45_g220 = lerp( tex2D( _DistortionMap, UV12_g220 ) , tex2D( _DistortionMap, UV02_g220 ) , W02_g220);
				float4 lerpResult44_g220 = lerp( lerpResult46_g220 , lerpResult45_g220 , W12_g220);
				float4 Output_2D131_g220 = lerpResult44_g220;
				float4 break11_g214 = ( saturate( ( ( projNormal10_g219.x * Output_2D131_g221 ) + ( projNormal10_g219.y * Output_2D131_g222 ) + ( projNormal10_g219.z * Output_2D131_g220 ) ) ) * _DistortionFactor );
				float2 appendResult13_g214 = (float2(break11_g214.r , break11_g214.g));
				float2 temp_output_65_0_g215 = ( appendResult12_g214 + appendResult13_g214 );
				float2 temp_output_68_0_g215 = ( ( appendResult27_g215 * appendResult21_g215 * temp_output_29_0_g215 ) + temp_output_65_0_g215 );
				float2 Input_UV100_g217 = temp_output_68_0_g215;
				float2 UV2_g217 = Input_UV100_g217;
				float4 TexelSize2_g217 = _DistortionMap_TexelSize;
				float2 UV02_g217 = float2( 0,0 );
				float2 UV12_g217 = float2( 0,0 );
				float2 UV22_g217 = float2( 0,0 );
				float2 UV32_g217 = float2( 0,0 );
				float W02_g217 = 0;
				float W12_g217 = 0;
				{
				{
				 UV2_g217 = UV2_g217 * TexelSize2_g217.zw - 0.5;
				    float2 f = frac( UV2_g217 );
				    UV2_g217 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g217.x - 0.5, UV2_g217.x + 1.5, UV2_g217.y - 0.5, UV2_g217.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g217.xyxy;
				    UV02_g217 = off.xz;
				    UV12_g217 = off.yz;
				    UV22_g217 = off.xw;
				    UV32_g217 = off.yw;
				    W02_g217 = s.x / ( s.x + s.y );
				 W12_g217 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g217 = lerp( tex2D( _DistortionMap, UV32_g217 ) , tex2D( _DistortionMap, UV22_g217 ) , W02_g217);
				float4 lerpResult45_g217 = lerp( tex2D( _DistortionMap, UV12_g217 ) , tex2D( _DistortionMap, UV02_g217 ) , W02_g217);
				float4 lerpResult44_g217 = lerp( lerpResult46_g217 , lerpResult45_g217 , W12_g217);
				float4 Output_2D131_g217 = lerpResult44_g217;
				float localBicubicPrepare2_g218 = ( 0.0 );
				float2 appendResult32_g215 = (float2(break26_g215.x , break26_g215.z));
				float2 appendResult22_g215 = (float2(break20_g215.y , 1.0));
				float2 temp_output_66_0_g215 = ( ( temp_output_29_0_g215 * appendResult32_g215 * appendResult22_g215 ) + temp_output_65_0_g215 );
				float2 Input_UV100_g218 = temp_output_66_0_g215;
				float2 UV2_g218 = Input_UV100_g218;
				float4 TexelSize2_g218 = _DistortionMap_TexelSize;
				float2 UV02_g218 = float2( 0,0 );
				float2 UV12_g218 = float2( 0,0 );
				float2 UV22_g218 = float2( 0,0 );
				float2 UV32_g218 = float2( 0,0 );
				float W02_g218 = 0;
				float W12_g218 = 0;
				{
				{
				 UV2_g218 = UV2_g218 * TexelSize2_g218.zw - 0.5;
				    float2 f = frac( UV2_g218 );
				    UV2_g218 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g218.x - 0.5, UV2_g218.x + 1.5, UV2_g218.y - 0.5, UV2_g218.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g218.xyxy;
				    UV02_g218 = off.xz;
				    UV12_g218 = off.yz;
				    UV22_g218 = off.xw;
				    UV32_g218 = off.yw;
				    W02_g218 = s.x / ( s.x + s.y );
				 W12_g218 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g218 = lerp( tex2D( _DistortionMap, UV32_g218 ) , tex2D( _DistortionMap, UV22_g218 ) , W02_g218);
				float4 lerpResult45_g218 = lerp( tex2D( _DistortionMap, UV12_g218 ) , tex2D( _DistortionMap, UV02_g218 ) , W02_g218);
				float4 lerpResult44_g218 = lerp( lerpResult46_g218 , lerpResult45_g218 , W12_g218);
				float4 Output_2D131_g218 = lerpResult44_g218;
				float localBicubicPrepare2_g216 = ( 0.0 );
				float2 appendResult34_g215 = (float2(break26_g215.x , break26_g215.y));
				float2 appendResult25_g215 = (float2(-break20_g215.z , 1.0));
				float2 temp_output_67_0_g215 = ( temp_output_65_0_g215 + ( temp_output_29_0_g215 * appendResult34_g215 * appendResult25_g215 ) );
				float2 Input_UV100_g216 = temp_output_67_0_g215;
				float2 UV2_g216 = Input_UV100_g216;
				float4 TexelSize2_g216 = _DistortionMap_TexelSize;
				float2 UV02_g216 = float2( 0,0 );
				float2 UV12_g216 = float2( 0,0 );
				float2 UV22_g216 = float2( 0,0 );
				float2 UV32_g216 = float2( 0,0 );
				float W02_g216 = 0;
				float W12_g216 = 0;
				{
				{
				 UV2_g216 = UV2_g216 * TexelSize2_g216.zw - 0.5;
				    float2 f = frac( UV2_g216 );
				    UV2_g216 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g216.x - 0.5, UV2_g216.x + 1.5, UV2_g216.y - 0.5, UV2_g216.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g216.xyxy;
				    UV02_g216 = off.xz;
				    UV12_g216 = off.yz;
				    UV22_g216 = off.xw;
				    UV32_g216 = off.yw;
				    W02_g216 = s.x / ( s.x + s.y );
				 W12_g216 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g216 = lerp( tex2D( _DistortionMap, UV32_g216 ) , tex2D( _DistortionMap, UV22_g216 ) , W02_g216);
				float4 lerpResult45_g216 = lerp( tex2D( _DistortionMap, UV12_g216 ) , tex2D( _DistortionMap, UV02_g216 ) , W02_g216);
				float4 lerpResult44_g216 = lerp( lerpResult46_g216 , lerpResult45_g216 , W12_g216);
				float4 Output_2D131_g216 = lerpResult44_g216;
				float3 temp_cast_11 = (3.0).xxx;
				float3 temp_output_4_0_g247 = pow( abs( packedInput.ase_normal ) , temp_cast_11 );
				float3 break6_g247 = temp_output_4_0_g247;
				float3 projNormal10_g247 = ( temp_output_4_0_g247 / ( break6_g247.x + break6_g247.y + break6_g247.z ) );
				float localBicubicPrepare2_g249 = ( 0.0 );
				float3 break26_g247 = packedInput.ase_texcoord7.xyz;
				float2 appendResult27_g247 = (float2(break26_g247.z , break26_g247.y));
				float3 nSign18_g247 = sign( packedInput.ase_normal );
				float3 break20_g247 = nSign18_g247;
				float2 appendResult21_g247 = (float2(break20_g247.x , 1.0));
				float temp_output_29_0_g247 = _MagmaTiling;
				float2 temp_output_65_0_g247 = float2( 0,0 );
				float2 temp_output_68_0_g247 = ( ( appendResult27_g247 * appendResult21_g247 * temp_output_29_0_g247 ) + temp_output_65_0_g247 );
				float2 Input_UV100_g249 = temp_output_68_0_g247;
				float2 UV2_g249 = Input_UV100_g249;
				float4 TexelSize2_g249 = _MagmaMap_TexelSize;
				float2 UV02_g249 = float2( 0,0 );
				float2 UV12_g249 = float2( 0,0 );
				float2 UV22_g249 = float2( 0,0 );
				float2 UV32_g249 = float2( 0,0 );
				float W02_g249 = 0;
				float W12_g249 = 0;
				{
				{
				 UV2_g249 = UV2_g249 * TexelSize2_g249.zw - 0.5;
				    float2 f = frac( UV2_g249 );
				    UV2_g249 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g249.x - 0.5, UV2_g249.x + 1.5, UV2_g249.y - 0.5, UV2_g249.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g249.xyxy;
				    UV02_g249 = off.xz;
				    UV12_g249 = off.yz;
				    UV22_g249 = off.xw;
				    UV32_g249 = off.yw;
				    W02_g249 = s.x / ( s.x + s.y );
				 W12_g249 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g249 = lerp( tex2D( _MagmaMap, UV32_g249 ) , tex2D( _MagmaMap, UV22_g249 ) , W02_g249);
				float4 lerpResult45_g249 = lerp( tex2D( _MagmaMap, UV12_g249 ) , tex2D( _MagmaMap, UV02_g249 ) , W02_g249);
				float4 lerpResult44_g249 = lerp( lerpResult46_g249 , lerpResult45_g249 , W12_g249);
				float4 Output_2D131_g249 = lerpResult44_g249;
				float localBicubicPrepare2_g250 = ( 0.0 );
				float2 appendResult32_g247 = (float2(break26_g247.x , break26_g247.z));
				float2 appendResult22_g247 = (float2(break20_g247.y , 1.0));
				float2 temp_output_66_0_g247 = ( ( temp_output_29_0_g247 * appendResult32_g247 * appendResult22_g247 ) + temp_output_65_0_g247 );
				float2 Input_UV100_g250 = temp_output_66_0_g247;
				float2 UV2_g250 = Input_UV100_g250;
				float4 TexelSize2_g250 = _MagmaMap_TexelSize;
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
				float4 lerpResult46_g250 = lerp( tex2D( _MagmaMap, UV32_g250 ) , tex2D( _MagmaMap, UV22_g250 ) , W02_g250);
				float4 lerpResult45_g250 = lerp( tex2D( _MagmaMap, UV12_g250 ) , tex2D( _MagmaMap, UV02_g250 ) , W02_g250);
				float4 lerpResult44_g250 = lerp( lerpResult46_g250 , lerpResult45_g250 , W12_g250);
				float4 Output_2D131_g250 = lerpResult44_g250;
				float localBicubicPrepare2_g248 = ( 0.0 );
				float2 appendResult34_g247 = (float2(break26_g247.x , break26_g247.y));
				float2 appendResult25_g247 = (float2(-break20_g247.z , 1.0));
				float2 temp_output_67_0_g247 = ( temp_output_65_0_g247 + ( temp_output_29_0_g247 * appendResult34_g247 * appendResult25_g247 ) );
				float2 Input_UV100_g248 = temp_output_67_0_g247;
				float2 UV2_g248 = Input_UV100_g248;
				float4 TexelSize2_g248 = _MagmaMap_TexelSize;
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
				float4 lerpResult46_g248 = lerp( tex2D( _MagmaMap, UV32_g248 ) , tex2D( _MagmaMap, UV22_g248 ) , W02_g248);
				float4 lerpResult45_g248 = lerp( tex2D( _MagmaMap, UV12_g248 ) , tex2D( _MagmaMap, UV02_g248 ) , W02_g248);
				float4 lerpResult44_g248 = lerp( lerpResult46_g248 , lerpResult45_g248 , W12_g248);
				float4 Output_2D131_g248 = lerpResult44_g248;
				float4 temp_output_361_0 = saturate( ( ( projNormal10_g247.x * Output_2D131_g249 ) + ( projNormal10_g247.y * Output_2D131_g250 ) + ( projNormal10_g247.z * Output_2D131_g248 ) ) );
				float4 temp_cast_12 = (_MagmaPower).xxxx;
				float4 magmaDetial234 = saturate( ( saturate( pow( max( float4( 0,0,0,0 ) , temp_output_361_0 ) , temp_cast_12 ) ) * _MagmaBoost * temp_output_361_0 ) );
				float3 temp_cast_13 = (3.0).xxx;
				float3 temp_output_4_0_g242 = pow( abs( packedInput.ase_normal ) , temp_cast_13 );
				float3 break6_g242 = temp_output_4_0_g242;
				float3 projNormal10_g242 = ( temp_output_4_0_g242 / ( break6_g242.x + break6_g242.y + break6_g242.z ) );
				float localBicubicPrepare2_g244 = ( 0.0 );
				float3 break26_g242 = packedInput.ase_texcoord7.xyz;
				float2 appendResult27_g242 = (float2(break26_g242.z , break26_g242.y));
				float3 nSign18_g242 = sign( packedInput.ase_normal );
				float3 break20_g242 = nSign18_g242;
				float2 appendResult21_g242 = (float2(break20_g242.x , 1.0));
				float temp_output_29_0_g242 = _LavaMaskTiling;
				float2 temp_output_65_0_g242 = float2( 0,0 );
				float2 temp_output_68_0_g242 = ( ( appendResult27_g242 * appendResult21_g242 * temp_output_29_0_g242 ) + temp_output_65_0_g242 );
				float2 Input_UV100_g244 = temp_output_68_0_g242;
				float2 UV2_g244 = Input_UV100_g244;
				float4 TexelSize2_g244 = _HeightMap_TexelSize;
				float2 UV02_g244 = float2( 0,0 );
				float2 UV12_g244 = float2( 0,0 );
				float2 UV22_g244 = float2( 0,0 );
				float2 UV32_g244 = float2( 0,0 );
				float W02_g244 = 0;
				float W12_g244 = 0;
				{
				{
				 UV2_g244 = UV2_g244 * TexelSize2_g244.zw - 0.5;
				    float2 f = frac( UV2_g244 );
				    UV2_g244 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g244.x - 0.5, UV2_g244.x + 1.5, UV2_g244.y - 0.5, UV2_g244.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g244.xyxy;
				    UV02_g244 = off.xz;
				    UV12_g244 = off.yz;
				    UV22_g244 = off.xw;
				    UV32_g244 = off.yw;
				    W02_g244 = s.x / ( s.x + s.y );
				 W12_g244 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g244 = lerp( tex2D( _HeightMap, UV32_g244 ) , tex2D( _HeightMap, UV22_g244 ) , W02_g244);
				float4 lerpResult45_g244 = lerp( tex2D( _HeightMap, UV12_g244 ) , tex2D( _HeightMap, UV02_g244 ) , W02_g244);
				float4 lerpResult44_g244 = lerp( lerpResult46_g244 , lerpResult45_g244 , W12_g244);
				float4 Output_2D131_g244 = lerpResult44_g244;
				float localBicubicPrepare2_g245 = ( 0.0 );
				float2 appendResult32_g242 = (float2(break26_g242.x , break26_g242.z));
				float2 appendResult22_g242 = (float2(break20_g242.y , 1.0));
				float2 temp_output_66_0_g242 = ( ( temp_output_29_0_g242 * appendResult32_g242 * appendResult22_g242 ) + temp_output_65_0_g242 );
				float2 Input_UV100_g245 = temp_output_66_0_g242;
				float2 UV2_g245 = Input_UV100_g245;
				float4 TexelSize2_g245 = _HeightMap_TexelSize;
				float2 UV02_g245 = float2( 0,0 );
				float2 UV12_g245 = float2( 0,0 );
				float2 UV22_g245 = float2( 0,0 );
				float2 UV32_g245 = float2( 0,0 );
				float W02_g245 = 0;
				float W12_g245 = 0;
				{
				{
				 UV2_g245 = UV2_g245 * TexelSize2_g245.zw - 0.5;
				    float2 f = frac( UV2_g245 );
				    UV2_g245 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g245.x - 0.5, UV2_g245.x + 1.5, UV2_g245.y - 0.5, UV2_g245.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g245.xyxy;
				    UV02_g245 = off.xz;
				    UV12_g245 = off.yz;
				    UV22_g245 = off.xw;
				    UV32_g245 = off.yw;
				    W02_g245 = s.x / ( s.x + s.y );
				 W12_g245 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g245 = lerp( tex2D( _HeightMap, UV32_g245 ) , tex2D( _HeightMap, UV22_g245 ) , W02_g245);
				float4 lerpResult45_g245 = lerp( tex2D( _HeightMap, UV12_g245 ) , tex2D( _HeightMap, UV02_g245 ) , W02_g245);
				float4 lerpResult44_g245 = lerp( lerpResult46_g245 , lerpResult45_g245 , W12_g245);
				float4 Output_2D131_g245 = lerpResult44_g245;
				float localBicubicPrepare2_g243 = ( 0.0 );
				float2 appendResult34_g242 = (float2(break26_g242.x , break26_g242.y));
				float2 appendResult25_g242 = (float2(-break20_g242.z , 1.0));
				float2 temp_output_67_0_g242 = ( temp_output_65_0_g242 + ( temp_output_29_0_g242 * appendResult34_g242 * appendResult25_g242 ) );
				float2 Input_UV100_g243 = temp_output_67_0_g242;
				float2 UV2_g243 = Input_UV100_g243;
				float4 TexelSize2_g243 = _HeightMap_TexelSize;
				float2 UV02_g243 = float2( 0,0 );
				float2 UV12_g243 = float2( 0,0 );
				float2 UV22_g243 = float2( 0,0 );
				float2 UV32_g243 = float2( 0,0 );
				float W02_g243 = 0;
				float W12_g243 = 0;
				{
				{
				 UV2_g243 = UV2_g243 * TexelSize2_g243.zw - 0.5;
				    float2 f = frac( UV2_g243 );
				    UV2_g243 -= f;
				    float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				    float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				    float4 xs = xn * xn * xn;
				    float4 ys = yn * yn * yn;
				    float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				    float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				    float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				 float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				    float4 c = float4( UV2_g243.x - 0.5, UV2_g243.x + 1.5, UV2_g243.y - 0.5, UV2_g243.y + 1.5 );
				    float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				    float4 off = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g243.xyxy;
				    UV02_g243 = off.xz;
				    UV12_g243 = off.yz;
				    UV22_g243 = off.xw;
				    UV32_g243 = off.yw;
				    W02_g243 = s.x / ( s.x + s.y );
				 W12_g243 = s.z / ( s.z + s.w );
				}
				}
				float4 lerpResult46_g243 = lerp( tex2D( _HeightMap, UV32_g243 ) , tex2D( _HeightMap, UV22_g243 ) , W02_g243);
				float4 lerpResult45_g243 = lerp( tex2D( _HeightMap, UV12_g243 ) , tex2D( _HeightMap, UV02_g243 ) , W02_g243);
				float4 lerpResult44_g243 = lerp( lerpResult46_g243 , lerpResult45_g243 , W12_g243);
				float4 Output_2D131_g243 = lerpResult44_g243;
				float lavaMaskMap229 = saturate( ( ( projNormal10_g242.x * Output_2D131_g244 ) + ( projNormal10_g242.y * Output_2D131_g245 ) + ( projNormal10_g242.z * Output_2D131_g243 ) ) ).r;
				float dotResult254 = dot( ase_tanViewDir , normalUnpacked196 );
				float lavaMask272 = saturate( ( magmaDetial234.r + ( saturate( ( saturate( pow( max( 0.0 , saturate( ( 1.0 - lavaMaskMap229 ) ) ) , _LavaMaskFactorsX ) ) * _LavaMaskFactorsY ) ) * saturate( ( saturate( pow( max( 0.0 , dotResult254 ) , _LavaMaskPower ) ) * _LavaMaskBoost ) ) ) ) );
				float4 lerpResult274 = lerp( _MagmaColorMin , _MagmaColorMax , lavaMask272);
				float4 lavaColor277 = ( saturate( ( ( projNormal10_g215.x * Output_2D131_g217 ) + ( projNormal10_g215.y * Output_2D131_g218 ) + ( projNormal10_g215.z * Output_2D131_g216 ) ) ) * lerpResult274 * _MagmaGlow );
				
				float smooth388 = ( ( 1.0 - detailTex146 ) * _Smoothness );
				
				surfaceDescription.BaseColor = ( baseColor213 + fresnel268 );
				surfaceDescription.Normal = normalUnpacked196;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = 0;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = ( float4( fresnel268 , 0.0 ) + spec390 ).rgb;
				#endif

				surfaceDescription.Emission = (( lavaColor277 * lavaMask272 )).rgb;
				surfaceDescription.Smoothness = ( fresnel268 * smooth388 ).x;
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
			float4 _LavaLow;
			float4 _MagmaMap_TexelSize;
			float4 _MagmaColorMax;
			float4 _MagmaColorMin;
			float4 _DistortionMap_TexelSize;
			float4 _FresnelColor;
			float4 _NormalMap_TexelSize;
			float4 _LavaHigh;
			float4 _SpecularColor;
			float4 _HeightMap_TexelSize;
			float4 _LavaMid;
			float4 _DetailMap_TexelSize;
			float _LavaDetail;
			float _LavaMaskBoost;
			float _LavaMaskPower;
			float _LavaMaskFactorsY;
			float _LavaMaskFactorsX;
			float _LavaMaskTiling;
			float _MagmaBoost;
			float _MagmaPower;
			float _MagmaTiling;
			float _DetailExp;
			float _DetailTiling;
			float _DistortionFactor;
			float _DistortionUVSpeed;
			float _DistortionUVTiling;
			float _DistortionSpeed;
			float _DistortionTiling;
			float _SpecularBoost;
			float _MagmaGlow;
			float _Specular;
			float _HeightTiling;
			float _FrenselMult;
			float _FresnelPower;
			float _NormalScale;
			float _NormalTiling;
			float _HeightDetail;
			float _LavaFactorsZ;
			float _LavaFactorsY;
			float _LavaFactorsX;
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
Node;AmplifyShaderEditor.RangedFloatNode;133;-492.5569,-703.8184;Float;False;Property;_DetailTiling;Detail Tiling;7;0;Create;True;0;0;0;False;0;False;2;2.31;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;316;373.4872,-966.9308;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;257;4685.317,301.4274;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;175;1144.631,-382.3737;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;390;2852.747,108.728;Inherit;False;spec;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;157;461.6021,-476.1873;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;254;4422.158,305.0071;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;261;5000.317,301.4274;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;225;4370.931,745.8948;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;367;6142.52,346.9752;Inherit;False;TriplanarUVDist;36;;214;01791187aaf871246af28f7438b407d3;0;0;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;139;220.4893,-901.5146;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;155;104.1018,-359.1874;Float;False;Property;_HeightDetail;Height Detail;22;0;Create;True;0;0;0;False;0;False;0;0.88;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;172;672.3959,-207.8755;Float;False;Property;_LavaFactorsY;Lava Factors Y;18;0;Create;True;0;0;0;False;0;False;0;0.758;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;221;3948.454,723.8323;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;191;-91.8899,221.7792;Float;False;Property;_NormalTiling;Normal Tiling;5;0;Create;True;0;0;0;False;0;False;0;3.35;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;244;4029.651,61.21515;Inherit;False;229;lavaMaskMap;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;251;4992.862,80.3618;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;227;-474.9816,-180.0085;Float;False;Property;_LavaMaskTiling;Lava Mask Tiling;9;0;Create;True;0;0;0;False;0;False;2;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TriplanarNode;193;167.8278,24.54628;Inherit;True;Spherical;Object;False;Top Texture 2;_TopTexture2;white;0;None;Mid Texture 2;_MidTexture2;white;0;None;Bot Texture 2;_BotTexture2;white;1;None;Triplanar Sampler;Tangent;10;0;SAMPLER2D;;False;5;FLOAT;1;False;1;SAMPLER2D;;False;6;FLOAT;0;False;2;SAMPLER2D;;False;7;FLOAT;0;False;9;FLOAT3;0,0,0;False;8;FLOAT;1;False;3;FLOAT;1;False;4;FLOAT;1;False;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.UnpackScaleNormalNode;195;597.0527,25.46639;Inherit;False;Tangent;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;216;3189.567,922.8467;Float;False;Property;_MagmaTiling;Magma Tiling;8;0;Create;True;0;0;0;False;0;False;2;1.64;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;171;675.631,-375.3737;Float;False;Property;_LavaFactorsX;Lava Factors X;17;0;Create;True;0;0;0;False;0;False;0;0.745;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;196;872.2377,18.50697;Float;False;normalUnpacked;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;218;3885.454,825.8323;Float;False;Property;_MagmaBoost;Magma Boost;30;0;Create;True;0;0;0;False;0;False;0;888;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;200;2082.349,-97.0036;Float;False;Property;_SpecularColor;Specular Color;10;0;Create;True;0;0;0;False;0;False;0,0,0,0;0.6397059,0.4562608,0.4562608,0;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;182;1759.91,63.27673;Float;False;Property;_LavaHigh;Lava High;16;0;Create;True;0;0;0;False;0;False;0,0,0,0;0.2499998,0.1992898,0.1764704,0;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleSubtractOpNode;173;966.6312,-357.3737;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;318;4551.637,-54.3038;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;156;312.1019,-472.2874;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;273;5872.078,720.6608;Inherit;False;272;lavaMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;164;680.7016,-1063.788;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;1000;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;160;819.102,-587.9873;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;162;655.302,-585.3875;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;163;184.1019,-1057.288;Float;False;Property;_DetailExp;Detail Exp;21;0;Create;True;0;0;0;False;0;False;0;0.87;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;259;4731.317,419.4274;Float;False;Property;_LavaMaskBoost;Lava Mask Boost;26;0;Create;True;0;0;0;False;0;False;0;3.19;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;177;1532.91,-414.7233;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;228;52.67383,-229.3097;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;255;4187.158,300.0071;Float;False;Tangent;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;167;1008.302,-539.8874;Float;False;detaledHeight;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;315;7008.913,169.7127;Inherit;False;268;fresnel;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;234;4620.982,740.1832;Float;False;magmaDetial;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;246;4255.617,66.51323;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;179;2100.91,-260.7233;Inherit;False;Ramp3;-1;;227;d38b6eed89401a040a9f914ae79b3d2f;0;5;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;5;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;178;1690.91,-427.7233;Float;False;detaledHeight01;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;250;4739.862,170.3618;Float;False;Property;_LavaMaskFactorsY;Lava Mask Factors Y;24;0;Create;True;0;0;0;False;0;False;0;3.38;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;174;969.6312,-244.3735;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;213;3317.469,34.21539;Float;False;baseColor;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;258;4432.314,424.4274;Float;False;Property;_LavaMaskPower;Lava Mask Power;25;0;Create;True;0;0;0;False;0;False;0;4.3;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;220;3790.454,657.8323;Inherit;False;False;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;249;4341.859,162.3618;Float;False;Property;_LavaMaskFactorsX;Lava Mask Factors X;23;0;Create;True;0;0;0;False;0;False;0;10.92;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;262;5153.317,302.4274;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;192;-92.37891,20.9383;Float;True;Property;_NormalMap;Normal Map;3;0;Create;True;0;0;0;False;0;False;None;60ed4462d9c7b96499eb1a4ed5db49bf;True;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SimpleMaxOpNode;317;3705.856,530.9779;Inherit;False;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;194;346.3918,228.5305;Float;False;Property;_NormalScale;Normal Scale;4;0;Create;True;0;0;0;False;0;False;0;2.65;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;247;4429.86,70.3618;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;153;715.0361,-916.0713;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;366;209.7905,312.969;Inherit;False;Triplanar;-1;;228;61abc9e6202a1a94ab1548c8ccbc2e48;0;4;36;SAMPLER2D;0.0;False;29;FLOAT;0;False;2;FLOAT;3;False;65;FLOAT2;0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;252;4828.862,75.3618;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;229;345.8156,-233.3071;Float;False;lavaMaskMap;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;134;518.6178,-903.6335;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;0.6;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;143;-471.3993,-325.8726;Float;False;Property;_HeightTiling;Height Tiling;6;0;Create;True;0;0;0;False;0;False;2;2.1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;236;3702.81,1125.339;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;266;5626.074,47.6591;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;203;2454.349,89.99643;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;146;898.4141,-916.097;Float;False;detailTex;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;279;6638.116,433.3349;Inherit;False;272;lavaMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;260;4841.317,301.4274;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;265;5342.673,-101.9409;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SaturateNode;176;1144.376,-310.1707;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;256;4152.658,470.5074;Inherit;False;196;normalUnpacked;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TexturePropertyNode;215;3184.727,719.5782;Float;True;Property;_MagmaMap;Magma Map;2;0;Create;True;0;0;0;False;0;False;None;efa7c5cd9a6811d44b8c94c3c331201a;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SimpleMaxOpNode;319;4551.637,246.6962;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;274;6193.078,431.6608;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode;132;-497.3967,-907.0871;Float;True;Property;_DetailMap;Detail Map;1;0;Create;True;0;0;0;False;0;False;None;7bfa2038811711f43b9b2a102f5b9ef7;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.PowerNode;248;4641.862,74.3618;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;267;5777.186,39.53471;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;212;2445.988,236.0645;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;278;6858.116,342.3349;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;263;5347.742,71.1476;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;198;2088.854,96.48244;Inherit;False;146;detailTex;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;184;1728.922,247.0016;Float;False;Property;_LavaFactorsZ;Lava Factors Z;19;0;Create;True;0;0;0;False;0;False;0;0.937;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;275;6401.116,346.3349;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;206;2627.449,233.7819;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;138;59.69622,-901.6342;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SaturateNode;204;2693.349,107.9964;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;271;5848.078,544.6608;Float;False;Property;_MagmaColorMax;Magma Color Max;28;0;Create;True;0;0;0;False;0;False;0,0,0,0;0.6397059,0.3424304,0.09407417,0;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;181;1755.91,-112.7233;Float;False;Property;_LavaMid;Lava Mid;15;0;Create;True;0;0;0;False;0;False;0,0,0,0;0.2573527,0.003784606,0.003784606,0;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SaturateNode;269;3886.583,1125.671;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;268;4061.583,1119.671;Float;False;fresnel;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;364;-232.3993,-512.8726;Inherit;False;Triplanar;-1;;232;61abc9e6202a1a94ab1548c8ccbc2e48;0;4;36;SAMPLER2D;0.0;False;29;FLOAT;0;False;2;FLOAT;3;False;65;FLOAT2;0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;330;3429.75,1124.092;Inherit;False;Fresnel;32;;236;f8c497a0c2d6d334f8e7138f24a77d5f;0;1;22;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;264;5073.974,-102.2409;Inherit;False;234;magmaDetial;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;166;459.7019,-1127.488;Float;False;Constant;_Float0;Float 0;8;0;Create;True;0;0;0;False;0;False;5000;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;398;7302.667,22.96862;Inherit;False;213;baseColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;147;405.3009,-591.5728;Inherit;False;146;detailTex;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;253;5151.091,67.45267;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;272;5944.078,34.66083;Float;False;lavaMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;180;1751.91,-286.7233;Float;False;Property;_LavaLow;Lava Low;14;0;Create;True;0;0;0;False;0;False;0,0,0,0;0.3088233,0.1362455,0.1362455,0;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;363;-212.9422,-903.2474;Inherit;False;Triplanar;-1;;237;61abc9e6202a1a94ab1548c8ccbc2e48;0;4;36;SAMPLER2D;0.0;False;29;FLOAT;0;False;2;FLOAT;3;False;65;FLOAT2;0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;170;671.1091,-296.3696;Float;False;Property;_LavaDetail;Lava Detail;20;0;Create;True;0;0;0;False;0;False;0;0.649;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;222;4126.454,720.8323;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;277;6605.116,345.3349;Float;False;lavaColor;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;202;2037.349,193.9965;Float;False;Property;_Specular;Specular;11;0;Create;True;0;0;0;False;0;False;0.03;0.448;0.03;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;235;405.3693,-730.9871;Float;False;detailX;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;333;1323.91,-410.7233;Inherit;False;Linstep;-1;;241;aade3b0317e32b148b41ee41b85032e6;0;3;4;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;205;2040.56,271.9925;Float;False;Property;_SpecularBoost;Specular Boost;13;0;Create;True;0;0;0;False;0;False;0.03;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;362;-212.4865,-231.9746;Inherit;False;Triplanar;-1;;242;61abc9e6202a1a94ab1548c8ccbc2e48;0;4;36;SAMPLER2D;0.0;False;29;FLOAT;0;False;2;FLOAT;3;False;65;FLOAT2;0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;199;2039.984,353.0802;Float;False;Property;_Smoothness;Smoothness;12;0;Create;True;0;0;0;False;0;False;0;0.921;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;270;5843.078,363.6608;Float;False;Property;_MagmaColorMin;Magma Color Min;27;0;Create;True;0;0;0;False;0;False;0,0,0,0;0.5588235,0,0,0;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;388;2805.747,220.728;Inherit;False;smooth;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;396;7304.326,127.757;Inherit;False;388;smooth;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;359;-232.6733,542.4257;Inherit;False;Bicubic Sample;-1;;246;ce0e14d5ad5eac645b2e5892ab3506ff;2,92,0,72,0;7;99;SAMPLER2D;0;False;91;SAMPLER2DARRAY;0;False;93;FLOAT;0;False;97;FLOAT2;0,0;False;198;FLOAT4;0,0,0,0;False;199;FLOAT2;0,0;False;94;SAMPLERSTATE;0;False;5;COLOR;86;FLOAT;84;FLOAT;85;FLOAT;82;FLOAT;83
Node;AmplifyShaderEditor.GetLocalVarNode;233;3172.133,1119.562;Inherit;False;196;normalUnpacked;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;276;6194.116,557.3349;Float;False;Property;_MagmaGlow;Magma Glow;31;0;Create;True;0;0;0;False;0;False;0;1111;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;237;3459.81,1213.339;Inherit;False;235;detailX;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;144;48.60071,-512.8726;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.RangedFloatNode;217;3536.454,882.8323;Float;False;Property;_MagmaPower;Magma Power;29;0;Create;True;0;0;0;False;0;False;0;2.02;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;288;7297.953,212.6154;Inherit;False;390;spec;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;361;3469.181,723.4182;Inherit;False;Triplanar;-1;;247;61abc9e6202a1a94ab1548c8ccbc2e48;0;4;36;SAMPLER2D;0.0;False;29;FLOAT;0;False;2;FLOAT;3;False;65;FLOAT2;0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode;142;-489.3993,-518.8726;Float;True;Property;_HeightMap;Height Map;0;0;Create;True;0;0;0;False;0;False;None;33a772a7be45592459471ef3fcbd4e47;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SimpleAddOpNode;412;8012.83,99.24464;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;411;8009.336,273.2565;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;397;7927.327,196.1935;Inherit;False;196;normalUnpacked;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SwizzleNode;394;7974.009,367.5055;Inherit;False;FLOAT3;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;414;7988.107,449.347;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;423;8191.739,169.8733;Float;False;True;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;12;FORGE3D/Planets HD/Lava;53b46d85872c5b24c8f4f0a1c3fe4c87;True;GBuffer;0;0;GBuffer;34;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_CullMode;False;True;True;True;True;True;0;True;_LightLayersMaskBuffer4;False;False;False;False;False;False;False;True;True;0;True;_StencilRefGBuffer;255;False;;255;True;_StencilWriteMaskGBuffer;7;False;;3;False;;0;False;;0;False;;7;False;;3;False;;0;False;;0;False;;False;False;True;0;True;_ZTestGBuffer;False;True;1;LightMode=GBuffer;False;False;0;;0;0;Standard;39;Surface Type;0;0;  Rendering Pass;1;0;  Refraction Model;0;0;    Blending Mode;0;0;    Blend Preserves Specular;1;0;  Back Then Front Rendering;0;0;  Transparent Depth Prepass;0;0;  Transparent Depth Postpass;0;0;  ZWrite;0;0;  Z Test;4;0;Double-Sided;0;0;Alpha Clipping;0;0;  Use Shadow Threshold;0;0;Material Type,InvertActionOnDeselection;4;638087814947619856;Forward Only;0;0;  Energy Conserving Specular;1;0;  Transmission;1;0;Receive Decals;1;0;Receives SSR;1;0;Receive SSR Transparent;0;0;Motion Vectors;1;0;  Add Precomputed Velocity;0;0;Specular AA;0;0;Specular Occlusion Mode;1;0;Override Baked GI;0;0;Depth Offset;0;0;DOTS Instancing;0;0;GPU Instancing;1;0;LOD CrossFade;0;0;Tessellation;0;0;  Phong;0;0;  Strength;0.5,False,;0;  Type;0;0;  Tess;16,False,;0;  Min;10,False,;0;  Max;25,False,;0;  Edge Length;16,False,;0;  Max Displacement;25,False,;0;Vertex Position;1;0;0;11;True;True;True;True;True;True;False;False;False;True;True;False;;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;424;8191.739,169.8733;Float;False;False;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;META;0;1;META;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;425;8191.739,169.8733;Float;False;False;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;ShadowCaster;0;2;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_CullMode;False;True;False;False;False;False;0;False;;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;426;8191.739,169.8733;Float;False;False;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;SceneSelectionPass;0;3;SceneSelectionPass;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=SceneSelectionPass;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;427;8191.739,169.8733;Float;False;False;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;DepthOnly;0;4;DepthOnly;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_CullMode;False;False;False;False;False;False;False;False;False;True;True;0;True;_StencilRefDepth;255;False;;255;True;_StencilWriteMaskDepth;7;False;;3;False;;0;False;;0;False;;7;False;;3;False;;0;False;;0;False;;False;True;1;False;;False;False;True;1;LightMode=DepthOnly;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;428;8191.739,169.8733;Float;False;False;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;Motion Vectors;0;5;Motion Vectors;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_CullMode;False;False;False;False;False;False;False;False;False;True;True;0;True;_StencilRefMV;255;False;;255;True;_StencilWriteMaskMV;7;False;;3;False;;0;False;;0;False;;7;False;;3;False;;0;False;;0;False;;False;True;1;False;;False;False;True;1;LightMode=MotionVectors;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;429;8191.739,169.8733;Float;False;False;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;TransparentBackface;0;6;TransparentBackface;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;True;2;5;False;;10;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;True;1;False;;False;False;False;True;True;True;True;True;0;True;_ColorMaskTransparentVelOne;False;True;True;True;True;True;0;True;_ColorMaskTransparentVelTwo;False;False;False;False;False;True;0;True;_ZWrite;True;0;True;_ZTestTransparent;False;True;1;LightMode=TransparentBackface;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;430;8191.739,169.8733;Float;False;False;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;TransparentDepthPrepass;0;7;TransparentDepthPrepass;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_CullMode;False;False;False;False;False;False;False;False;False;True;True;0;True;_StencilRefDepth;255;False;;255;True;_StencilWriteMaskDepth;7;False;;3;False;;0;False;;0;False;;7;False;;3;False;;0;False;;0;False;;False;True;1;False;;False;False;True;1;LightMode=TransparentDepthPrepass;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;431;8191.739,169.8733;Float;False;False;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;TransparentDepthPostpass;0;8;TransparentDepthPostpass;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_CullMode;False;True;False;False;False;False;0;False;;False;False;False;False;False;False;False;False;False;True;1;False;;False;False;True;1;LightMode=TransparentDepthPostpass;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;432;8191.739,169.8733;Float;False;False;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;Forward;0;9;Forward;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;True;2;5;False;;10;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;True;_CullModeForward;False;False;False;True;True;True;True;True;0;True;_ColorMaskTransparentVelOne;False;True;True;True;True;True;0;True;_ColorMaskTransparentVelTwo;False;False;False;True;True;0;True;_StencilRef;255;False;;255;True;_StencilWriteMask;7;False;;3;False;;0;False;;0;False;;7;False;;3;False;;0;False;;0;False;;False;True;0;True;_ZWrite;True;0;True;_ZTestDepthEqualForOpaque;False;True;1;LightMode=Forward;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;433;8191.739,169.8733;Float;False;False;-1;2;Rendering.HighDefinition.LightingShaderGraphGUI;0;1;New Amplify Shader;53b46d85872c5b24c8f4f0a1c3fe4c87;True;ScenePickingPass;0;10;ScenePickingPass;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_CullMode;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;True;3;False;;False;True;1;LightMode=Picking;False;False;0;;0;0;Standard;0;False;0
WireConnection;316;1;139;0
WireConnection;257;0;319;0
WireConnection;257;1;258;0
WireConnection;175;0;173;0
WireConnection;390;0;204;0
WireConnection;157;0;156;0
WireConnection;254;0;255;0
WireConnection;254;1;256;0
WireConnection;261;0;260;0
WireConnection;261;1;259;0
WireConnection;225;0;222;0
WireConnection;139;0;138;0
WireConnection;139;1;138;1
WireConnection;221;0;220;0
WireConnection;251;0;252;0
WireConnection;251;1;250;0
WireConnection;193;0;192;0
WireConnection;193;3;191;0
WireConnection;195;0;366;0
WireConnection;195;1;194;0
WireConnection;196;0;195;0
WireConnection;173;0;171;0
WireConnection;173;1;170;0
WireConnection;318;1;247;0
WireConnection;156;0;144;0
WireConnection;156;1;155;0
WireConnection;164;0;163;0
WireConnection;164;1;134;0
WireConnection;164;2;166;0
WireConnection;160;0;162;0
WireConnection;162;0;147;0
WireConnection;162;1;157;0
WireConnection;177;0;333;0
WireConnection;228;0;362;0
WireConnection;167;0;160;0
WireConnection;234;0;225;0
WireConnection;246;0;244;0
WireConnection;179;1;180;0
WireConnection;179;2;181;0
WireConnection;179;3;182;0
WireConnection;179;5;184;0
WireConnection;179;4;178;0
WireConnection;178;0;177;0
WireConnection;174;0;172;0
WireConnection;174;1;170;0
WireConnection;213;0;179;0
WireConnection;220;0;317;0
WireConnection;220;1;217;0
WireConnection;262;0;261;0
WireConnection;317;1;361;0
WireConnection;247;0;246;0
WireConnection;153;0;164;0
WireConnection;366;36;192;0
WireConnection;366;29;191;0
WireConnection;252;0;248;0
WireConnection;229;0;228;0
WireConnection;134;0;316;0
WireConnection;134;1;163;0
WireConnection;236;0;330;0
WireConnection;236;1;237;0
WireConnection;266;0;265;0
WireConnection;266;1;263;0
WireConnection;203;0;198;0
WireConnection;203;1;202;0
WireConnection;203;2;200;0
WireConnection;203;3;205;0
WireConnection;146;0;153;0
WireConnection;260;0;257;0
WireConnection;265;0;264;0
WireConnection;176;0;174;0
WireConnection;319;1;254;0
WireConnection;274;0;270;0
WireConnection;274;1;271;0
WireConnection;274;2;273;0
WireConnection;248;0;318;0
WireConnection;248;1;249;0
WireConnection;267;0;266;0
WireConnection;212;0;198;0
WireConnection;278;0;277;0
WireConnection;278;1;279;0
WireConnection;263;0;253;0
WireConnection;263;1;262;0
WireConnection;275;0;367;0
WireConnection;275;1;274;0
WireConnection;275;2;276;0
WireConnection;206;0;212;0
WireConnection;206;1;199;0
WireConnection;138;0;363;0
WireConnection;204;0;203;0
WireConnection;269;0;236;0
WireConnection;268;0;269;0
WireConnection;364;36;142;0
WireConnection;364;29;143;0
WireConnection;330;22;233;0
WireConnection;253;0;251;0
WireConnection;272;0;267;0
WireConnection;363;36;132;0
WireConnection;363;29;133;0
WireConnection;222;0;221;0
WireConnection;222;1;218;0
WireConnection;222;2;361;0
WireConnection;277;0;275;0
WireConnection;235;0;138;0
WireConnection;333;4;167;0
WireConnection;333;2;175;0
WireConnection;333;3;176;0
WireConnection;362;36;142;0
WireConnection;362;29;227;0
WireConnection;388;0;206;0
WireConnection;144;0;364;0
WireConnection;361;36;215;0
WireConnection;361;29;216;0
WireConnection;412;0;398;0
WireConnection;412;1;315;0
WireConnection;411;0;315;0
WireConnection;411;1;288;0
WireConnection;394;0;278;0
WireConnection;414;0;315;0
WireConnection;414;1;396;0
WireConnection;423;0;412;0
WireConnection;423;1;397;0
WireConnection;423;5;411;0
WireConnection;423;6;394;0
WireConnection;423;7;414;0
ASEEND*/
//CHKSM=A7D241F612B24704CB0FD8C6C7586E03EB3BB307