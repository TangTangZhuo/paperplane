// Compiled shader for iPhone, iPod Touch and iPad

//////////////////////////////////////////////////////////////////////////
// 
// NOTE: This is *not* a valid shader file, the contents are provided just
// for information and for debugging purposes only.
// 
//////////////////////////////////////////////////////////////////////////
// Skipping shader variants that would not be included into build of current scene.

Shader "Legacy Shaders/Diffuse" {
Properties {
 _Color ("Main Color", Color) = (1.000000,1.000000,1.000000,1.000000)
 _MainTex ("Base (RGB)", 2D) = "white" { }
}
SubShader { 
 LOD 200
 Tags { "RenderType"="Opaque" }


 // Stats for Vertex shader:
 //         gles: 17 avg math (6..34), 1 avg texture (1..2)
 Pass {
  Name "FORWARD"
  Tags { "LIGHTMODE"="FORWARDBASE" "SHADOWSUPPORT"="true" "RenderType"="Opaque" }
  //////////////////////////////////
  //                              //
  //      Compiled programs       //
  //                              //
  //////////////////////////////////
//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL 
-- Hardware tier variant: Tier 1
-- Vertex shader for "gles":
// Stats: 6 math, 1 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD5;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = normalize((_glesNormal * tmpvar_3));
  xlv_TEXCOORD2 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD5 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform mediump vec4 _WorldSpaceLightPos0;
uniform lowp vec4 _LightColor0;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  mediump vec3 tmpvar_2;
  lowp vec4 c_3;
  lowp vec3 tmpvar_4;
  lowp vec3 lightDir_5;
  mediump vec3 tmpvar_6;
  tmpvar_6 = _WorldSpaceLightPos0.xyz;
  lightDir_5 = tmpvar_6;
  tmpvar_4 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_7;
  tmpvar_7 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  tmpvar_1 = _LightColor0.xyz;
  tmpvar_2 = lightDir_5;
  lowp vec4 c_8;
  lowp vec4 c_9;
  lowp float diff_10;
  mediump float tmpvar_11;
  tmpvar_11 = max (0.0, dot (tmpvar_4, tmpvar_2));
  diff_10 = tmpvar_11;
  c_9.xyz = ((tmpvar_7.xyz * tmpvar_1) * diff_10);
  c_9.w = tmpvar_7.w;
  c_8.w = c_9.w;
  c_8.xyz = c_9.xyz;
  c_3.xyz = c_8.xyz;
  c_3.w = 1.0;
  gl_FragData[0] = c_3;
}


#endif


-- Hardware tier variant: Tier 1
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL 
-- Hardware tier variant: Tier 2
-- Vertex shader for "gles":
// Stats: 6 math, 1 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD5;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = normalize((_glesNormal * tmpvar_3));
  xlv_TEXCOORD2 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD5 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform mediump vec4 _WorldSpaceLightPos0;
uniform lowp vec4 _LightColor0;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  mediump vec3 tmpvar_2;
  lowp vec4 c_3;
  lowp vec3 tmpvar_4;
  lowp vec3 lightDir_5;
  mediump vec3 tmpvar_6;
  tmpvar_6 = _WorldSpaceLightPos0.xyz;
  lightDir_5 = tmpvar_6;
  tmpvar_4 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_7;
  tmpvar_7 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  tmpvar_1 = _LightColor0.xyz;
  tmpvar_2 = lightDir_5;
  lowp vec4 c_8;
  lowp vec4 c_9;
  lowp float diff_10;
  mediump float tmpvar_11;
  tmpvar_11 = max (0.0, dot (tmpvar_4, tmpvar_2));
  diff_10 = tmpvar_11;
  c_9.xyz = ((tmpvar_7.xyz * tmpvar_1) * diff_10);
  c_9.w = tmpvar_7.w;
  c_8.w = c_9.w;
  c_8.xyz = c_9.xyz;
  c_3.xyz = c_8.xyz;
  c_3.w = 1.0;
  gl_FragData[0] = c_3;
}


#endif


-- Hardware tier variant: Tier 2
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL 
-- Hardware tier variant: Tier 3
-- Vertex shader for "gles":
// Stats: 6 math, 1 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD5;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = normalize((_glesNormal * tmpvar_3));
  xlv_TEXCOORD2 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD5 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform mediump vec4 _WorldSpaceLightPos0;
uniform lowp vec4 _LightColor0;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  mediump vec3 tmpvar_2;
  lowp vec4 c_3;
  lowp vec3 tmpvar_4;
  lowp vec3 lightDir_5;
  mediump vec3 tmpvar_6;
  tmpvar_6 = _WorldSpaceLightPos0.xyz;
  lightDir_5 = tmpvar_6;
  tmpvar_4 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_7;
  tmpvar_7 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  tmpvar_1 = _LightColor0.xyz;
  tmpvar_2 = lightDir_5;
  lowp vec4 c_8;
  lowp vec4 c_9;
  lowp float diff_10;
  mediump float tmpvar_11;
  tmpvar_11 = max (0.0, dot (tmpvar_4, tmpvar_2));
  diff_10 = tmpvar_11;
  c_9.xyz = ((tmpvar_7.xyz * tmpvar_1) * diff_10);
  c_9.w = tmpvar_7.w;
  c_8.w = c_9.w;
  c_8.xyz = c_9.xyz;
  c_3.xyz = c_8.xyz;
  c_3.w = 1.0;
  gl_FragData[0] = c_3;
}


#endif


-- Hardware tier variant: Tier 3
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL 
-- Hardware tier variant: Tier 1
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (208 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
  Vector4 _MainTex_ST at 192
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD5 [[ user(TEXCOORD5) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float u_xlat6;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = rsqrt(u_xlat6);
    output.TEXCOORD1.xyz = float3(u_xlat6) * u_xlat0.xyz;
    output.TEXCOORD5 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Hardware tier variant: Tier 1
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0

Constant Buffer "FGlobals" (24 bytes) on slot 0 {
  VectorHalf4 _WorldSpaceLightPos0 at 0
  VectorHalf4 _LightColor0 at 8
  VectorHalf4 _Color at 16
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    half4 _WorldSpaceLightPos0;
    half4 _LightColor0;
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_MainTex [[ sampler (0) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    half3 u_xlat16_0;
    half3 u_xlat16_1;
    half u_xlat16_7;
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    u_xlat16_1.xyz = u_xlat16_0.xyz * FGlobals._LightColor0.xyz;
    u_xlat16_7 = dot(input.TEXCOORD1.xyz, float3(FGlobals._WorldSpaceLightPos0.xyz));
    u_xlat16_7 = max(u_xlat16_7, half(0.0));
    output.SV_Target0.xyz = half3(u_xlat16_7) * u_xlat16_1.xyz;
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL 
-- Hardware tier variant: Tier 2
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (208 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
  Vector4 _MainTex_ST at 192
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD5 [[ user(TEXCOORD5) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float u_xlat6;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = rsqrt(u_xlat6);
    output.TEXCOORD1.xyz = float3(u_xlat6) * u_xlat0.xyz;
    output.TEXCOORD5 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Hardware tier variant: Tier 2
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0

Constant Buffer "FGlobals" (24 bytes) on slot 0 {
  VectorHalf4 _WorldSpaceLightPos0 at 0
  VectorHalf4 _LightColor0 at 8
  VectorHalf4 _Color at 16
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    half4 _WorldSpaceLightPos0;
    half4 _LightColor0;
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_MainTex [[ sampler (0) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    half3 u_xlat16_0;
    half3 u_xlat16_1;
    half u_xlat16_7;
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    u_xlat16_1.xyz = u_xlat16_0.xyz * FGlobals._LightColor0.xyz;
    u_xlat16_7 = dot(input.TEXCOORD1.xyz, float3(FGlobals._WorldSpaceLightPos0.xyz));
    u_xlat16_7 = max(u_xlat16_7, half(0.0));
    output.SV_Target0.xyz = half3(u_xlat16_7) * u_xlat16_1.xyz;
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL 
-- Hardware tier variant: Tier 3
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (208 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
  Vector4 _MainTex_ST at 192
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD5 [[ user(TEXCOORD5) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float u_xlat6;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = rsqrt(u_xlat6);
    output.TEXCOORD1.xyz = float3(u_xlat6) * u_xlat0.xyz;
    output.TEXCOORD5 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Hardware tier variant: Tier 3
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0

Constant Buffer "FGlobals" (24 bytes) on slot 0 {
  VectorHalf4 _WorldSpaceLightPos0 at 0
  VectorHalf4 _LightColor0 at 8
  VectorHalf4 _Color at 16
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    half4 _WorldSpaceLightPos0;
    half4 _LightColor0;
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_MainTex [[ sampler (0) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    half3 u_xlat16_0;
    half3 u_xlat16_1;
    half u_xlat16_7;
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    u_xlat16_1.xyz = u_xlat16_0.xyz * FGlobals._LightColor0.xyz;
    u_xlat16_7 = dot(input.TEXCOORD1.xyz, float3(FGlobals._WorldSpaceLightPos0.xyz));
    u_xlat16_7 = max(u_xlat16_7, half(0.0));
    output.SV_Target0.xyz = half3(u_xlat16_7) * u_xlat16_1.xyz;
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL LIGHTPROBE_SH 
-- Hardware tier variant: Tier 1
-- Vertex shader for "gles":
// Stats: 8 math, 1 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying mediump vec3 xlv_TEXCOORD3;
varying highp vec4 xlv_TEXCOORD5;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  highp vec3 tmpvar_4;
  tmpvar_4 = normalize((_glesNormal * tmpvar_3));
  mediump vec3 normal_5;
  normal_5 = tmpvar_4;
  mediump vec4 tmpvar_6;
  tmpvar_6.w = 1.0;
  tmpvar_6.xyz = normal_5;
  mediump vec3 res_7;
  mediump vec3 x_8;
  x_8.x = dot (unity_SHAr, tmpvar_6);
  x_8.y = dot (unity_SHAg, tmpvar_6);
  x_8.z = dot (unity_SHAb, tmpvar_6);
  mediump vec3 x1_9;
  mediump vec4 tmpvar_10;
  tmpvar_10 = (normal_5.xyzz * normal_5.yzzx);
  x1_9.x = dot (unity_SHBr, tmpvar_10);
  x1_9.y = dot (unity_SHBg, tmpvar_10);
  x1_9.z = dot (unity_SHBb, tmpvar_10);
  res_7 = (x_8 + (x1_9 + (unity_SHC.xyz * 
    ((normal_5.x * normal_5.x) - (normal_5.y * normal_5.y))
  )));
  mediump vec3 tmpvar_11;
  tmpvar_11 = max (((1.055 * 
    pow (max (res_7, vec3(0.0, 0.0, 0.0)), vec3(0.4166667, 0.4166667, 0.4166667))
  ) - 0.055), vec3(0.0, 0.0, 0.0));
  res_7 = tmpvar_11;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = tmpvar_4;
  xlv_TEXCOORD2 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD3 = max (vec3(0.0, 0.0, 0.0), tmpvar_11);
  xlv_TEXCOORD5 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform mediump vec4 _WorldSpaceLightPos0;
uniform lowp vec4 _LightColor0;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying mediump vec3 xlv_TEXCOORD3;
void main ()
{
  mediump vec3 tmpvar_1;
  mediump vec3 tmpvar_2;
  lowp vec4 c_3;
  lowp vec3 tmpvar_4;
  lowp vec3 lightDir_5;
  mediump vec3 tmpvar_6;
  tmpvar_6 = _WorldSpaceLightPos0.xyz;
  lightDir_5 = tmpvar_6;
  tmpvar_4 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_7;
  tmpvar_7 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  tmpvar_1 = _LightColor0.xyz;
  tmpvar_2 = lightDir_5;
  lowp vec4 c_8;
  lowp vec4 c_9;
  lowp float diff_10;
  mediump float tmpvar_11;
  tmpvar_11 = max (0.0, dot (tmpvar_4, tmpvar_2));
  diff_10 = tmpvar_11;
  c_9.xyz = ((tmpvar_7.xyz * tmpvar_1) * diff_10);
  c_9.w = tmpvar_7.w;
  c_8.w = c_9.w;
  c_8.xyz = (c_9.xyz + (tmpvar_7.xyz * xlv_TEXCOORD3));
  c_3.xyz = c_8.xyz;
  c_3.w = 1.0;
  gl_FragData[0] = c_3;
}


#endif


-- Hardware tier variant: Tier 1
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL LIGHTPROBE_SH 
-- Hardware tier variant: Tier 2
-- Vertex shader for "gles":
// Stats: 8 math, 1 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying mediump vec3 xlv_TEXCOORD3;
varying highp vec4 xlv_TEXCOORD5;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  highp vec3 tmpvar_4;
  tmpvar_4 = normalize((_glesNormal * tmpvar_3));
  mediump vec3 normal_5;
  normal_5 = tmpvar_4;
  mediump vec4 tmpvar_6;
  tmpvar_6.w = 1.0;
  tmpvar_6.xyz = normal_5;
  mediump vec3 res_7;
  mediump vec3 x_8;
  x_8.x = dot (unity_SHAr, tmpvar_6);
  x_8.y = dot (unity_SHAg, tmpvar_6);
  x_8.z = dot (unity_SHAb, tmpvar_6);
  mediump vec3 x1_9;
  mediump vec4 tmpvar_10;
  tmpvar_10 = (normal_5.xyzz * normal_5.yzzx);
  x1_9.x = dot (unity_SHBr, tmpvar_10);
  x1_9.y = dot (unity_SHBg, tmpvar_10);
  x1_9.z = dot (unity_SHBb, tmpvar_10);
  res_7 = (x_8 + (x1_9 + (unity_SHC.xyz * 
    ((normal_5.x * normal_5.x) - (normal_5.y * normal_5.y))
  )));
  mediump vec3 tmpvar_11;
  tmpvar_11 = max (((1.055 * 
    pow (max (res_7, vec3(0.0, 0.0, 0.0)), vec3(0.4166667, 0.4166667, 0.4166667))
  ) - 0.055), vec3(0.0, 0.0, 0.0));
  res_7 = tmpvar_11;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = tmpvar_4;
  xlv_TEXCOORD2 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD3 = max (vec3(0.0, 0.0, 0.0), tmpvar_11);
  xlv_TEXCOORD5 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform mediump vec4 _WorldSpaceLightPos0;
uniform lowp vec4 _LightColor0;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying mediump vec3 xlv_TEXCOORD3;
void main ()
{
  mediump vec3 tmpvar_1;
  mediump vec3 tmpvar_2;
  lowp vec4 c_3;
  lowp vec3 tmpvar_4;
  lowp vec3 lightDir_5;
  mediump vec3 tmpvar_6;
  tmpvar_6 = _WorldSpaceLightPos0.xyz;
  lightDir_5 = tmpvar_6;
  tmpvar_4 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_7;
  tmpvar_7 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  tmpvar_1 = _LightColor0.xyz;
  tmpvar_2 = lightDir_5;
  lowp vec4 c_8;
  lowp vec4 c_9;
  lowp float diff_10;
  mediump float tmpvar_11;
  tmpvar_11 = max (0.0, dot (tmpvar_4, tmpvar_2));
  diff_10 = tmpvar_11;
  c_9.xyz = ((tmpvar_7.xyz * tmpvar_1) * diff_10);
  c_9.w = tmpvar_7.w;
  c_8.w = c_9.w;
  c_8.xyz = (c_9.xyz + (tmpvar_7.xyz * xlv_TEXCOORD3));
  c_3.xyz = c_8.xyz;
  c_3.w = 1.0;
  gl_FragData[0] = c_3;
}


#endif


-- Hardware tier variant: Tier 2
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL LIGHTPROBE_SH 
-- Hardware tier variant: Tier 3
-- Vertex shader for "gles":
// Stats: 8 math, 1 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying mediump vec3 xlv_TEXCOORD3;
varying highp vec4 xlv_TEXCOORD5;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  highp vec3 tmpvar_4;
  tmpvar_4 = normalize((_glesNormal * tmpvar_3));
  mediump vec3 normal_5;
  normal_5 = tmpvar_4;
  mediump vec4 tmpvar_6;
  tmpvar_6.w = 1.0;
  tmpvar_6.xyz = normal_5;
  mediump vec3 res_7;
  mediump vec3 x_8;
  x_8.x = dot (unity_SHAr, tmpvar_6);
  x_8.y = dot (unity_SHAg, tmpvar_6);
  x_8.z = dot (unity_SHAb, tmpvar_6);
  mediump vec3 x1_9;
  mediump vec4 tmpvar_10;
  tmpvar_10 = (normal_5.xyzz * normal_5.yzzx);
  x1_9.x = dot (unity_SHBr, tmpvar_10);
  x1_9.y = dot (unity_SHBg, tmpvar_10);
  x1_9.z = dot (unity_SHBb, tmpvar_10);
  res_7 = (x_8 + (x1_9 + (unity_SHC.xyz * 
    ((normal_5.x * normal_5.x) - (normal_5.y * normal_5.y))
  )));
  mediump vec3 tmpvar_11;
  tmpvar_11 = max (((1.055 * 
    pow (max (res_7, vec3(0.0, 0.0, 0.0)), vec3(0.4166667, 0.4166667, 0.4166667))
  ) - 0.055), vec3(0.0, 0.0, 0.0));
  res_7 = tmpvar_11;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = tmpvar_4;
  xlv_TEXCOORD2 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD3 = max (vec3(0.0, 0.0, 0.0), tmpvar_11);
  xlv_TEXCOORD5 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform mediump vec4 _WorldSpaceLightPos0;
uniform lowp vec4 _LightColor0;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying mediump vec3 xlv_TEXCOORD3;
void main ()
{
  mediump vec3 tmpvar_1;
  mediump vec3 tmpvar_2;
  lowp vec4 c_3;
  lowp vec3 tmpvar_4;
  lowp vec3 lightDir_5;
  mediump vec3 tmpvar_6;
  tmpvar_6 = _WorldSpaceLightPos0.xyz;
  lightDir_5 = tmpvar_6;
  tmpvar_4 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_7;
  tmpvar_7 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  tmpvar_1 = _LightColor0.xyz;
  tmpvar_2 = lightDir_5;
  lowp vec4 c_8;
  lowp vec4 c_9;
  lowp float diff_10;
  mediump float tmpvar_11;
  tmpvar_11 = max (0.0, dot (tmpvar_4, tmpvar_2));
  diff_10 = tmpvar_11;
  c_9.xyz = ((tmpvar_7.xyz * tmpvar_1) * diff_10);
  c_9.w = tmpvar_7.w;
  c_8.w = c_9.w;
  c_8.xyz = (c_9.xyz + (tmpvar_7.xyz * xlv_TEXCOORD3));
  c_3.xyz = c_8.xyz;
  c_3.w = 1.0;
  gl_FragData[0] = c_3;
}


#endif


-- Hardware tier variant: Tier 3
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL LIGHTPROBE_SH 
-- Hardware tier variant: Tier 1
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (272 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 64
  Matrix4x4 unity_WorldToObject at 128
  Matrix4x4 unity_MatrixVP at 192
  VectorHalf4 unity_SHAr at 0
  VectorHalf4 unity_SHAg at 8
  VectorHalf4 unity_SHAb at 16
  VectorHalf4 unity_SHBr at 24
  VectorHalf4 unity_SHBg at 32
  VectorHalf4 unity_SHBb at 40
  VectorHalf4 unity_SHC at 48
  Vector4 _MainTex_ST at 256
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    half4 unity_SHAr;
    half4 unity_SHAg;
    half4 unity_SHAb;
    half4 unity_SHBr;
    half4 unity_SHBg;
    half4 unity_SHBb;
    half4 unity_SHC;
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    half3 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float4 TEXCOORD5 [[ user(TEXCOORD5) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    half4 u_xlat16_1;
    half3 u_xlat16_2;
    half3 u_xlat16_3;
    float u_xlat12;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat12 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat12 = rsqrt(u_xlat12);
    u_xlat0.xyz = float3(u_xlat12) * u_xlat0.xyz;
    output.TEXCOORD1.xyz = u_xlat0.xyz;
    u_xlat16_2.x = half(u_xlat0.y * u_xlat0.y);
    u_xlat16_2.x = half(fma(u_xlat0.x, u_xlat0.x, (-float(u_xlat16_2.x))));
    u_xlat16_1 = half4(u_xlat0.yzzx * u_xlat0.xyzz);
    u_xlat16_3.x = dot(VGlobals.unity_SHBr, u_xlat16_1);
    u_xlat16_3.y = dot(VGlobals.unity_SHBg, u_xlat16_1);
    u_xlat16_3.z = dot(VGlobals.unity_SHBb, u_xlat16_1);
    u_xlat16_2.xyz = fma(VGlobals.unity_SHC.xyz, u_xlat16_2.xxx, u_xlat16_3.xyz);
    u_xlat0.w = 1.0;
    u_xlat16_3.x = half(dot(float4(VGlobals.unity_SHAr), u_xlat0));
    u_xlat16_3.y = half(dot(float4(VGlobals.unity_SHAg), u_xlat0));
    u_xlat16_3.z = half(dot(float4(VGlobals.unity_SHAb), u_xlat0));
    u_xlat16_2.xyz = u_xlat16_2.xyz + u_xlat16_3.xyz;
    u_xlat16_2.xyz = max(u_xlat16_2.xyz, half3(0.0, 0.0, 0.0));
    u_xlat0.xyz = log2(float3(u_xlat16_2.xyz));
    u_xlat0.xyz = u_xlat0.xyz * float3(0.416666657, 0.416666657, 0.416666657);
    u_xlat0.xyz = exp2(u_xlat0.xyz);
    u_xlat0.xyz = fma(u_xlat0.xyz, float3(1.05499995, 1.05499995, 1.05499995), float3(-0.0549999997, -0.0549999997, -0.0549999997));
    u_xlat0.xyz = max(u_xlat0.xyz, float3(0.0, 0.0, 0.0));
    output.TEXCOORD3.xyz = half3(u_xlat0.xyz);
    output.TEXCOORD5 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Hardware tier variant: Tier 1
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0

Constant Buffer "FGlobals" (24 bytes) on slot 0 {
  VectorHalf4 _WorldSpaceLightPos0 at 0
  VectorHalf4 _LightColor0 at 8
  VectorHalf4 _Color at 16
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    half4 _WorldSpaceLightPos0;
    half4 _LightColor0;
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
    half3 TEXCOORD3 [[ user(TEXCOORD3) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_MainTex [[ sampler (0) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    half u_xlat16_0;
    half3 u_xlat16_1;
    half3 u_xlat16_2;
    half3 u_xlat16_3;
    u_xlat16_0 = dot(input.TEXCOORD1.xyz, float3(FGlobals._WorldSpaceLightPos0.xyz));
    u_xlat16_0 = max(u_xlat16_0, half(0.0));
    u_xlat16_1.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_1.xyz = u_xlat16_1.xyz * FGlobals._Color.xyz;
    u_xlat16_3.xyz = u_xlat16_1.xyz * FGlobals._LightColor0.xyz;
    u_xlat16_2.xyz = u_xlat16_1.xyz * input.TEXCOORD3.xyz;
    output.SV_Target0.xyz = fma(u_xlat16_3.xyz, half3(u_xlat16_0), u_xlat16_2.xyz);
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL LIGHTPROBE_SH 
-- Hardware tier variant: Tier 2
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (272 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 64
  Matrix4x4 unity_WorldToObject at 128
  Matrix4x4 unity_MatrixVP at 192
  VectorHalf4 unity_SHAr at 0
  VectorHalf4 unity_SHAg at 8
  VectorHalf4 unity_SHAb at 16
  VectorHalf4 unity_SHBr at 24
  VectorHalf4 unity_SHBg at 32
  VectorHalf4 unity_SHBb at 40
  VectorHalf4 unity_SHC at 48
  Vector4 _MainTex_ST at 256
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    half4 unity_SHAr;
    half4 unity_SHAg;
    half4 unity_SHAb;
    half4 unity_SHBr;
    half4 unity_SHBg;
    half4 unity_SHBb;
    half4 unity_SHC;
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    half3 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float4 TEXCOORD5 [[ user(TEXCOORD5) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    half4 u_xlat16_1;
    half3 u_xlat16_2;
    half3 u_xlat16_3;
    float u_xlat12;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat12 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat12 = rsqrt(u_xlat12);
    u_xlat0.xyz = float3(u_xlat12) * u_xlat0.xyz;
    output.TEXCOORD1.xyz = u_xlat0.xyz;
    u_xlat16_2.x = half(u_xlat0.y * u_xlat0.y);
    u_xlat16_2.x = half(fma(u_xlat0.x, u_xlat0.x, (-float(u_xlat16_2.x))));
    u_xlat16_1 = half4(u_xlat0.yzzx * u_xlat0.xyzz);
    u_xlat16_3.x = dot(VGlobals.unity_SHBr, u_xlat16_1);
    u_xlat16_3.y = dot(VGlobals.unity_SHBg, u_xlat16_1);
    u_xlat16_3.z = dot(VGlobals.unity_SHBb, u_xlat16_1);
    u_xlat16_2.xyz = fma(VGlobals.unity_SHC.xyz, u_xlat16_2.xxx, u_xlat16_3.xyz);
    u_xlat0.w = 1.0;
    u_xlat16_3.x = half(dot(float4(VGlobals.unity_SHAr), u_xlat0));
    u_xlat16_3.y = half(dot(float4(VGlobals.unity_SHAg), u_xlat0));
    u_xlat16_3.z = half(dot(float4(VGlobals.unity_SHAb), u_xlat0));
    u_xlat16_2.xyz = u_xlat16_2.xyz + u_xlat16_3.xyz;
    u_xlat16_2.xyz = max(u_xlat16_2.xyz, half3(0.0, 0.0, 0.0));
    u_xlat0.xyz = log2(float3(u_xlat16_2.xyz));
    u_xlat0.xyz = u_xlat0.xyz * float3(0.416666657, 0.416666657, 0.416666657);
    u_xlat0.xyz = exp2(u_xlat0.xyz);
    u_xlat0.xyz = fma(u_xlat0.xyz, float3(1.05499995, 1.05499995, 1.05499995), float3(-0.0549999997, -0.0549999997, -0.0549999997));
    u_xlat0.xyz = max(u_xlat0.xyz, float3(0.0, 0.0, 0.0));
    output.TEXCOORD3.xyz = half3(u_xlat0.xyz);
    output.TEXCOORD5 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Hardware tier variant: Tier 2
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0

Constant Buffer "FGlobals" (24 bytes) on slot 0 {
  VectorHalf4 _WorldSpaceLightPos0 at 0
  VectorHalf4 _LightColor0 at 8
  VectorHalf4 _Color at 16
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    half4 _WorldSpaceLightPos0;
    half4 _LightColor0;
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
    half3 TEXCOORD3 [[ user(TEXCOORD3) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_MainTex [[ sampler (0) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    half u_xlat16_0;
    half3 u_xlat16_1;
    half3 u_xlat16_2;
    half3 u_xlat16_3;
    u_xlat16_0 = dot(input.TEXCOORD1.xyz, float3(FGlobals._WorldSpaceLightPos0.xyz));
    u_xlat16_0 = max(u_xlat16_0, half(0.0));
    u_xlat16_1.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_1.xyz = u_xlat16_1.xyz * FGlobals._Color.xyz;
    u_xlat16_3.xyz = u_xlat16_1.xyz * FGlobals._LightColor0.xyz;
    u_xlat16_2.xyz = u_xlat16_1.xyz * input.TEXCOORD3.xyz;
    output.SV_Target0.xyz = fma(u_xlat16_3.xyz, half3(u_xlat16_0), u_xlat16_2.xyz);
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL LIGHTPROBE_SH 
-- Hardware tier variant: Tier 3
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (272 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 64
  Matrix4x4 unity_WorldToObject at 128
  Matrix4x4 unity_MatrixVP at 192
  VectorHalf4 unity_SHAr at 0
  VectorHalf4 unity_SHAg at 8
  VectorHalf4 unity_SHAb at 16
  VectorHalf4 unity_SHBr at 24
  VectorHalf4 unity_SHBg at 32
  VectorHalf4 unity_SHBb at 40
  VectorHalf4 unity_SHC at 48
  Vector4 _MainTex_ST at 256
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    half4 unity_SHAr;
    half4 unity_SHAg;
    half4 unity_SHAb;
    half4 unity_SHBr;
    half4 unity_SHBg;
    half4 unity_SHBb;
    half4 unity_SHC;
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    half3 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float4 TEXCOORD5 [[ user(TEXCOORD5) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    half4 u_xlat16_1;
    half3 u_xlat16_2;
    half3 u_xlat16_3;
    float u_xlat12;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat12 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat12 = rsqrt(u_xlat12);
    u_xlat0.xyz = float3(u_xlat12) * u_xlat0.xyz;
    output.TEXCOORD1.xyz = u_xlat0.xyz;
    u_xlat16_2.x = half(u_xlat0.y * u_xlat0.y);
    u_xlat16_2.x = half(fma(u_xlat0.x, u_xlat0.x, (-float(u_xlat16_2.x))));
    u_xlat16_1 = half4(u_xlat0.yzzx * u_xlat0.xyzz);
    u_xlat16_3.x = dot(VGlobals.unity_SHBr, u_xlat16_1);
    u_xlat16_3.y = dot(VGlobals.unity_SHBg, u_xlat16_1);
    u_xlat16_3.z = dot(VGlobals.unity_SHBb, u_xlat16_1);
    u_xlat16_2.xyz = fma(VGlobals.unity_SHC.xyz, u_xlat16_2.xxx, u_xlat16_3.xyz);
    u_xlat0.w = 1.0;
    u_xlat16_3.x = half(dot(float4(VGlobals.unity_SHAr), u_xlat0));
    u_xlat16_3.y = half(dot(float4(VGlobals.unity_SHAg), u_xlat0));
    u_xlat16_3.z = half(dot(float4(VGlobals.unity_SHAb), u_xlat0));
    u_xlat16_2.xyz = u_xlat16_2.xyz + u_xlat16_3.xyz;
    u_xlat16_2.xyz = max(u_xlat16_2.xyz, half3(0.0, 0.0, 0.0));
    u_xlat0.xyz = log2(float3(u_xlat16_2.xyz));
    u_xlat0.xyz = u_xlat0.xyz * float3(0.416666657, 0.416666657, 0.416666657);
    u_xlat0.xyz = exp2(u_xlat0.xyz);
    u_xlat0.xyz = fma(u_xlat0.xyz, float3(1.05499995, 1.05499995, 1.05499995), float3(-0.0549999997, -0.0549999997, -0.0549999997));
    u_xlat0.xyz = max(u_xlat0.xyz, float3(0.0, 0.0, 0.0));
    output.TEXCOORD3.xyz = half3(u_xlat0.xyz);
    output.TEXCOORD5 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Hardware tier variant: Tier 3
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0

Constant Buffer "FGlobals" (24 bytes) on slot 0 {
  VectorHalf4 _WorldSpaceLightPos0 at 0
  VectorHalf4 _LightColor0 at 8
  VectorHalf4 _Color at 16
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    half4 _WorldSpaceLightPos0;
    half4 _LightColor0;
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
    half3 TEXCOORD3 [[ user(TEXCOORD3) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_MainTex [[ sampler (0) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    half u_xlat16_0;
    half3 u_xlat16_1;
    half3 u_xlat16_2;
    half3 u_xlat16_3;
    u_xlat16_0 = dot(input.TEXCOORD1.xyz, float3(FGlobals._WorldSpaceLightPos0.xyz));
    u_xlat16_0 = max(u_xlat16_0, half(0.0));
    u_xlat16_1.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_1.xyz = u_xlat16_1.xyz * FGlobals._Color.xyz;
    u_xlat16_3.xyz = u_xlat16_1.xyz * FGlobals._LightColor0.xyz;
    u_xlat16_2.xyz = u_xlat16_1.xyz * input.TEXCOORD3.xyz;
    output.SV_Target0.xyz = fma(u_xlat16_3.xyz, half3(u_xlat16_0), u_xlat16_2.xyz);
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL SHADOWS_SCREEN 
-- Hardware tier variant: Tier 1
-- Vertex shader for "gles":
// Stats: 22 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
#extension GL_EXT_shadow_samplers : enable
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD5;
varying highp vec4 xlv_TEXCOORD6;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_4;
  tmpvar_4[0] = unity_WorldToObject[0].xyz;
  tmpvar_4[1] = unity_WorldToObject[1].xyz;
  tmpvar_4[2] = unity_WorldToObject[2].xyz;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = normalize((_glesNormal * tmpvar_4));
  xlv_TEXCOORD2 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD5 = tmpvar_1;
  xlv_TEXCOORD6 = tmpvar_2;
}


#endif
#ifdef FRAGMENT
#extension GL_EXT_shadow_samplers : enable
uniform highp vec3 _WorldSpaceCameraPos;
uniform mediump vec4 _WorldSpaceLightPos0;
uniform highp mat4 unity_WorldToShadow[4];
uniform mediump vec4 _LightShadowData;
uniform highp vec4 unity_ShadowFadeCenterAndType;
uniform highp mat4 unity_MatrixV;
uniform lowp vec4 _LightColor0;
uniform lowp sampler2DShadow _ShadowMapTexture;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
void main ()
{
  mediump float tmpvar_1;
  mediump vec3 tmpvar_2;
  mediump vec3 tmpvar_3;
  lowp vec4 c_4;
  lowp float atten_5;
  lowp vec3 tmpvar_6;
  lowp vec3 lightDir_7;
  mediump vec3 tmpvar_8;
  tmpvar_8 = _WorldSpaceLightPos0.xyz;
  lightDir_7 = tmpvar_8;
  tmpvar_6 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_9;
  tmpvar_9 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  mediump float realtimeShadowAttenuation_10;
  highp vec4 v_11;
  v_11.x = unity_MatrixV[0].z;
  v_11.y = unity_MatrixV[1].z;
  v_11.z = unity_MatrixV[2].z;
  v_11.w = unity_MatrixV[3].z;
  highp vec3 tmpvar_12;
  tmpvar_12 = (xlv_TEXCOORD2 - unity_ShadowFadeCenterAndType.xyz);
  mediump float tmpvar_13;
  highp float tmpvar_14;
  tmpvar_14 = clamp (((
    mix (dot ((_WorldSpaceCameraPos - xlv_TEXCOORD2), v_11.xyz), sqrt(dot (tmpvar_12, tmpvar_12)), unity_ShadowFadeCenterAndType.w)
   * _LightShadowData.z) + _LightShadowData.w), 0.0, 1.0);
  tmpvar_13 = tmpvar_14;
  highp vec4 tmpvar_15;
  tmpvar_15.w = 1.0;
  tmpvar_15.xyz = xlv_TEXCOORD2;
  lowp float shadow_16;
  highp vec3 coord_17;
  coord_17 = (unity_WorldToShadow[0] * tmpvar_15).xyz;
  shadow_16 = (_LightShadowData.x + (shadow2DEXT (_ShadowMapTexture, coord_17) * (1.0 - _LightShadowData.x)));
  realtimeShadowAttenuation_10 = shadow_16;
  mediump float tmpvar_18;
  tmpvar_18 = mix (realtimeShadowAttenuation_10, 1.0, tmpvar_13);
  atten_5 = tmpvar_18;
  tmpvar_2 = _LightColor0.xyz;
  tmpvar_3 = lightDir_7;
  tmpvar_1 = atten_5;
  mediump vec3 tmpvar_19;
  tmpvar_19 = (tmpvar_2 * tmpvar_1);
  tmpvar_2 = tmpvar_19;
  lowp vec4 c_20;
  lowp vec4 c_21;
  lowp float diff_22;
  mediump float tmpvar_23;
  tmpvar_23 = max (0.0, dot (tmpvar_6, tmpvar_3));
  diff_22 = tmpvar_23;
  c_21.xyz = ((tmpvar_9.xyz * tmpvar_19) * diff_22);
  c_21.w = tmpvar_9.w;
  c_20.w = c_21.w;
  c_20.xyz = c_21.xyz;
  c_4.xyz = c_20.xyz;
  c_4.w = 1.0;
  gl_FragData[0] = c_4;
}


#endif


-- Hardware tier variant: Tier 1
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL SHADOWS_SCREEN 
-- Hardware tier variant: Tier 2
-- Vertex shader for "gles":
// Stats: 22 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
#extension GL_EXT_shadow_samplers : enable
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD5;
varying highp vec4 xlv_TEXCOORD6;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_4;
  tmpvar_4[0] = unity_WorldToObject[0].xyz;
  tmpvar_4[1] = unity_WorldToObject[1].xyz;
  tmpvar_4[2] = unity_WorldToObject[2].xyz;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = normalize((_glesNormal * tmpvar_4));
  xlv_TEXCOORD2 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD5 = tmpvar_1;
  xlv_TEXCOORD6 = tmpvar_2;
}


#endif
#ifdef FRAGMENT
#extension GL_EXT_shadow_samplers : enable
uniform highp vec3 _WorldSpaceCameraPos;
uniform mediump vec4 _WorldSpaceLightPos0;
uniform highp mat4 unity_WorldToShadow[4];
uniform mediump vec4 _LightShadowData;
uniform highp vec4 unity_ShadowFadeCenterAndType;
uniform highp mat4 unity_MatrixV;
uniform lowp vec4 _LightColor0;
uniform lowp sampler2DShadow _ShadowMapTexture;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
void main ()
{
  mediump float tmpvar_1;
  mediump vec3 tmpvar_2;
  mediump vec3 tmpvar_3;
  lowp vec4 c_4;
  lowp float atten_5;
  lowp vec3 tmpvar_6;
  lowp vec3 lightDir_7;
  mediump vec3 tmpvar_8;
  tmpvar_8 = _WorldSpaceLightPos0.xyz;
  lightDir_7 = tmpvar_8;
  tmpvar_6 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_9;
  tmpvar_9 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  mediump float realtimeShadowAttenuation_10;
  highp vec4 v_11;
  v_11.x = unity_MatrixV[0].z;
  v_11.y = unity_MatrixV[1].z;
  v_11.z = unity_MatrixV[2].z;
  v_11.w = unity_MatrixV[3].z;
  highp vec3 tmpvar_12;
  tmpvar_12 = (xlv_TEXCOORD2 - unity_ShadowFadeCenterAndType.xyz);
  mediump float tmpvar_13;
  highp float tmpvar_14;
  tmpvar_14 = clamp (((
    mix (dot ((_WorldSpaceCameraPos - xlv_TEXCOORD2), v_11.xyz), sqrt(dot (tmpvar_12, tmpvar_12)), unity_ShadowFadeCenterAndType.w)
   * _LightShadowData.z) + _LightShadowData.w), 0.0, 1.0);
  tmpvar_13 = tmpvar_14;
  highp vec4 tmpvar_15;
  tmpvar_15.w = 1.0;
  tmpvar_15.xyz = xlv_TEXCOORD2;
  lowp float shadow_16;
  highp vec3 coord_17;
  coord_17 = (unity_WorldToShadow[0] * tmpvar_15).xyz;
  shadow_16 = (_LightShadowData.x + (shadow2DEXT (_ShadowMapTexture, coord_17) * (1.0 - _LightShadowData.x)));
  realtimeShadowAttenuation_10 = shadow_16;
  mediump float tmpvar_18;
  tmpvar_18 = mix (realtimeShadowAttenuation_10, 1.0, tmpvar_13);
  atten_5 = tmpvar_18;
  tmpvar_2 = _LightColor0.xyz;
  tmpvar_3 = lightDir_7;
  tmpvar_1 = atten_5;
  mediump vec3 tmpvar_19;
  tmpvar_19 = (tmpvar_2 * tmpvar_1);
  tmpvar_2 = tmpvar_19;
  lowp vec4 c_20;
  lowp vec4 c_21;
  lowp float diff_22;
  mediump float tmpvar_23;
  tmpvar_23 = max (0.0, dot (tmpvar_6, tmpvar_3));
  diff_22 = tmpvar_23;
  c_21.xyz = ((tmpvar_9.xyz * tmpvar_19) * diff_22);
  c_21.w = tmpvar_9.w;
  c_20.w = c_21.w;
  c_20.xyz = c_21.xyz;
  c_4.xyz = c_20.xyz;
  c_4.w = 1.0;
  gl_FragData[0] = c_4;
}


#endif


-- Hardware tier variant: Tier 2
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL SHADOWS_SCREEN 
-- Hardware tier variant: Tier 3
-- Vertex shader for "gles":
// Stats: 22 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
#extension GL_EXT_shadow_samplers : enable
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD5;
varying highp vec4 xlv_TEXCOORD6;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_4;
  tmpvar_4[0] = unity_WorldToObject[0].xyz;
  tmpvar_4[1] = unity_WorldToObject[1].xyz;
  tmpvar_4[2] = unity_WorldToObject[2].xyz;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = normalize((_glesNormal * tmpvar_4));
  xlv_TEXCOORD2 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD5 = tmpvar_1;
  xlv_TEXCOORD6 = tmpvar_2;
}


#endif
#ifdef FRAGMENT
#extension GL_EXT_shadow_samplers : enable
uniform highp vec3 _WorldSpaceCameraPos;
uniform mediump vec4 _WorldSpaceLightPos0;
uniform highp mat4 unity_WorldToShadow[4];
uniform mediump vec4 _LightShadowData;
uniform highp vec4 unity_ShadowFadeCenterAndType;
uniform highp mat4 unity_MatrixV;
uniform lowp vec4 _LightColor0;
uniform lowp sampler2DShadow _ShadowMapTexture;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
void main ()
{
  mediump float tmpvar_1;
  mediump vec3 tmpvar_2;
  mediump vec3 tmpvar_3;
  lowp vec4 c_4;
  lowp float atten_5;
  lowp vec3 tmpvar_6;
  lowp vec3 lightDir_7;
  mediump vec3 tmpvar_8;
  tmpvar_8 = _WorldSpaceLightPos0.xyz;
  lightDir_7 = tmpvar_8;
  tmpvar_6 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_9;
  tmpvar_9 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  mediump float realtimeShadowAttenuation_10;
  highp vec4 v_11;
  v_11.x = unity_MatrixV[0].z;
  v_11.y = unity_MatrixV[1].z;
  v_11.z = unity_MatrixV[2].z;
  v_11.w = unity_MatrixV[3].z;
  highp vec3 tmpvar_12;
  tmpvar_12 = (xlv_TEXCOORD2 - unity_ShadowFadeCenterAndType.xyz);
  mediump float tmpvar_13;
  highp float tmpvar_14;
  tmpvar_14 = clamp (((
    mix (dot ((_WorldSpaceCameraPos - xlv_TEXCOORD2), v_11.xyz), sqrt(dot (tmpvar_12, tmpvar_12)), unity_ShadowFadeCenterAndType.w)
   * _LightShadowData.z) + _LightShadowData.w), 0.0, 1.0);
  tmpvar_13 = tmpvar_14;
  highp vec4 tmpvar_15;
  tmpvar_15.w = 1.0;
  tmpvar_15.xyz = xlv_TEXCOORD2;
  lowp float shadow_16;
  highp vec3 coord_17;
  coord_17 = (unity_WorldToShadow[0] * tmpvar_15).xyz;
  shadow_16 = (_LightShadowData.x + (shadow2DEXT (_ShadowMapTexture, coord_17) * (1.0 - _LightShadowData.x)));
  realtimeShadowAttenuation_10 = shadow_16;
  mediump float tmpvar_18;
  tmpvar_18 = mix (realtimeShadowAttenuation_10, 1.0, tmpvar_13);
  atten_5 = tmpvar_18;
  tmpvar_2 = _LightColor0.xyz;
  tmpvar_3 = lightDir_7;
  tmpvar_1 = atten_5;
  mediump vec3 tmpvar_19;
  tmpvar_19 = (tmpvar_2 * tmpvar_1);
  tmpvar_2 = tmpvar_19;
  lowp vec4 c_20;
  lowp vec4 c_21;
  lowp float diff_22;
  mediump float tmpvar_23;
  tmpvar_23 = max (0.0, dot (tmpvar_6, tmpvar_3));
  diff_22 = tmpvar_23;
  c_21.xyz = ((tmpvar_9.xyz * tmpvar_19) * diff_22);
  c_21.w = tmpvar_9.w;
  c_20.w = c_21.w;
  c_20.xyz = c_21.xyz;
  c_4.xyz = c_20.xyz;
  c_4.w = 1.0;
  gl_FragData[0] = c_4;
}


#endif


-- Hardware tier variant: Tier 3
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL SHADOWS_SCREEN 
-- Hardware tier variant: Tier 1
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (208 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
  Vector4 _MainTex_ST at 192
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD5 [[ user(TEXCOORD5) ]];
    float4 TEXCOORD6 [[ user(TEXCOORD6) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float u_xlat6;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = rsqrt(u_xlat6);
    output.TEXCOORD1.xyz = float3(u_xlat6) * u_xlat0.xyz;
    output.TEXCOORD5 = float4(0.0, 0.0, 0.0, 0.0);
    output.TEXCOORD6 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Hardware tier variant: Tier 1
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0 sampler slot 1
Set 2D Texture "_ShadowMapTexture" to slot 1 sampler slot 0

Constant Buffer "FGlobals" (400 bytes) on slot 0 {
  Matrix4x4 unity_WorldToShadow[4] at 32
  Matrix4x4 unity_MatrixV at 320
  Vector3 _WorldSpaceCameraPos at 0
  VectorHalf4 _WorldSpaceLightPos0 at 16
  VectorHalf4 _LightShadowData at 288
  Vector4 unity_ShadowFadeCenterAndType at 304
  VectorHalf4 _LightColor0 at 384
  VectorHalf4 _Color at 392
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    float3 _WorldSpaceCameraPos;
    half4 _WorldSpaceLightPos0;
    float4 hlslcc_mtx4x4unity_WorldToShadow[16];
    half4 _LightShadowData;
    float4 unity_ShadowFadeCenterAndType;
    float4 hlslcc_mtx4x4unity_MatrixV[4];
    half4 _LightColor0;
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

constexpr sampler _mtl_xl_shadow_sampler(address::clamp_to_edge, filter::linear, compare_func::greater_equal);
fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_ShadowMapTexture [[ sampler (0) ]],
    sampler sampler_MainTex [[ sampler (1) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    depth2d<float, access::sample > _ShadowMapTexture [[ texture(1) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float3 u_xlat0;
    half3 u_xlat16_0;
    float3 u_xlat1;
    half3 u_xlat16_2;
    float3 u_xlat3;
    half u_xlat16_3;
    half u_xlat16_5;
    half u_xlat16_11;
    u_xlat0.xyz = input.TEXCOORD2.xyz + (-FGlobals.unity_ShadowFadeCenterAndType.xyz);
    u_xlat0.x = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat0.x = sqrt(u_xlat0.x);
    u_xlat3.xyz = (-input.TEXCOORD2.xyz) + FGlobals._WorldSpaceCameraPos.xyzx.xyz;
    u_xlat1.x = FGlobals.hlslcc_mtx4x4unity_MatrixV[0].z;
    u_xlat1.y = FGlobals.hlslcc_mtx4x4unity_MatrixV[1].z;
    u_xlat1.z = FGlobals.hlslcc_mtx4x4unity_MatrixV[2].z;
    u_xlat3.x = dot(u_xlat3.xyz, u_xlat1.xyz);
    u_xlat0.x = (-u_xlat3.x) + u_xlat0.x;
    u_xlat0.x = fma(FGlobals.unity_ShadowFadeCenterAndType.w, u_xlat0.x, u_xlat3.x);
    u_xlat0.x = fma(u_xlat0.x, float(FGlobals._LightShadowData.z), float(FGlobals._LightShadowData.w));
    u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
    u_xlat3.xyz = input.TEXCOORD2.yyy * FGlobals.hlslcc_mtx4x4unity_WorldToShadow[1].xyz;
    u_xlat3.xyz = fma(FGlobals.hlslcc_mtx4x4unity_WorldToShadow[0].xyz, input.TEXCOORD2.xxx, u_xlat3.xyz);
    u_xlat3.xyz = fma(FGlobals.hlslcc_mtx4x4unity_WorldToShadow[2].xyz, input.TEXCOORD2.zzz, u_xlat3.xyz);
    u_xlat3.xyz = u_xlat3.xyz + FGlobals.hlslcc_mtx4x4unity_WorldToShadow[3].xyz;
    u_xlat16_3 = _ShadowMapTexture.sample_compare(_mtl_xl_shadow_sampler, u_xlat3.xy, saturate(u_xlat3.z), level(0.0));
    u_xlat16_2.x = (-FGlobals._LightShadowData.x) + half(1.0);
    u_xlat16_2.x = fma(u_xlat16_3, u_xlat16_2.x, FGlobals._LightShadowData.x);
    u_xlat16_5 = (-u_xlat16_2.x) + half(1.0);
    u_xlat16_2.x = half(fma(u_xlat0.x, float(u_xlat16_5), float(u_xlat16_2.x)));
    u_xlat16_2.xyz = u_xlat16_2.xxx * FGlobals._LightColor0.xyz;
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    u_xlat16_2.xyz = u_xlat16_2.xyz * u_xlat16_0.xyz;
    u_xlat16_11 = dot(input.TEXCOORD1.xyz, float3(FGlobals._WorldSpaceLightPos0.xyz));
    u_xlat16_11 = max(u_xlat16_11, half(0.0));
    output.SV_Target0.xyz = half3(u_xlat16_11) * u_xlat16_2.xyz;
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL SHADOWS_SCREEN 
-- Hardware tier variant: Tier 2
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (208 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
  Vector4 _MainTex_ST at 192
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD5 [[ user(TEXCOORD5) ]];
    float4 TEXCOORD6 [[ user(TEXCOORD6) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float u_xlat6;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = rsqrt(u_xlat6);
    output.TEXCOORD1.xyz = float3(u_xlat6) * u_xlat0.xyz;
    output.TEXCOORD5 = float4(0.0, 0.0, 0.0, 0.0);
    output.TEXCOORD6 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Hardware tier variant: Tier 2
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0 sampler slot 1
Set 2D Texture "_ShadowMapTexture" to slot 1 sampler slot 0

Constant Buffer "FGlobals" (400 bytes) on slot 0 {
  Matrix4x4 unity_WorldToShadow[4] at 32
  Matrix4x4 unity_MatrixV at 320
  Vector3 _WorldSpaceCameraPos at 0
  VectorHalf4 _WorldSpaceLightPos0 at 16
  VectorHalf4 _LightShadowData at 288
  Vector4 unity_ShadowFadeCenterAndType at 304
  VectorHalf4 _LightColor0 at 384
  VectorHalf4 _Color at 392
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    float3 _WorldSpaceCameraPos;
    half4 _WorldSpaceLightPos0;
    float4 hlslcc_mtx4x4unity_WorldToShadow[16];
    half4 _LightShadowData;
    float4 unity_ShadowFadeCenterAndType;
    float4 hlslcc_mtx4x4unity_MatrixV[4];
    half4 _LightColor0;
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

constexpr sampler _mtl_xl_shadow_sampler(address::clamp_to_edge, filter::linear, compare_func::greater_equal);
fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_ShadowMapTexture [[ sampler (0) ]],
    sampler sampler_MainTex [[ sampler (1) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    depth2d<float, access::sample > _ShadowMapTexture [[ texture(1) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float3 u_xlat0;
    half3 u_xlat16_0;
    float3 u_xlat1;
    half3 u_xlat16_2;
    float3 u_xlat3;
    half u_xlat16_3;
    half u_xlat16_5;
    half u_xlat16_11;
    u_xlat0.xyz = input.TEXCOORD2.xyz + (-FGlobals.unity_ShadowFadeCenterAndType.xyz);
    u_xlat0.x = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat0.x = sqrt(u_xlat0.x);
    u_xlat3.xyz = (-input.TEXCOORD2.xyz) + FGlobals._WorldSpaceCameraPos.xyzx.xyz;
    u_xlat1.x = FGlobals.hlslcc_mtx4x4unity_MatrixV[0].z;
    u_xlat1.y = FGlobals.hlslcc_mtx4x4unity_MatrixV[1].z;
    u_xlat1.z = FGlobals.hlslcc_mtx4x4unity_MatrixV[2].z;
    u_xlat3.x = dot(u_xlat3.xyz, u_xlat1.xyz);
    u_xlat0.x = (-u_xlat3.x) + u_xlat0.x;
    u_xlat0.x = fma(FGlobals.unity_ShadowFadeCenterAndType.w, u_xlat0.x, u_xlat3.x);
    u_xlat0.x = fma(u_xlat0.x, float(FGlobals._LightShadowData.z), float(FGlobals._LightShadowData.w));
    u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
    u_xlat3.xyz = input.TEXCOORD2.yyy * FGlobals.hlslcc_mtx4x4unity_WorldToShadow[1].xyz;
    u_xlat3.xyz = fma(FGlobals.hlslcc_mtx4x4unity_WorldToShadow[0].xyz, input.TEXCOORD2.xxx, u_xlat3.xyz);
    u_xlat3.xyz = fma(FGlobals.hlslcc_mtx4x4unity_WorldToShadow[2].xyz, input.TEXCOORD2.zzz, u_xlat3.xyz);
    u_xlat3.xyz = u_xlat3.xyz + FGlobals.hlslcc_mtx4x4unity_WorldToShadow[3].xyz;
    u_xlat16_3 = _ShadowMapTexture.sample_compare(_mtl_xl_shadow_sampler, u_xlat3.xy, saturate(u_xlat3.z), level(0.0));
    u_xlat16_2.x = (-FGlobals._LightShadowData.x) + half(1.0);
    u_xlat16_2.x = fma(u_xlat16_3, u_xlat16_2.x, FGlobals._LightShadowData.x);
    u_xlat16_5 = (-u_xlat16_2.x) + half(1.0);
    u_xlat16_2.x = half(fma(u_xlat0.x, float(u_xlat16_5), float(u_xlat16_2.x)));
    u_xlat16_2.xyz = u_xlat16_2.xxx * FGlobals._LightColor0.xyz;
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    u_xlat16_2.xyz = u_xlat16_2.xyz * u_xlat16_0.xyz;
    u_xlat16_11 = dot(input.TEXCOORD1.xyz, float3(FGlobals._WorldSpaceLightPos0.xyz));
    u_xlat16_11 = max(u_xlat16_11, half(0.0));
    output.SV_Target0.xyz = half3(u_xlat16_11) * u_xlat16_2.xyz;
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL SHADOWS_SCREEN 
-- Hardware tier variant: Tier 3
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (208 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
  Vector4 _MainTex_ST at 192
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD5 [[ user(TEXCOORD5) ]];
    float4 TEXCOORD6 [[ user(TEXCOORD6) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float u_xlat6;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = rsqrt(u_xlat6);
    output.TEXCOORD1.xyz = float3(u_xlat6) * u_xlat0.xyz;
    output.TEXCOORD5 = float4(0.0, 0.0, 0.0, 0.0);
    output.TEXCOORD6 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Hardware tier variant: Tier 3
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0 sampler slot 1
Set 2D Texture "_ShadowMapTexture" to slot 1 sampler slot 0

Constant Buffer "FGlobals" (400 bytes) on slot 0 {
  Matrix4x4 unity_WorldToShadow[4] at 32
  Matrix4x4 unity_MatrixV at 320
  Vector3 _WorldSpaceCameraPos at 0
  VectorHalf4 _WorldSpaceLightPos0 at 16
  VectorHalf4 _LightShadowData at 288
  Vector4 unity_ShadowFadeCenterAndType at 304
  VectorHalf4 _LightColor0 at 384
  VectorHalf4 _Color at 392
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    float3 _WorldSpaceCameraPos;
    half4 _WorldSpaceLightPos0;
    float4 hlslcc_mtx4x4unity_WorldToShadow[16];
    half4 _LightShadowData;
    float4 unity_ShadowFadeCenterAndType;
    float4 hlslcc_mtx4x4unity_MatrixV[4];
    half4 _LightColor0;
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

constexpr sampler _mtl_xl_shadow_sampler(address::clamp_to_edge, filter::linear, compare_func::greater_equal);
fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_ShadowMapTexture [[ sampler (0) ]],
    sampler sampler_MainTex [[ sampler (1) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    depth2d<float, access::sample > _ShadowMapTexture [[ texture(1) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float3 u_xlat0;
    half3 u_xlat16_0;
    float3 u_xlat1;
    half3 u_xlat16_2;
    float3 u_xlat3;
    half u_xlat16_3;
    half u_xlat16_5;
    half u_xlat16_11;
    u_xlat0.xyz = input.TEXCOORD2.xyz + (-FGlobals.unity_ShadowFadeCenterAndType.xyz);
    u_xlat0.x = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat0.x = sqrt(u_xlat0.x);
    u_xlat3.xyz = (-input.TEXCOORD2.xyz) + FGlobals._WorldSpaceCameraPos.xyzx.xyz;
    u_xlat1.x = FGlobals.hlslcc_mtx4x4unity_MatrixV[0].z;
    u_xlat1.y = FGlobals.hlslcc_mtx4x4unity_MatrixV[1].z;
    u_xlat1.z = FGlobals.hlslcc_mtx4x4unity_MatrixV[2].z;
    u_xlat3.x = dot(u_xlat3.xyz, u_xlat1.xyz);
    u_xlat0.x = (-u_xlat3.x) + u_xlat0.x;
    u_xlat0.x = fma(FGlobals.unity_ShadowFadeCenterAndType.w, u_xlat0.x, u_xlat3.x);
    u_xlat0.x = fma(u_xlat0.x, float(FGlobals._LightShadowData.z), float(FGlobals._LightShadowData.w));
    u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
    u_xlat3.xyz = input.TEXCOORD2.yyy * FGlobals.hlslcc_mtx4x4unity_WorldToShadow[1].xyz;
    u_xlat3.xyz = fma(FGlobals.hlslcc_mtx4x4unity_WorldToShadow[0].xyz, input.TEXCOORD2.xxx, u_xlat3.xyz);
    u_xlat3.xyz = fma(FGlobals.hlslcc_mtx4x4unity_WorldToShadow[2].xyz, input.TEXCOORD2.zzz, u_xlat3.xyz);
    u_xlat3.xyz = u_xlat3.xyz + FGlobals.hlslcc_mtx4x4unity_WorldToShadow[3].xyz;
    u_xlat16_3 = _ShadowMapTexture.sample_compare(_mtl_xl_shadow_sampler, u_xlat3.xy, saturate(u_xlat3.z), level(0.0));
    u_xlat16_2.x = (-FGlobals._LightShadowData.x) + half(1.0);
    u_xlat16_2.x = fma(u_xlat16_3, u_xlat16_2.x, FGlobals._LightShadowData.x);
    u_xlat16_5 = (-u_xlat16_2.x) + half(1.0);
    u_xlat16_2.x = half(fma(u_xlat0.x, float(u_xlat16_5), float(u_xlat16_2.x)));
    u_xlat16_2.xyz = u_xlat16_2.xxx * FGlobals._LightColor0.xyz;
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    u_xlat16_2.xyz = u_xlat16_2.xyz * u_xlat16_0.xyz;
    u_xlat16_11 = dot(input.TEXCOORD1.xyz, float3(FGlobals._WorldSpaceLightPos0.xyz));
    u_xlat16_11 = max(u_xlat16_11, half(0.0));
    output.SV_Target0.xyz = half3(u_xlat16_11) * u_xlat16_2.xyz;
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL SHADOWS_SCREEN LIGHTPROBE_SH 
-- Hardware tier variant: Tier 1
-- Vertex shader for "gles":
// Stats: 34 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
#extension GL_EXT_shadow_samplers : enable
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying mediump vec3 xlv_TEXCOORD3;
varying highp vec4 xlv_TEXCOORD5;
varying highp vec4 xlv_TEXCOORD6;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_4;
  tmpvar_4[0] = unity_WorldToObject[0].xyz;
  tmpvar_4[1] = unity_WorldToObject[1].xyz;
  tmpvar_4[2] = unity_WorldToObject[2].xyz;
  highp vec3 tmpvar_5;
  tmpvar_5 = normalize((_glesNormal * tmpvar_4));
  mediump vec3 normal_6;
  normal_6 = tmpvar_5;
  mediump vec3 x1_7;
  mediump vec4 tmpvar_8;
  tmpvar_8 = (normal_6.xyzz * normal_6.yzzx);
  x1_7.x = dot (unity_SHBr, tmpvar_8);
  x1_7.y = dot (unity_SHBg, tmpvar_8);
  x1_7.z = dot (unity_SHBb, tmpvar_8);
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = tmpvar_5;
  xlv_TEXCOORD2 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD3 = (x1_7 + (unity_SHC.xyz * (
    (normal_6.x * normal_6.x)
   - 
    (normal_6.y * normal_6.y)
  )));
  xlv_TEXCOORD5 = tmpvar_1;
  xlv_TEXCOORD6 = tmpvar_2;
}


#endif
#ifdef FRAGMENT
#extension GL_EXT_shadow_samplers : enable
uniform highp vec3 _WorldSpaceCameraPos;
uniform mediump vec4 _WorldSpaceLightPos0;
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform highp mat4 unity_WorldToShadow[4];
uniform mediump vec4 _LightShadowData;
uniform highp vec4 unity_ShadowFadeCenterAndType;
uniform highp mat4 unity_MatrixV;
uniform lowp vec4 _LightColor0;
uniform lowp sampler2DShadow _ShadowMapTexture;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying mediump vec3 xlv_TEXCOORD3;
void main ()
{
  mediump float tmpvar_1;
  mediump vec3 tmpvar_2;
  mediump vec3 tmpvar_3;
  lowp vec4 c_4;
  lowp float atten_5;
  lowp vec3 tmpvar_6;
  lowp vec3 lightDir_7;
  mediump vec3 tmpvar_8;
  tmpvar_8 = _WorldSpaceLightPos0.xyz;
  lightDir_7 = tmpvar_8;
  tmpvar_6 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_9;
  tmpvar_9 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  mediump float realtimeShadowAttenuation_10;
  highp vec4 v_11;
  v_11.x = unity_MatrixV[0].z;
  v_11.y = unity_MatrixV[1].z;
  v_11.z = unity_MatrixV[2].z;
  v_11.w = unity_MatrixV[3].z;
  highp vec3 tmpvar_12;
  tmpvar_12 = (xlv_TEXCOORD2 - unity_ShadowFadeCenterAndType.xyz);
  mediump float tmpvar_13;
  highp float tmpvar_14;
  tmpvar_14 = clamp (((
    mix (dot ((_WorldSpaceCameraPos - xlv_TEXCOORD2), v_11.xyz), sqrt(dot (tmpvar_12, tmpvar_12)), unity_ShadowFadeCenterAndType.w)
   * _LightShadowData.z) + _LightShadowData.w), 0.0, 1.0);
  tmpvar_13 = tmpvar_14;
  highp vec4 tmpvar_15;
  tmpvar_15.w = 1.0;
  tmpvar_15.xyz = xlv_TEXCOORD2;
  lowp float shadow_16;
  highp vec3 coord_17;
  coord_17 = (unity_WorldToShadow[0] * tmpvar_15).xyz;
  shadow_16 = (_LightShadowData.x + (shadow2DEXT (_ShadowMapTexture, coord_17) * (1.0 - _LightShadowData.x)));
  realtimeShadowAttenuation_10 = shadow_16;
  mediump float tmpvar_18;
  tmpvar_18 = mix (realtimeShadowAttenuation_10, 1.0, tmpvar_13);
  atten_5 = tmpvar_18;
  tmpvar_2 = _LightColor0.xyz;
  tmpvar_3 = lightDir_7;
  tmpvar_1 = atten_5;
  mediump vec3 normalWorld_19;
  normalWorld_19 = tmpvar_6;
  mediump vec3 tmpvar_20;
  tmpvar_20 = (tmpvar_2 * tmpvar_1);
  mediump vec4 tmpvar_21;
  tmpvar_21.w = 1.0;
  tmpvar_21.xyz = normalWorld_19;
  mediump vec3 x_22;
  x_22.x = dot (unity_SHAr, tmpvar_21);
  x_22.y = dot (unity_SHAg, tmpvar_21);
  x_22.z = dot (unity_SHAb, tmpvar_21);
  mediump vec3 tmpvar_23;
  tmpvar_23 = max (((1.055 * 
    pow (max (vec3(0.0, 0.0, 0.0), (xlv_TEXCOORD3 + x_22)), vec3(0.4166667, 0.4166667, 0.4166667))
  ) - 0.055), vec3(0.0, 0.0, 0.0));
  tmpvar_2 = tmpvar_20;
  lowp vec4 c_24;
  lowp vec4 c_25;
  lowp float diff_26;
  mediump float tmpvar_27;
  tmpvar_27 = max (0.0, dot (tmpvar_6, tmpvar_3));
  diff_26 = tmpvar_27;
  c_25.xyz = ((tmpvar_9.xyz * tmpvar_20) * diff_26);
  c_25.w = tmpvar_9.w;
  c_24.w = c_25.w;
  c_24.xyz = (c_25.xyz + (tmpvar_9.xyz * tmpvar_23));
  c_4.xyz = c_24.xyz;
  c_4.w = 1.0;
  gl_FragData[0] = c_4;
}


#endif


-- Hardware tier variant: Tier 1
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL SHADOWS_SCREEN LIGHTPROBE_SH 
-- Hardware tier variant: Tier 2
-- Vertex shader for "gles":
// Stats: 34 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
#extension GL_EXT_shadow_samplers : enable
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying mediump vec3 xlv_TEXCOORD3;
varying highp vec4 xlv_TEXCOORD5;
varying highp vec4 xlv_TEXCOORD6;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_4;
  tmpvar_4[0] = unity_WorldToObject[0].xyz;
  tmpvar_4[1] = unity_WorldToObject[1].xyz;
  tmpvar_4[2] = unity_WorldToObject[2].xyz;
  highp vec3 tmpvar_5;
  tmpvar_5 = normalize((_glesNormal * tmpvar_4));
  mediump vec3 normal_6;
  normal_6 = tmpvar_5;
  mediump vec3 x1_7;
  mediump vec4 tmpvar_8;
  tmpvar_8 = (normal_6.xyzz * normal_6.yzzx);
  x1_7.x = dot (unity_SHBr, tmpvar_8);
  x1_7.y = dot (unity_SHBg, tmpvar_8);
  x1_7.z = dot (unity_SHBb, tmpvar_8);
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = tmpvar_5;
  xlv_TEXCOORD2 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD3 = (x1_7 + (unity_SHC.xyz * (
    (normal_6.x * normal_6.x)
   - 
    (normal_6.y * normal_6.y)
  )));
  xlv_TEXCOORD5 = tmpvar_1;
  xlv_TEXCOORD6 = tmpvar_2;
}


#endif
#ifdef FRAGMENT
#extension GL_EXT_shadow_samplers : enable
uniform highp vec3 _WorldSpaceCameraPos;
uniform mediump vec4 _WorldSpaceLightPos0;
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform highp mat4 unity_WorldToShadow[4];
uniform mediump vec4 _LightShadowData;
uniform highp vec4 unity_ShadowFadeCenterAndType;
uniform highp mat4 unity_MatrixV;
uniform lowp vec4 _LightColor0;
uniform lowp sampler2DShadow _ShadowMapTexture;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying mediump vec3 xlv_TEXCOORD3;
void main ()
{
  mediump float tmpvar_1;
  mediump vec3 tmpvar_2;
  mediump vec3 tmpvar_3;
  lowp vec4 c_4;
  lowp float atten_5;
  lowp vec3 tmpvar_6;
  lowp vec3 lightDir_7;
  mediump vec3 tmpvar_8;
  tmpvar_8 = _WorldSpaceLightPos0.xyz;
  lightDir_7 = tmpvar_8;
  tmpvar_6 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_9;
  tmpvar_9 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  mediump float realtimeShadowAttenuation_10;
  highp vec4 v_11;
  v_11.x = unity_MatrixV[0].z;
  v_11.y = unity_MatrixV[1].z;
  v_11.z = unity_MatrixV[2].z;
  v_11.w = unity_MatrixV[3].z;
  highp vec3 tmpvar_12;
  tmpvar_12 = (xlv_TEXCOORD2 - unity_ShadowFadeCenterAndType.xyz);
  mediump float tmpvar_13;
  highp float tmpvar_14;
  tmpvar_14 = clamp (((
    mix (dot ((_WorldSpaceCameraPos - xlv_TEXCOORD2), v_11.xyz), sqrt(dot (tmpvar_12, tmpvar_12)), unity_ShadowFadeCenterAndType.w)
   * _LightShadowData.z) + _LightShadowData.w), 0.0, 1.0);
  tmpvar_13 = tmpvar_14;
  highp vec4 tmpvar_15;
  tmpvar_15.w = 1.0;
  tmpvar_15.xyz = xlv_TEXCOORD2;
  lowp float shadow_16;
  highp vec3 coord_17;
  coord_17 = (unity_WorldToShadow[0] * tmpvar_15).xyz;
  shadow_16 = (_LightShadowData.x + (shadow2DEXT (_ShadowMapTexture, coord_17) * (1.0 - _LightShadowData.x)));
  realtimeShadowAttenuation_10 = shadow_16;
  mediump float tmpvar_18;
  tmpvar_18 = mix (realtimeShadowAttenuation_10, 1.0, tmpvar_13);
  atten_5 = tmpvar_18;
  tmpvar_2 = _LightColor0.xyz;
  tmpvar_3 = lightDir_7;
  tmpvar_1 = atten_5;
  mediump vec3 normalWorld_19;
  normalWorld_19 = tmpvar_6;
  mediump vec3 tmpvar_20;
  tmpvar_20 = (tmpvar_2 * tmpvar_1);
  mediump vec4 tmpvar_21;
  tmpvar_21.w = 1.0;
  tmpvar_21.xyz = normalWorld_19;
  mediump vec3 x_22;
  x_22.x = dot (unity_SHAr, tmpvar_21);
  x_22.y = dot (unity_SHAg, tmpvar_21);
  x_22.z = dot (unity_SHAb, tmpvar_21);
  mediump vec3 tmpvar_23;
  tmpvar_23 = max (((1.055 * 
    pow (max (vec3(0.0, 0.0, 0.0), (xlv_TEXCOORD3 + x_22)), vec3(0.4166667, 0.4166667, 0.4166667))
  ) - 0.055), vec3(0.0, 0.0, 0.0));
  tmpvar_2 = tmpvar_20;
  lowp vec4 c_24;
  lowp vec4 c_25;
  lowp float diff_26;
  mediump float tmpvar_27;
  tmpvar_27 = max (0.0, dot (tmpvar_6, tmpvar_3));
  diff_26 = tmpvar_27;
  c_25.xyz = ((tmpvar_9.xyz * tmpvar_20) * diff_26);
  c_25.w = tmpvar_9.w;
  c_24.w = c_25.w;
  c_24.xyz = (c_25.xyz + (tmpvar_9.xyz * tmpvar_23));
  c_4.xyz = c_24.xyz;
  c_4.w = 1.0;
  gl_FragData[0] = c_4;
}


#endif


-- Hardware tier variant: Tier 2
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL SHADOWS_SCREEN LIGHTPROBE_SH 
-- Hardware tier variant: Tier 3
-- Vertex shader for "gles":
// Stats: 34 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
#extension GL_EXT_shadow_samplers : enable
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying mediump vec3 xlv_TEXCOORD3;
varying highp vec4 xlv_TEXCOORD5;
varying highp vec4 xlv_TEXCOORD6;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_4;
  tmpvar_4[0] = unity_WorldToObject[0].xyz;
  tmpvar_4[1] = unity_WorldToObject[1].xyz;
  tmpvar_4[2] = unity_WorldToObject[2].xyz;
  highp vec3 tmpvar_5;
  tmpvar_5 = normalize((_glesNormal * tmpvar_4));
  mediump vec3 normal_6;
  normal_6 = tmpvar_5;
  mediump vec3 x1_7;
  mediump vec4 tmpvar_8;
  tmpvar_8 = (normal_6.xyzz * normal_6.yzzx);
  x1_7.x = dot (unity_SHBr, tmpvar_8);
  x1_7.y = dot (unity_SHBg, tmpvar_8);
  x1_7.z = dot (unity_SHBb, tmpvar_8);
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = tmpvar_5;
  xlv_TEXCOORD2 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD3 = (x1_7 + (unity_SHC.xyz * (
    (normal_6.x * normal_6.x)
   - 
    (normal_6.y * normal_6.y)
  )));
  xlv_TEXCOORD5 = tmpvar_1;
  xlv_TEXCOORD6 = tmpvar_2;
}


#endif
#ifdef FRAGMENT
#extension GL_EXT_shadow_samplers : enable
uniform highp vec3 _WorldSpaceCameraPos;
uniform mediump vec4 _WorldSpaceLightPos0;
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform highp mat4 unity_WorldToShadow[4];
uniform mediump vec4 _LightShadowData;
uniform highp vec4 unity_ShadowFadeCenterAndType;
uniform highp mat4 unity_MatrixV;
uniform lowp vec4 _LightColor0;
uniform lowp sampler2DShadow _ShadowMapTexture;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying mediump vec3 xlv_TEXCOORD3;
void main ()
{
  mediump float tmpvar_1;
  mediump vec3 tmpvar_2;
  mediump vec3 tmpvar_3;
  lowp vec4 c_4;
  lowp float atten_5;
  lowp vec3 tmpvar_6;
  lowp vec3 lightDir_7;
  mediump vec3 tmpvar_8;
  tmpvar_8 = _WorldSpaceLightPos0.xyz;
  lightDir_7 = tmpvar_8;
  tmpvar_6 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_9;
  tmpvar_9 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  mediump float realtimeShadowAttenuation_10;
  highp vec4 v_11;
  v_11.x = unity_MatrixV[0].z;
  v_11.y = unity_MatrixV[1].z;
  v_11.z = unity_MatrixV[2].z;
  v_11.w = unity_MatrixV[3].z;
  highp vec3 tmpvar_12;
  tmpvar_12 = (xlv_TEXCOORD2 - unity_ShadowFadeCenterAndType.xyz);
  mediump float tmpvar_13;
  highp float tmpvar_14;
  tmpvar_14 = clamp (((
    mix (dot ((_WorldSpaceCameraPos - xlv_TEXCOORD2), v_11.xyz), sqrt(dot (tmpvar_12, tmpvar_12)), unity_ShadowFadeCenterAndType.w)
   * _LightShadowData.z) + _LightShadowData.w), 0.0, 1.0);
  tmpvar_13 = tmpvar_14;
  highp vec4 tmpvar_15;
  tmpvar_15.w = 1.0;
  tmpvar_15.xyz = xlv_TEXCOORD2;
  lowp float shadow_16;
  highp vec3 coord_17;
  coord_17 = (unity_WorldToShadow[0] * tmpvar_15).xyz;
  shadow_16 = (_LightShadowData.x + (shadow2DEXT (_ShadowMapTexture, coord_17) * (1.0 - _LightShadowData.x)));
  realtimeShadowAttenuation_10 = shadow_16;
  mediump float tmpvar_18;
  tmpvar_18 = mix (realtimeShadowAttenuation_10, 1.0, tmpvar_13);
  atten_5 = tmpvar_18;
  tmpvar_2 = _LightColor0.xyz;
  tmpvar_3 = lightDir_7;
  tmpvar_1 = atten_5;
  mediump vec3 normalWorld_19;
  normalWorld_19 = tmpvar_6;
  mediump vec3 tmpvar_20;
  tmpvar_20 = (tmpvar_2 * tmpvar_1);
  mediump vec4 tmpvar_21;
  tmpvar_21.w = 1.0;
  tmpvar_21.xyz = normalWorld_19;
  mediump vec3 x_22;
  x_22.x = dot (unity_SHAr, tmpvar_21);
  x_22.y = dot (unity_SHAg, tmpvar_21);
  x_22.z = dot (unity_SHAb, tmpvar_21);
  mediump vec3 tmpvar_23;
  tmpvar_23 = max (((1.055 * 
    pow (max (vec3(0.0, 0.0, 0.0), (xlv_TEXCOORD3 + x_22)), vec3(0.4166667, 0.4166667, 0.4166667))
  ) - 0.055), vec3(0.0, 0.0, 0.0));
  tmpvar_2 = tmpvar_20;
  lowp vec4 c_24;
  lowp vec4 c_25;
  lowp float diff_26;
  mediump float tmpvar_27;
  tmpvar_27 = max (0.0, dot (tmpvar_6, tmpvar_3));
  diff_26 = tmpvar_27;
  c_25.xyz = ((tmpvar_9.xyz * tmpvar_20) * diff_26);
  c_25.w = tmpvar_9.w;
  c_24.w = c_25.w;
  c_24.xyz = (c_25.xyz + (tmpvar_9.xyz * tmpvar_23));
  c_4.xyz = c_24.xyz;
  c_4.w = 1.0;
  gl_FragData[0] = c_4;
}


#endif


-- Hardware tier variant: Tier 3
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL SHADOWS_SCREEN LIGHTPROBE_SH 
-- Hardware tier variant: Tier 1
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (240 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 32
  Matrix4x4 unity_WorldToObject at 96
  Matrix4x4 unity_MatrixVP at 160
  VectorHalf4 unity_SHBr at 0
  VectorHalf4 unity_SHBg at 8
  VectorHalf4 unity_SHBb at 16
  VectorHalf4 unity_SHC at 24
  Vector4 _MainTex_ST at 224
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    half4 unity_SHBr;
    half4 unity_SHBg;
    half4 unity_SHBb;
    half4 unity_SHC;
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    half3 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float4 TEXCOORD5 [[ user(TEXCOORD5) ]];
    float4 TEXCOORD6 [[ user(TEXCOORD6) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    half4 u_xlat16_0;
    float4 u_xlat1;
    half u_xlat16_2;
    half3 u_xlat16_3;
    float u_xlat12;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat12 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat12 = rsqrt(u_xlat12);
    u_xlat0.xyz = float3(u_xlat12) * u_xlat0.xyz;
    output.TEXCOORD1.xyz = u_xlat0.xyz;
    u_xlat16_2 = half(u_xlat0.y * u_xlat0.y);
    u_xlat16_2 = half(fma(u_xlat0.x, u_xlat0.x, (-float(u_xlat16_2))));
    u_xlat16_0 = half4(u_xlat0.yzzx * u_xlat0.xyzz);
    u_xlat16_3.x = dot(VGlobals.unity_SHBr, u_xlat16_0);
    u_xlat16_3.y = dot(VGlobals.unity_SHBg, u_xlat16_0);
    u_xlat16_3.z = dot(VGlobals.unity_SHBb, u_xlat16_0);
    output.TEXCOORD3.xyz = fma(VGlobals.unity_SHC.xyz, half3(u_xlat16_2), u_xlat16_3.xyz);
    output.TEXCOORD5 = float4(0.0, 0.0, 0.0, 0.0);
    output.TEXCOORD6 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Hardware tier variant: Tier 1
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0 sampler slot 1
Set 2D Texture "_ShadowMapTexture" to slot 1 sampler slot 0

Constant Buffer "FGlobals" (416 bytes) on slot 0 {
  Matrix4x4 unity_WorldToShadow[4] at 48
  Matrix4x4 unity_MatrixV at 336
  Vector3 _WorldSpaceCameraPos at 0
  VectorHalf4 _WorldSpaceLightPos0 at 16
  VectorHalf4 unity_SHAr at 24
  VectorHalf4 unity_SHAg at 32
  VectorHalf4 unity_SHAb at 40
  VectorHalf4 _LightShadowData at 304
  Vector4 unity_ShadowFadeCenterAndType at 320
  VectorHalf4 _LightColor0 at 400
  VectorHalf4 _Color at 408
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    float3 _WorldSpaceCameraPos;
    half4 _WorldSpaceLightPos0;
    half4 unity_SHAr;
    half4 unity_SHAg;
    half4 unity_SHAb;
    float4 hlslcc_mtx4x4unity_WorldToShadow[16];
    half4 _LightShadowData;
    float4 unity_ShadowFadeCenterAndType;
    float4 hlslcc_mtx4x4unity_MatrixV[4];
    half4 _LightColor0;
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]] ;
    half3 TEXCOORD3 [[ user(TEXCOORD3) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

constexpr sampler _mtl_xl_shadow_sampler(address::clamp_to_edge, filter::linear, compare_func::greater_equal);
fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_ShadowMapTexture [[ sampler (0) ]],
    sampler sampler_MainTex [[ sampler (1) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    depth2d<float, access::sample > _ShadowMapTexture [[ texture(1) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float3 u_xlat0;
    half3 u_xlat16_0;
    float4 u_xlat1;
    half3 u_xlat16_1;
    half3 u_xlat16_2;
    half3 u_xlat16_3;
    float3 u_xlat4;
    half u_xlat16_4;
    half u_xlat16_6;
    half u_xlat16_14;
    u_xlat0.xyz = input.TEXCOORD2.xyz + (-FGlobals.unity_ShadowFadeCenterAndType.xyz);
    u_xlat0.x = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat0.x = sqrt(u_xlat0.x);
    u_xlat4.xyz = (-input.TEXCOORD2.xyz) + FGlobals._WorldSpaceCameraPos.xyzx.xyz;
    u_xlat1.x = FGlobals.hlslcc_mtx4x4unity_MatrixV[0].z;
    u_xlat1.y = FGlobals.hlslcc_mtx4x4unity_MatrixV[1].z;
    u_xlat1.z = FGlobals.hlslcc_mtx4x4unity_MatrixV[2].z;
    u_xlat4.x = dot(u_xlat4.xyz, u_xlat1.xyz);
    u_xlat0.x = (-u_xlat4.x) + u_xlat0.x;
    u_xlat0.x = fma(FGlobals.unity_ShadowFadeCenterAndType.w, u_xlat0.x, u_xlat4.x);
    u_xlat0.x = fma(u_xlat0.x, float(FGlobals._LightShadowData.z), float(FGlobals._LightShadowData.w));
    u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
    u_xlat4.xyz = input.TEXCOORD2.yyy * FGlobals.hlslcc_mtx4x4unity_WorldToShadow[1].xyz;
    u_xlat4.xyz = fma(FGlobals.hlslcc_mtx4x4unity_WorldToShadow[0].xyz, input.TEXCOORD2.xxx, u_xlat4.xyz);
    u_xlat4.xyz = fma(FGlobals.hlslcc_mtx4x4unity_WorldToShadow[2].xyz, input.TEXCOORD2.zzz, u_xlat4.xyz);
    u_xlat4.xyz = u_xlat4.xyz + FGlobals.hlslcc_mtx4x4unity_WorldToShadow[3].xyz;
    u_xlat16_4 = _ShadowMapTexture.sample_compare(_mtl_xl_shadow_sampler, u_xlat4.xy, saturate(u_xlat4.z), level(0.0));
    u_xlat16_2.x = (-FGlobals._LightShadowData.x) + half(1.0);
    u_xlat16_2.x = fma(u_xlat16_4, u_xlat16_2.x, FGlobals._LightShadowData.x);
    u_xlat16_6 = (-u_xlat16_2.x) + half(1.0);
    u_xlat16_2.x = half(fma(u_xlat0.x, float(u_xlat16_6), float(u_xlat16_2.x)));
    u_xlat16_2.xyz = u_xlat16_2.xxx * FGlobals._LightColor0.xyz;
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    u_xlat16_2.xyz = u_xlat16_2.xyz * u_xlat16_0.xyz;
    u_xlat1.xyz = input.TEXCOORD1.xyz;
    u_xlat1.w = 1.0;
    u_xlat16_3.x = half(dot(float4(FGlobals.unity_SHAr), u_xlat1));
    u_xlat16_3.y = half(dot(float4(FGlobals.unity_SHAg), u_xlat1));
    u_xlat16_3.z = half(dot(float4(FGlobals.unity_SHAb), u_xlat1));
    u_xlat16_3.xyz = u_xlat16_3.xyz + input.TEXCOORD3.xyz;
    u_xlat16_3.xyz = max(u_xlat16_3.xyz, half3(0.0, 0.0, 0.0));
    u_xlat16_1.xyz = log2(u_xlat16_3.xyz);
    u_xlat16_1.xyz = u_xlat16_1.xyz * half3(0.416666657, 0.416666657, 0.416666657);
    u_xlat16_1.xyz = exp2(u_xlat16_1.xyz);
    u_xlat16_1.xyz = fma(u_xlat16_1.xyz, half3(1.05499995, 1.05499995, 1.05499995), half3(-0.0549999997, -0.0549999997, -0.0549999997));
    u_xlat16_1.xyz = max(u_xlat16_1.xyz, half3(0.0, 0.0, 0.0));
    u_xlat16_3.xyz = u_xlat16_0.xyz * u_xlat16_1.xyz;
    u_xlat16_14 = dot(input.TEXCOORD1.xyz, float3(FGlobals._WorldSpaceLightPos0.xyz));
    u_xlat16_14 = max(u_xlat16_14, half(0.0));
    output.SV_Target0.xyz = fma(u_xlat16_2.xyz, half3(u_xlat16_14), u_xlat16_3.xyz);
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL SHADOWS_SCREEN LIGHTPROBE_SH 
-- Hardware tier variant: Tier 2
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (240 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 32
  Matrix4x4 unity_WorldToObject at 96
  Matrix4x4 unity_MatrixVP at 160
  VectorHalf4 unity_SHBr at 0
  VectorHalf4 unity_SHBg at 8
  VectorHalf4 unity_SHBb at 16
  VectorHalf4 unity_SHC at 24
  Vector4 _MainTex_ST at 224
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    half4 unity_SHBr;
    half4 unity_SHBg;
    half4 unity_SHBb;
    half4 unity_SHC;
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    half3 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float4 TEXCOORD5 [[ user(TEXCOORD5) ]];
    float4 TEXCOORD6 [[ user(TEXCOORD6) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    half4 u_xlat16_0;
    float4 u_xlat1;
    half u_xlat16_2;
    half3 u_xlat16_3;
    float u_xlat12;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat12 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat12 = rsqrt(u_xlat12);
    u_xlat0.xyz = float3(u_xlat12) * u_xlat0.xyz;
    output.TEXCOORD1.xyz = u_xlat0.xyz;
    u_xlat16_2 = half(u_xlat0.y * u_xlat0.y);
    u_xlat16_2 = half(fma(u_xlat0.x, u_xlat0.x, (-float(u_xlat16_2))));
    u_xlat16_0 = half4(u_xlat0.yzzx * u_xlat0.xyzz);
    u_xlat16_3.x = dot(VGlobals.unity_SHBr, u_xlat16_0);
    u_xlat16_3.y = dot(VGlobals.unity_SHBg, u_xlat16_0);
    u_xlat16_3.z = dot(VGlobals.unity_SHBb, u_xlat16_0);
    output.TEXCOORD3.xyz = fma(VGlobals.unity_SHC.xyz, half3(u_xlat16_2), u_xlat16_3.xyz);
    output.TEXCOORD5 = float4(0.0, 0.0, 0.0, 0.0);
    output.TEXCOORD6 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Hardware tier variant: Tier 2
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0 sampler slot 1
Set 2D Texture "_ShadowMapTexture" to slot 1 sampler slot 0

Constant Buffer "FGlobals" (416 bytes) on slot 0 {
  Matrix4x4 unity_WorldToShadow[4] at 48
  Matrix4x4 unity_MatrixV at 336
  Vector3 _WorldSpaceCameraPos at 0
  VectorHalf4 _WorldSpaceLightPos0 at 16
  VectorHalf4 unity_SHAr at 24
  VectorHalf4 unity_SHAg at 32
  VectorHalf4 unity_SHAb at 40
  VectorHalf4 _LightShadowData at 304
  Vector4 unity_ShadowFadeCenterAndType at 320
  VectorHalf4 _LightColor0 at 400
  VectorHalf4 _Color at 408
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    float3 _WorldSpaceCameraPos;
    half4 _WorldSpaceLightPos0;
    half4 unity_SHAr;
    half4 unity_SHAg;
    half4 unity_SHAb;
    float4 hlslcc_mtx4x4unity_WorldToShadow[16];
    half4 _LightShadowData;
    float4 unity_ShadowFadeCenterAndType;
    float4 hlslcc_mtx4x4unity_MatrixV[4];
    half4 _LightColor0;
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]] ;
    half3 TEXCOORD3 [[ user(TEXCOORD3) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

constexpr sampler _mtl_xl_shadow_sampler(address::clamp_to_edge, filter::linear, compare_func::greater_equal);
fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_ShadowMapTexture [[ sampler (0) ]],
    sampler sampler_MainTex [[ sampler (1) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    depth2d<float, access::sample > _ShadowMapTexture [[ texture(1) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float3 u_xlat0;
    half3 u_xlat16_0;
    float4 u_xlat1;
    half3 u_xlat16_1;
    half3 u_xlat16_2;
    half3 u_xlat16_3;
    float3 u_xlat4;
    half u_xlat16_4;
    half u_xlat16_6;
    half u_xlat16_14;
    u_xlat0.xyz = input.TEXCOORD2.xyz + (-FGlobals.unity_ShadowFadeCenterAndType.xyz);
    u_xlat0.x = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat0.x = sqrt(u_xlat0.x);
    u_xlat4.xyz = (-input.TEXCOORD2.xyz) + FGlobals._WorldSpaceCameraPos.xyzx.xyz;
    u_xlat1.x = FGlobals.hlslcc_mtx4x4unity_MatrixV[0].z;
    u_xlat1.y = FGlobals.hlslcc_mtx4x4unity_MatrixV[1].z;
    u_xlat1.z = FGlobals.hlslcc_mtx4x4unity_MatrixV[2].z;
    u_xlat4.x = dot(u_xlat4.xyz, u_xlat1.xyz);
    u_xlat0.x = (-u_xlat4.x) + u_xlat0.x;
    u_xlat0.x = fma(FGlobals.unity_ShadowFadeCenterAndType.w, u_xlat0.x, u_xlat4.x);
    u_xlat0.x = fma(u_xlat0.x, float(FGlobals._LightShadowData.z), float(FGlobals._LightShadowData.w));
    u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
    u_xlat4.xyz = input.TEXCOORD2.yyy * FGlobals.hlslcc_mtx4x4unity_WorldToShadow[1].xyz;
    u_xlat4.xyz = fma(FGlobals.hlslcc_mtx4x4unity_WorldToShadow[0].xyz, input.TEXCOORD2.xxx, u_xlat4.xyz);
    u_xlat4.xyz = fma(FGlobals.hlslcc_mtx4x4unity_WorldToShadow[2].xyz, input.TEXCOORD2.zzz, u_xlat4.xyz);
    u_xlat4.xyz = u_xlat4.xyz + FGlobals.hlslcc_mtx4x4unity_WorldToShadow[3].xyz;
    u_xlat16_4 = _ShadowMapTexture.sample_compare(_mtl_xl_shadow_sampler, u_xlat4.xy, saturate(u_xlat4.z), level(0.0));
    u_xlat16_2.x = (-FGlobals._LightShadowData.x) + half(1.0);
    u_xlat16_2.x = fma(u_xlat16_4, u_xlat16_2.x, FGlobals._LightShadowData.x);
    u_xlat16_6 = (-u_xlat16_2.x) + half(1.0);
    u_xlat16_2.x = half(fma(u_xlat0.x, float(u_xlat16_6), float(u_xlat16_2.x)));
    u_xlat16_2.xyz = u_xlat16_2.xxx * FGlobals._LightColor0.xyz;
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    u_xlat16_2.xyz = u_xlat16_2.xyz * u_xlat16_0.xyz;
    u_xlat1.xyz = input.TEXCOORD1.xyz;
    u_xlat1.w = 1.0;
    u_xlat16_3.x = half(dot(float4(FGlobals.unity_SHAr), u_xlat1));
    u_xlat16_3.y = half(dot(float4(FGlobals.unity_SHAg), u_xlat1));
    u_xlat16_3.z = half(dot(float4(FGlobals.unity_SHAb), u_xlat1));
    u_xlat16_3.xyz = u_xlat16_3.xyz + input.TEXCOORD3.xyz;
    u_xlat16_3.xyz = max(u_xlat16_3.xyz, half3(0.0, 0.0, 0.0));
    u_xlat16_1.xyz = log2(u_xlat16_3.xyz);
    u_xlat16_1.xyz = u_xlat16_1.xyz * half3(0.416666657, 0.416666657, 0.416666657);
    u_xlat16_1.xyz = exp2(u_xlat16_1.xyz);
    u_xlat16_1.xyz = fma(u_xlat16_1.xyz, half3(1.05499995, 1.05499995, 1.05499995), half3(-0.0549999997, -0.0549999997, -0.0549999997));
    u_xlat16_1.xyz = max(u_xlat16_1.xyz, half3(0.0, 0.0, 0.0));
    u_xlat16_3.xyz = u_xlat16_0.xyz * u_xlat16_1.xyz;
    u_xlat16_14 = dot(input.TEXCOORD1.xyz, float3(FGlobals._WorldSpaceLightPos0.xyz));
    u_xlat16_14 = max(u_xlat16_14, half(0.0));
    output.SV_Target0.xyz = fma(u_xlat16_2.xyz, half3(u_xlat16_14), u_xlat16_3.xyz);
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL SHADOWS_SCREEN LIGHTPROBE_SH 
-- Hardware tier variant: Tier 3
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (240 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 32
  Matrix4x4 unity_WorldToObject at 96
  Matrix4x4 unity_MatrixVP at 160
  VectorHalf4 unity_SHBr at 0
  VectorHalf4 unity_SHBg at 8
  VectorHalf4 unity_SHBb at 16
  VectorHalf4 unity_SHC at 24
  Vector4 _MainTex_ST at 224
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    half4 unity_SHBr;
    half4 unity_SHBg;
    half4 unity_SHBb;
    half4 unity_SHC;
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    half3 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float4 TEXCOORD5 [[ user(TEXCOORD5) ]];
    float4 TEXCOORD6 [[ user(TEXCOORD6) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    half4 u_xlat16_0;
    float4 u_xlat1;
    half u_xlat16_2;
    half3 u_xlat16_3;
    float u_xlat12;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat12 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat12 = rsqrt(u_xlat12);
    u_xlat0.xyz = float3(u_xlat12) * u_xlat0.xyz;
    output.TEXCOORD1.xyz = u_xlat0.xyz;
    u_xlat16_2 = half(u_xlat0.y * u_xlat0.y);
    u_xlat16_2 = half(fma(u_xlat0.x, u_xlat0.x, (-float(u_xlat16_2))));
    u_xlat16_0 = half4(u_xlat0.yzzx * u_xlat0.xyzz);
    u_xlat16_3.x = dot(VGlobals.unity_SHBr, u_xlat16_0);
    u_xlat16_3.y = dot(VGlobals.unity_SHBg, u_xlat16_0);
    u_xlat16_3.z = dot(VGlobals.unity_SHBb, u_xlat16_0);
    output.TEXCOORD3.xyz = fma(VGlobals.unity_SHC.xyz, half3(u_xlat16_2), u_xlat16_3.xyz);
    output.TEXCOORD5 = float4(0.0, 0.0, 0.0, 0.0);
    output.TEXCOORD6 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Hardware tier variant: Tier 3
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0 sampler slot 1
Set 2D Texture "_ShadowMapTexture" to slot 1 sampler slot 0

Constant Buffer "FGlobals" (416 bytes) on slot 0 {
  Matrix4x4 unity_WorldToShadow[4] at 48
  Matrix4x4 unity_MatrixV at 336
  Vector3 _WorldSpaceCameraPos at 0
  VectorHalf4 _WorldSpaceLightPos0 at 16
  VectorHalf4 unity_SHAr at 24
  VectorHalf4 unity_SHAg at 32
  VectorHalf4 unity_SHAb at 40
  VectorHalf4 _LightShadowData at 304
  Vector4 unity_ShadowFadeCenterAndType at 320
  VectorHalf4 _LightColor0 at 400
  VectorHalf4 _Color at 408
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    float3 _WorldSpaceCameraPos;
    half4 _WorldSpaceLightPos0;
    half4 unity_SHAr;
    half4 unity_SHAg;
    half4 unity_SHAb;
    float4 hlslcc_mtx4x4unity_WorldToShadow[16];
    half4 _LightShadowData;
    float4 unity_ShadowFadeCenterAndType;
    float4 hlslcc_mtx4x4unity_MatrixV[4];
    half4 _LightColor0;
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]] ;
    half3 TEXCOORD3 [[ user(TEXCOORD3) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

constexpr sampler _mtl_xl_shadow_sampler(address::clamp_to_edge, filter::linear, compare_func::greater_equal);
fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_ShadowMapTexture [[ sampler (0) ]],
    sampler sampler_MainTex [[ sampler (1) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    depth2d<float, access::sample > _ShadowMapTexture [[ texture(1) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float3 u_xlat0;
    half3 u_xlat16_0;
    float4 u_xlat1;
    half3 u_xlat16_1;
    half3 u_xlat16_2;
    half3 u_xlat16_3;
    float3 u_xlat4;
    half u_xlat16_4;
    half u_xlat16_6;
    half u_xlat16_14;
    u_xlat0.xyz = input.TEXCOORD2.xyz + (-FGlobals.unity_ShadowFadeCenterAndType.xyz);
    u_xlat0.x = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat0.x = sqrt(u_xlat0.x);
    u_xlat4.xyz = (-input.TEXCOORD2.xyz) + FGlobals._WorldSpaceCameraPos.xyzx.xyz;
    u_xlat1.x = FGlobals.hlslcc_mtx4x4unity_MatrixV[0].z;
    u_xlat1.y = FGlobals.hlslcc_mtx4x4unity_MatrixV[1].z;
    u_xlat1.z = FGlobals.hlslcc_mtx4x4unity_MatrixV[2].z;
    u_xlat4.x = dot(u_xlat4.xyz, u_xlat1.xyz);
    u_xlat0.x = (-u_xlat4.x) + u_xlat0.x;
    u_xlat0.x = fma(FGlobals.unity_ShadowFadeCenterAndType.w, u_xlat0.x, u_xlat4.x);
    u_xlat0.x = fma(u_xlat0.x, float(FGlobals._LightShadowData.z), float(FGlobals._LightShadowData.w));
    u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
    u_xlat4.xyz = input.TEXCOORD2.yyy * FGlobals.hlslcc_mtx4x4unity_WorldToShadow[1].xyz;
    u_xlat4.xyz = fma(FGlobals.hlslcc_mtx4x4unity_WorldToShadow[0].xyz, input.TEXCOORD2.xxx, u_xlat4.xyz);
    u_xlat4.xyz = fma(FGlobals.hlslcc_mtx4x4unity_WorldToShadow[2].xyz, input.TEXCOORD2.zzz, u_xlat4.xyz);
    u_xlat4.xyz = u_xlat4.xyz + FGlobals.hlslcc_mtx4x4unity_WorldToShadow[3].xyz;
    u_xlat16_4 = _ShadowMapTexture.sample_compare(_mtl_xl_shadow_sampler, u_xlat4.xy, saturate(u_xlat4.z), level(0.0));
    u_xlat16_2.x = (-FGlobals._LightShadowData.x) + half(1.0);
    u_xlat16_2.x = fma(u_xlat16_4, u_xlat16_2.x, FGlobals._LightShadowData.x);
    u_xlat16_6 = (-u_xlat16_2.x) + half(1.0);
    u_xlat16_2.x = half(fma(u_xlat0.x, float(u_xlat16_6), float(u_xlat16_2.x)));
    u_xlat16_2.xyz = u_xlat16_2.xxx * FGlobals._LightColor0.xyz;
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    u_xlat16_2.xyz = u_xlat16_2.xyz * u_xlat16_0.xyz;
    u_xlat1.xyz = input.TEXCOORD1.xyz;
    u_xlat1.w = 1.0;
    u_xlat16_3.x = half(dot(float4(FGlobals.unity_SHAr), u_xlat1));
    u_xlat16_3.y = half(dot(float4(FGlobals.unity_SHAg), u_xlat1));
    u_xlat16_3.z = half(dot(float4(FGlobals.unity_SHAb), u_xlat1));
    u_xlat16_3.xyz = u_xlat16_3.xyz + input.TEXCOORD3.xyz;
    u_xlat16_3.xyz = max(u_xlat16_3.xyz, half3(0.0, 0.0, 0.0));
    u_xlat16_1.xyz = log2(u_xlat16_3.xyz);
    u_xlat16_1.xyz = u_xlat16_1.xyz * half3(0.416666657, 0.416666657, 0.416666657);
    u_xlat16_1.xyz = exp2(u_xlat16_1.xyz);
    u_xlat16_1.xyz = fma(u_xlat16_1.xyz, half3(1.05499995, 1.05499995, 1.05499995), half3(-0.0549999997, -0.0549999997, -0.0549999997));
    u_xlat16_1.xyz = max(u_xlat16_1.xyz, half3(0.0, 0.0, 0.0));
    u_xlat16_3.xyz = u_xlat16_0.xyz * u_xlat16_1.xyz;
    u_xlat16_14 = dot(input.TEXCOORD1.xyz, float3(FGlobals._WorldSpaceLightPos0.xyz));
    u_xlat16_14 = max(u_xlat16_14, half(0.0));
    output.SV_Target0.xyz = fma(u_xlat16_2.xyz, half3(u_xlat16_14), u_xlat16_3.xyz);
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL VERTEXLIGHT_ON 
-- Hardware tier variant: Tier 1
-- Vertex shader for "gles":
// Stats: 6 math, 1 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD5;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = normalize((_glesNormal * tmpvar_3));
  xlv_TEXCOORD2 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD5 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform mediump vec4 _WorldSpaceLightPos0;
uniform lowp vec4 _LightColor0;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  mediump vec3 tmpvar_2;
  lowp vec4 c_3;
  lowp vec3 tmpvar_4;
  lowp vec3 lightDir_5;
  mediump vec3 tmpvar_6;
  tmpvar_6 = _WorldSpaceLightPos0.xyz;
  lightDir_5 = tmpvar_6;
  tmpvar_4 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_7;
  tmpvar_7 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  tmpvar_1 = _LightColor0.xyz;
  tmpvar_2 = lightDir_5;
  lowp vec4 c_8;
  lowp vec4 c_9;
  lowp float diff_10;
  mediump float tmpvar_11;
  tmpvar_11 = max (0.0, dot (tmpvar_4, tmpvar_2));
  diff_10 = tmpvar_11;
  c_9.xyz = ((tmpvar_7.xyz * tmpvar_1) * diff_10);
  c_9.w = tmpvar_7.w;
  c_8.w = c_9.w;
  c_8.xyz = c_9.xyz;
  c_3.xyz = c_8.xyz;
  c_3.w = 1.0;
  gl_FragData[0] = c_3;
}


#endif


-- Fragment shader for "gles":
// No shader variant for this keyword set. The closest match will be used instead.

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL VERTEXLIGHT_ON 
-- Hardware tier variant: Tier 2
-- Vertex shader for "gles":
// Stats: 6 math, 1 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD5;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = normalize((_glesNormal * tmpvar_3));
  xlv_TEXCOORD2 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD5 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform mediump vec4 _WorldSpaceLightPos0;
uniform lowp vec4 _LightColor0;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  mediump vec3 tmpvar_2;
  lowp vec4 c_3;
  lowp vec3 tmpvar_4;
  lowp vec3 lightDir_5;
  mediump vec3 tmpvar_6;
  tmpvar_6 = _WorldSpaceLightPos0.xyz;
  lightDir_5 = tmpvar_6;
  tmpvar_4 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_7;
  tmpvar_7 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  tmpvar_1 = _LightColor0.xyz;
  tmpvar_2 = lightDir_5;
  lowp vec4 c_8;
  lowp vec4 c_9;
  lowp float diff_10;
  mediump float tmpvar_11;
  tmpvar_11 = max (0.0, dot (tmpvar_4, tmpvar_2));
  diff_10 = tmpvar_11;
  c_9.xyz = ((tmpvar_7.xyz * tmpvar_1) * diff_10);
  c_9.w = tmpvar_7.w;
  c_8.w = c_9.w;
  c_8.xyz = c_9.xyz;
  c_3.xyz = c_8.xyz;
  c_3.w = 1.0;
  gl_FragData[0] = c_3;
}


#endif


-- Fragment shader for "gles":
// No shader variant for this keyword set. The closest match will be used instead.

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL VERTEXLIGHT_ON 
-- Hardware tier variant: Tier 3
-- Vertex shader for "gles":
// Stats: 6 math, 1 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD5;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = normalize((_glesNormal * tmpvar_3));
  xlv_TEXCOORD2 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD5 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform mediump vec4 _WorldSpaceLightPos0;
uniform lowp vec4 _LightColor0;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  mediump vec3 tmpvar_2;
  lowp vec4 c_3;
  lowp vec3 tmpvar_4;
  lowp vec3 lightDir_5;
  mediump vec3 tmpvar_6;
  tmpvar_6 = _WorldSpaceLightPos0.xyz;
  lightDir_5 = tmpvar_6;
  tmpvar_4 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_7;
  tmpvar_7 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  tmpvar_1 = _LightColor0.xyz;
  tmpvar_2 = lightDir_5;
  lowp vec4 c_8;
  lowp vec4 c_9;
  lowp float diff_10;
  mediump float tmpvar_11;
  tmpvar_11 = max (0.0, dot (tmpvar_4, tmpvar_2));
  diff_10 = tmpvar_11;
  c_9.xyz = ((tmpvar_7.xyz * tmpvar_1) * diff_10);
  c_9.w = tmpvar_7.w;
  c_8.w = c_9.w;
  c_8.xyz = c_9.xyz;
  c_3.xyz = c_8.xyz;
  c_3.w = 1.0;
  gl_FragData[0] = c_3;
}


#endif


-- Fragment shader for "gles":
// No shader variant for this keyword set. The closest match will be used instead.

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL VERTEXLIGHT_ON 
-- Hardware tier variant: Tier 1
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (208 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
  Vector4 _MainTex_ST at 192
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD5 [[ user(TEXCOORD5) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float u_xlat6;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = rsqrt(u_xlat6);
    output.TEXCOORD1.xyz = float3(u_xlat6) * u_xlat0.xyz;
    output.TEXCOORD5 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Fragment shader for "gles":
// No shader variant for this keyword set. The closest match will be used instead.

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL VERTEXLIGHT_ON 
-- Hardware tier variant: Tier 2
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (208 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
  Vector4 _MainTex_ST at 192
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD5 [[ user(TEXCOORD5) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float u_xlat6;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = rsqrt(u_xlat6);
    output.TEXCOORD1.xyz = float3(u_xlat6) * u_xlat0.xyz;
    output.TEXCOORD5 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Fragment shader for "gles":
// No shader variant for this keyword set. The closest match will be used instead.

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL VERTEXLIGHT_ON 
-- Hardware tier variant: Tier 3
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (208 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
  Vector4 _MainTex_ST at 192
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD5 [[ user(TEXCOORD5) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float u_xlat6;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = rsqrt(u_xlat6);
    output.TEXCOORD1.xyz = float3(u_xlat6) * u_xlat0.xyz;
    output.TEXCOORD5 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Fragment shader for "gles":
// No shader variant for this keyword set. The closest match will be used instead.

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL LIGHTPROBE_SH VERTEXLIGHT_ON 
-- Hardware tier variant: Tier 1
-- Vertex shader for "gles":
// Stats: 8 math, 1 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp vec4 unity_4LightPosX0;
uniform highp vec4 unity_4LightPosY0;
uniform highp vec4 unity_4LightPosZ0;
uniform mediump vec4 unity_4LightAtten0;
uniform mediump vec4 unity_LightColor[8];
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying mediump vec3 xlv_TEXCOORD3;
varying highp vec4 xlv_TEXCOORD5;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  highp vec3 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex).xyz;
  highp mat3 tmpvar_5;
  tmpvar_5[0] = unity_WorldToObject[0].xyz;
  tmpvar_5[1] = unity_WorldToObject[1].xyz;
  tmpvar_5[2] = unity_WorldToObject[2].xyz;
  highp vec3 tmpvar_6;
  tmpvar_6 = normalize((_glesNormal * tmpvar_5));
  highp vec3 lightColor0_7;
  lightColor0_7 = unity_LightColor[0].xyz;
  highp vec3 lightColor1_8;
  lightColor1_8 = unity_LightColor[1].xyz;
  highp vec3 lightColor2_9;
  lightColor2_9 = unity_LightColor[2].xyz;
  highp vec3 lightColor3_10;
  lightColor3_10 = unity_LightColor[3].xyz;
  highp vec4 lightAttenSq_11;
  lightAttenSq_11 = unity_4LightAtten0;
  highp vec3 col_12;
  highp vec4 ndotl_13;
  highp vec4 lengthSq_14;
  highp vec4 tmpvar_15;
  tmpvar_15 = (unity_4LightPosX0 - tmpvar_4.x);
  highp vec4 tmpvar_16;
  tmpvar_16 = (unity_4LightPosY0 - tmpvar_4.y);
  highp vec4 tmpvar_17;
  tmpvar_17 = (unity_4LightPosZ0 - tmpvar_4.z);
  lengthSq_14 = (tmpvar_15 * tmpvar_15);
  lengthSq_14 = (lengthSq_14 + (tmpvar_16 * tmpvar_16));
  lengthSq_14 = (lengthSq_14 + (tmpvar_17 * tmpvar_17));
  highp vec4 tmpvar_18;
  tmpvar_18 = max (lengthSq_14, vec4(1e-06, 1e-06, 1e-06, 1e-06));
  lengthSq_14 = tmpvar_18;
  ndotl_13 = (tmpvar_15 * tmpvar_6.x);
  ndotl_13 = (ndotl_13 + (tmpvar_16 * tmpvar_6.y));
  ndotl_13 = (ndotl_13 + (tmpvar_17 * tmpvar_6.z));
  highp vec4 tmpvar_19;
  tmpvar_19 = max (vec4(0.0, 0.0, 0.0, 0.0), (ndotl_13 * inversesqrt(tmpvar_18)));
  ndotl_13 = tmpvar_19;
  highp vec4 tmpvar_20;
  tmpvar_20 = (tmpvar_19 * (1.0/((1.0 + 
    (tmpvar_18 * lightAttenSq_11)
  ))));
  col_12 = (lightColor0_7 * tmpvar_20.x);
  col_12 = (col_12 + (lightColor1_8 * tmpvar_20.y));
  col_12 = (col_12 + (lightColor2_9 * tmpvar_20.z));
  col_12 = (col_12 + (lightColor3_10 * tmpvar_20.w));
  tmpvar_1 = col_12;
  mediump vec3 normal_21;
  normal_21 = tmpvar_6;
  mediump vec3 ambient_22;
  mediump vec4 tmpvar_23;
  tmpvar_23.w = 1.0;
  tmpvar_23.xyz = normal_21;
  mediump vec3 res_24;
  mediump vec3 x_25;
  x_25.x = dot (unity_SHAr, tmpvar_23);
  x_25.y = dot (unity_SHAg, tmpvar_23);
  x_25.z = dot (unity_SHAb, tmpvar_23);
  mediump vec3 x1_26;
  mediump vec4 tmpvar_27;
  tmpvar_27 = (normal_21.xyzz * normal_21.yzzx);
  x1_26.x = dot (unity_SHBr, tmpvar_27);
  x1_26.y = dot (unity_SHBg, tmpvar_27);
  x1_26.z = dot (unity_SHBb, tmpvar_27);
  res_24 = (x_25 + (x1_26 + (unity_SHC.xyz * 
    ((normal_21.x * normal_21.x) - (normal_21.y * normal_21.y))
  )));
  mediump vec3 tmpvar_28;
  tmpvar_28 = max (((1.055 * 
    pow (max (res_24, vec3(0.0, 0.0, 0.0)), vec3(0.4166667, 0.4166667, 0.4166667))
  ) - 0.055), vec3(0.0, 0.0, 0.0));
  res_24 = tmpvar_28;
  ambient_22 = (tmpvar_1 + max (vec3(0.0, 0.0, 0.0), tmpvar_28));
  tmpvar_1 = ambient_22;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = tmpvar_6;
  xlv_TEXCOORD2 = tmpvar_4;
  xlv_TEXCOORD3 = ambient_22;
  xlv_TEXCOORD5 = tmpvar_2;
}


#endif
#ifdef FRAGMENT
uniform mediump vec4 _WorldSpaceLightPos0;
uniform lowp vec4 _LightColor0;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying mediump vec3 xlv_TEXCOORD3;
void main ()
{
  mediump vec3 tmpvar_1;
  mediump vec3 tmpvar_2;
  lowp vec4 c_3;
  lowp vec3 tmpvar_4;
  lowp vec3 lightDir_5;
  mediump vec3 tmpvar_6;
  tmpvar_6 = _WorldSpaceLightPos0.xyz;
  lightDir_5 = tmpvar_6;
  tmpvar_4 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_7;
  tmpvar_7 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  tmpvar_1 = _LightColor0.xyz;
  tmpvar_2 = lightDir_5;
  lowp vec4 c_8;
  lowp vec4 c_9;
  lowp float diff_10;
  mediump float tmpvar_11;
  tmpvar_11 = max (0.0, dot (tmpvar_4, tmpvar_2));
  diff_10 = tmpvar_11;
  c_9.xyz = ((tmpvar_7.xyz * tmpvar_1) * diff_10);
  c_9.w = tmpvar_7.w;
  c_8.w = c_9.w;
  c_8.xyz = (c_9.xyz + (tmpvar_7.xyz * xlv_TEXCOORD3));
  c_3.xyz = c_8.xyz;
  c_3.w = 1.0;
  gl_FragData[0] = c_3;
}


#endif


-- Fragment shader for "gles":
// No shader variant for this keyword set. The closest match will be used instead.

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL LIGHTPROBE_SH VERTEXLIGHT_ON 
-- Hardware tier variant: Tier 2
-- Vertex shader for "gles":
// Stats: 8 math, 1 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp vec4 unity_4LightPosX0;
uniform highp vec4 unity_4LightPosY0;
uniform highp vec4 unity_4LightPosZ0;
uniform mediump vec4 unity_4LightAtten0;
uniform mediump vec4 unity_LightColor[8];
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying mediump vec3 xlv_TEXCOORD3;
varying highp vec4 xlv_TEXCOORD5;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  highp vec3 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex).xyz;
  highp mat3 tmpvar_5;
  tmpvar_5[0] = unity_WorldToObject[0].xyz;
  tmpvar_5[1] = unity_WorldToObject[1].xyz;
  tmpvar_5[2] = unity_WorldToObject[2].xyz;
  highp vec3 tmpvar_6;
  tmpvar_6 = normalize((_glesNormal * tmpvar_5));
  highp vec3 lightColor0_7;
  lightColor0_7 = unity_LightColor[0].xyz;
  highp vec3 lightColor1_8;
  lightColor1_8 = unity_LightColor[1].xyz;
  highp vec3 lightColor2_9;
  lightColor2_9 = unity_LightColor[2].xyz;
  highp vec3 lightColor3_10;
  lightColor3_10 = unity_LightColor[3].xyz;
  highp vec4 lightAttenSq_11;
  lightAttenSq_11 = unity_4LightAtten0;
  highp vec3 col_12;
  highp vec4 ndotl_13;
  highp vec4 lengthSq_14;
  highp vec4 tmpvar_15;
  tmpvar_15 = (unity_4LightPosX0 - tmpvar_4.x);
  highp vec4 tmpvar_16;
  tmpvar_16 = (unity_4LightPosY0 - tmpvar_4.y);
  highp vec4 tmpvar_17;
  tmpvar_17 = (unity_4LightPosZ0 - tmpvar_4.z);
  lengthSq_14 = (tmpvar_15 * tmpvar_15);
  lengthSq_14 = (lengthSq_14 + (tmpvar_16 * tmpvar_16));
  lengthSq_14 = (lengthSq_14 + (tmpvar_17 * tmpvar_17));
  highp vec4 tmpvar_18;
  tmpvar_18 = max (lengthSq_14, vec4(1e-06, 1e-06, 1e-06, 1e-06));
  lengthSq_14 = tmpvar_18;
  ndotl_13 = (tmpvar_15 * tmpvar_6.x);
  ndotl_13 = (ndotl_13 + (tmpvar_16 * tmpvar_6.y));
  ndotl_13 = (ndotl_13 + (tmpvar_17 * tmpvar_6.z));
  highp vec4 tmpvar_19;
  tmpvar_19 = max (vec4(0.0, 0.0, 0.0, 0.0), (ndotl_13 * inversesqrt(tmpvar_18)));
  ndotl_13 = tmpvar_19;
  highp vec4 tmpvar_20;
  tmpvar_20 = (tmpvar_19 * (1.0/((1.0 + 
    (tmpvar_18 * lightAttenSq_11)
  ))));
  col_12 = (lightColor0_7 * tmpvar_20.x);
  col_12 = (col_12 + (lightColor1_8 * tmpvar_20.y));
  col_12 = (col_12 + (lightColor2_9 * tmpvar_20.z));
  col_12 = (col_12 + (lightColor3_10 * tmpvar_20.w));
  tmpvar_1 = col_12;
  mediump vec3 normal_21;
  normal_21 = tmpvar_6;
  mediump vec3 ambient_22;
  mediump vec4 tmpvar_23;
  tmpvar_23.w = 1.0;
  tmpvar_23.xyz = normal_21;
  mediump vec3 res_24;
  mediump vec3 x_25;
  x_25.x = dot (unity_SHAr, tmpvar_23);
  x_25.y = dot (unity_SHAg, tmpvar_23);
  x_25.z = dot (unity_SHAb, tmpvar_23);
  mediump vec3 x1_26;
  mediump vec4 tmpvar_27;
  tmpvar_27 = (normal_21.xyzz * normal_21.yzzx);
  x1_26.x = dot (unity_SHBr, tmpvar_27);
  x1_26.y = dot (unity_SHBg, tmpvar_27);
  x1_26.z = dot (unity_SHBb, tmpvar_27);
  res_24 = (x_25 + (x1_26 + (unity_SHC.xyz * 
    ((normal_21.x * normal_21.x) - (normal_21.y * normal_21.y))
  )));
  mediump vec3 tmpvar_28;
  tmpvar_28 = max (((1.055 * 
    pow (max (res_24, vec3(0.0, 0.0, 0.0)), vec3(0.4166667, 0.4166667, 0.4166667))
  ) - 0.055), vec3(0.0, 0.0, 0.0));
  res_24 = tmpvar_28;
  ambient_22 = (tmpvar_1 + max (vec3(0.0, 0.0, 0.0), tmpvar_28));
  tmpvar_1 = ambient_22;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = tmpvar_6;
  xlv_TEXCOORD2 = tmpvar_4;
  xlv_TEXCOORD3 = ambient_22;
  xlv_TEXCOORD5 = tmpvar_2;
}


#endif
#ifdef FRAGMENT
uniform mediump vec4 _WorldSpaceLightPos0;
uniform lowp vec4 _LightColor0;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying mediump vec3 xlv_TEXCOORD3;
void main ()
{
  mediump vec3 tmpvar_1;
  mediump vec3 tmpvar_2;
  lowp vec4 c_3;
  lowp vec3 tmpvar_4;
  lowp vec3 lightDir_5;
  mediump vec3 tmpvar_6;
  tmpvar_6 = _WorldSpaceLightPos0.xyz;
  lightDir_5 = tmpvar_6;
  tmpvar_4 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_7;
  tmpvar_7 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  tmpvar_1 = _LightColor0.xyz;
  tmpvar_2 = lightDir_5;
  lowp vec4 c_8;
  lowp vec4 c_9;
  lowp float diff_10;
  mediump float tmpvar_11;
  tmpvar_11 = max (0.0, dot (tmpvar_4, tmpvar_2));
  diff_10 = tmpvar_11;
  c_9.xyz = ((tmpvar_7.xyz * tmpvar_1) * diff_10);
  c_9.w = tmpvar_7.w;
  c_8.w = c_9.w;
  c_8.xyz = (c_9.xyz + (tmpvar_7.xyz * xlv_TEXCOORD3));
  c_3.xyz = c_8.xyz;
  c_3.w = 1.0;
  gl_FragData[0] = c_3;
}


#endif


-- Fragment shader for "gles":
// No shader variant for this keyword set. The closest match will be used instead.

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL LIGHTPROBE_SH VERTEXLIGHT_ON 
-- Hardware tier variant: Tier 3
-- Vertex shader for "gles":
// Stats: 8 math, 1 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp vec4 unity_4LightPosX0;
uniform highp vec4 unity_4LightPosY0;
uniform highp vec4 unity_4LightPosZ0;
uniform mediump vec4 unity_4LightAtten0;
uniform mediump vec4 unity_LightColor[8];
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying mediump vec3 xlv_TEXCOORD3;
varying highp vec4 xlv_TEXCOORD5;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  highp vec3 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex).xyz;
  highp mat3 tmpvar_5;
  tmpvar_5[0] = unity_WorldToObject[0].xyz;
  tmpvar_5[1] = unity_WorldToObject[1].xyz;
  tmpvar_5[2] = unity_WorldToObject[2].xyz;
  highp vec3 tmpvar_6;
  tmpvar_6 = normalize((_glesNormal * tmpvar_5));
  highp vec3 lightColor0_7;
  lightColor0_7 = unity_LightColor[0].xyz;
  highp vec3 lightColor1_8;
  lightColor1_8 = unity_LightColor[1].xyz;
  highp vec3 lightColor2_9;
  lightColor2_9 = unity_LightColor[2].xyz;
  highp vec3 lightColor3_10;
  lightColor3_10 = unity_LightColor[3].xyz;
  highp vec4 lightAttenSq_11;
  lightAttenSq_11 = unity_4LightAtten0;
  highp vec3 col_12;
  highp vec4 ndotl_13;
  highp vec4 lengthSq_14;
  highp vec4 tmpvar_15;
  tmpvar_15 = (unity_4LightPosX0 - tmpvar_4.x);
  highp vec4 tmpvar_16;
  tmpvar_16 = (unity_4LightPosY0 - tmpvar_4.y);
  highp vec4 tmpvar_17;
  tmpvar_17 = (unity_4LightPosZ0 - tmpvar_4.z);
  lengthSq_14 = (tmpvar_15 * tmpvar_15);
  lengthSq_14 = (lengthSq_14 + (tmpvar_16 * tmpvar_16));
  lengthSq_14 = (lengthSq_14 + (tmpvar_17 * tmpvar_17));
  highp vec4 tmpvar_18;
  tmpvar_18 = max (lengthSq_14, vec4(1e-06, 1e-06, 1e-06, 1e-06));
  lengthSq_14 = tmpvar_18;
  ndotl_13 = (tmpvar_15 * tmpvar_6.x);
  ndotl_13 = (ndotl_13 + (tmpvar_16 * tmpvar_6.y));
  ndotl_13 = (ndotl_13 + (tmpvar_17 * tmpvar_6.z));
  highp vec4 tmpvar_19;
  tmpvar_19 = max (vec4(0.0, 0.0, 0.0, 0.0), (ndotl_13 * inversesqrt(tmpvar_18)));
  ndotl_13 = tmpvar_19;
  highp vec4 tmpvar_20;
  tmpvar_20 = (tmpvar_19 * (1.0/((1.0 + 
    (tmpvar_18 * lightAttenSq_11)
  ))));
  col_12 = (lightColor0_7 * tmpvar_20.x);
  col_12 = (col_12 + (lightColor1_8 * tmpvar_20.y));
  col_12 = (col_12 + (lightColor2_9 * tmpvar_20.z));
  col_12 = (col_12 + (lightColor3_10 * tmpvar_20.w));
  tmpvar_1 = col_12;
  mediump vec3 normal_21;
  normal_21 = tmpvar_6;
  mediump vec3 ambient_22;
  mediump vec4 tmpvar_23;
  tmpvar_23.w = 1.0;
  tmpvar_23.xyz = normal_21;
  mediump vec3 res_24;
  mediump vec3 x_25;
  x_25.x = dot (unity_SHAr, tmpvar_23);
  x_25.y = dot (unity_SHAg, tmpvar_23);
  x_25.z = dot (unity_SHAb, tmpvar_23);
  mediump vec3 x1_26;
  mediump vec4 tmpvar_27;
  tmpvar_27 = (normal_21.xyzz * normal_21.yzzx);
  x1_26.x = dot (unity_SHBr, tmpvar_27);
  x1_26.y = dot (unity_SHBg, tmpvar_27);
  x1_26.z = dot (unity_SHBb, tmpvar_27);
  res_24 = (x_25 + (x1_26 + (unity_SHC.xyz * 
    ((normal_21.x * normal_21.x) - (normal_21.y * normal_21.y))
  )));
  mediump vec3 tmpvar_28;
  tmpvar_28 = max (((1.055 * 
    pow (max (res_24, vec3(0.0, 0.0, 0.0)), vec3(0.4166667, 0.4166667, 0.4166667))
  ) - 0.055), vec3(0.0, 0.0, 0.0));
  res_24 = tmpvar_28;
  ambient_22 = (tmpvar_1 + max (vec3(0.0, 0.0, 0.0), tmpvar_28));
  tmpvar_1 = ambient_22;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = tmpvar_6;
  xlv_TEXCOORD2 = tmpvar_4;
  xlv_TEXCOORD3 = ambient_22;
  xlv_TEXCOORD5 = tmpvar_2;
}


#endif
#ifdef FRAGMENT
uniform mediump vec4 _WorldSpaceLightPos0;
uniform lowp vec4 _LightColor0;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying mediump vec3 xlv_TEXCOORD3;
void main ()
{
  mediump vec3 tmpvar_1;
  mediump vec3 tmpvar_2;
  lowp vec4 c_3;
  lowp vec3 tmpvar_4;
  lowp vec3 lightDir_5;
  mediump vec3 tmpvar_6;
  tmpvar_6 = _WorldSpaceLightPos0.xyz;
  lightDir_5 = tmpvar_6;
  tmpvar_4 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_7;
  tmpvar_7 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  tmpvar_1 = _LightColor0.xyz;
  tmpvar_2 = lightDir_5;
  lowp vec4 c_8;
  lowp vec4 c_9;
  lowp float diff_10;
  mediump float tmpvar_11;
  tmpvar_11 = max (0.0, dot (tmpvar_4, tmpvar_2));
  diff_10 = tmpvar_11;
  c_9.xyz = ((tmpvar_7.xyz * tmpvar_1) * diff_10);
  c_9.w = tmpvar_7.w;
  c_8.w = c_9.w;
  c_8.xyz = (c_9.xyz + (tmpvar_7.xyz * xlv_TEXCOORD3));
  c_3.xyz = c_8.xyz;
  c_3.w = 1.0;
  gl_FragData[0] = c_3;
}


#endif


-- Fragment shader for "gles":
// No shader variant for this keyword set. The closest match will be used instead.

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL LIGHTPROBE_SH VERTEXLIGHT_ON 
-- Hardware tier variant: Tier 1
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (384 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 176
  Matrix4x4 unity_WorldToObject at 240
  Matrix4x4 unity_MatrixVP at 304
  Vector4 unity_4LightPosX0 at 0
  Vector4 unity_4LightPosY0 at 16
  Vector4 unity_4LightPosZ0 at 32
  VectorHalf4 unity_4LightAtten0 at 48
  VectorHalf4 unity_LightColor[8] at 56
  VectorHalf4 unity_SHAr at 120
  VectorHalf4 unity_SHAg at 128
  VectorHalf4 unity_SHAb at 136
  VectorHalf4 unity_SHBr at 144
  VectorHalf4 unity_SHBg at 152
  VectorHalf4 unity_SHBb at 160
  VectorHalf4 unity_SHC at 168
  Vector4 _MainTex_ST at 368
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 unity_4LightPosX0;
    float4 unity_4LightPosY0;
    float4 unity_4LightPosZ0;
    half4 unity_4LightAtten0;
    half4 unity_LightColor[8];
    half4 unity_SHAr;
    half4 unity_SHAg;
    half4 unity_SHAb;
    half4 unity_SHBr;
    half4 unity_SHBg;
    half4 unity_SHBb;
    half4 unity_SHC;
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    half3 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float4 TEXCOORD5 [[ user(TEXCOORD5) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float4 u_xlat2;
    half4 u_xlat16_2;
    float4 u_xlat3;
    float4 u_xlat4;
    half3 u_xlat16_5;
    half3 u_xlat16_6;
    float u_xlat21;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat0.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat2 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat2);
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat2);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat2);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat1.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat1.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat1.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat21 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat21 = rsqrt(u_xlat21);
    u_xlat1.xyz = float3(u_xlat21) * u_xlat1.xyz;
    output.TEXCOORD1.xyz = u_xlat1.xyz;
    output.TEXCOORD2.xyz = u_xlat0.xyz;
    u_xlat2 = (-u_xlat0.xxxx) + VGlobals.unity_4LightPosX0;
    u_xlat3 = (-u_xlat0.yyyy) + VGlobals.unity_4LightPosY0;
    u_xlat0 = (-u_xlat0.zzzz) + VGlobals.unity_4LightPosZ0;
    u_xlat4 = u_xlat1.yyyy * u_xlat3;
    u_xlat3 = u_xlat3 * u_xlat3;
    u_xlat3 = fma(u_xlat2, u_xlat2, u_xlat3);
    u_xlat2 = fma(u_xlat2, u_xlat1.xxxx, u_xlat4);
    u_xlat2 = fma(u_xlat0, u_xlat1.zzzz, u_xlat2);
    u_xlat0 = fma(u_xlat0, u_xlat0, u_xlat3);
    u_xlat0 = max(u_xlat0, float4(9.99999997e-07, 9.99999997e-07, 9.99999997e-07, 9.99999997e-07));
    u_xlat3 = rsqrt(u_xlat0);
    u_xlat0 = fma(u_xlat0, float4(VGlobals.unity_4LightAtten0), float4(1.0, 1.0, 1.0, 1.0));
    u_xlat0 = float4(1.0, 1.0, 1.0, 1.0) / u_xlat0;
    u_xlat2 = u_xlat2 * u_xlat3;
    u_xlat2 = max(u_xlat2, float4(0.0, 0.0, 0.0, 0.0));
    u_xlat0 = u_xlat0 * u_xlat2;
    u_xlat2.xyz = u_xlat0.yyy * float3(VGlobals.unity_LightColor[1].xyz);
    u_xlat2.xyz = fma(float3(VGlobals.unity_LightColor[0].xyz), u_xlat0.xxx, u_xlat2.xyz);
    u_xlat0.xyz = fma(float3(VGlobals.unity_LightColor[2].xyz), u_xlat0.zzz, u_xlat2.xyz);
    u_xlat0.xyz = fma(float3(VGlobals.unity_LightColor[3].xyz), u_xlat0.www, u_xlat0.xyz);
    u_xlat16_5.x = half(u_xlat1.y * u_xlat1.y);
    u_xlat16_5.x = half(fma(u_xlat1.x, u_xlat1.x, (-float(u_xlat16_5.x))));
    u_xlat16_2 = half4(u_xlat1.yzzx * u_xlat1.xyzz);
    u_xlat16_6.x = dot(VGlobals.unity_SHBr, u_xlat16_2);
    u_xlat16_6.y = dot(VGlobals.unity_SHBg, u_xlat16_2);
    u_xlat16_6.z = dot(VGlobals.unity_SHBb, u_xlat16_2);
    u_xlat16_5.xyz = fma(VGlobals.unity_SHC.xyz, u_xlat16_5.xxx, u_xlat16_6.xyz);
    u_xlat1.w = 1.0;
    u_xlat16_6.x = half(dot(float4(VGlobals.unity_SHAr), u_xlat1));
    u_xlat16_6.y = half(dot(float4(VGlobals.unity_SHAg), u_xlat1));
    u_xlat16_6.z = half(dot(float4(VGlobals.unity_SHAb), u_xlat1));
    u_xlat16_5.xyz = u_xlat16_5.xyz + u_xlat16_6.xyz;
    u_xlat16_5.xyz = max(u_xlat16_5.xyz, half3(0.0, 0.0, 0.0));
    u_xlat1.xyz = log2(float3(u_xlat16_5.xyz));
    u_xlat1.xyz = u_xlat1.xyz * float3(0.416666657, 0.416666657, 0.416666657);
    u_xlat1.xyz = exp2(u_xlat1.xyz);
    u_xlat1.xyz = fma(u_xlat1.xyz, float3(1.05499995, 1.05499995, 1.05499995), float3(-0.0549999997, -0.0549999997, -0.0549999997));
    u_xlat1.xyz = max(u_xlat1.xyz, float3(0.0, 0.0, 0.0));
    output.TEXCOORD3.xyz = half3(u_xlat0.xyz + u_xlat1.xyz);
    output.TEXCOORD5 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Fragment shader for "gles":
// No shader variant for this keyword set. The closest match will be used instead.

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL LIGHTPROBE_SH VERTEXLIGHT_ON 
-- Hardware tier variant: Tier 2
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (384 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 176
  Matrix4x4 unity_WorldToObject at 240
  Matrix4x4 unity_MatrixVP at 304
  Vector4 unity_4LightPosX0 at 0
  Vector4 unity_4LightPosY0 at 16
  Vector4 unity_4LightPosZ0 at 32
  VectorHalf4 unity_4LightAtten0 at 48
  VectorHalf4 unity_LightColor[8] at 56
  VectorHalf4 unity_SHAr at 120
  VectorHalf4 unity_SHAg at 128
  VectorHalf4 unity_SHAb at 136
  VectorHalf4 unity_SHBr at 144
  VectorHalf4 unity_SHBg at 152
  VectorHalf4 unity_SHBb at 160
  VectorHalf4 unity_SHC at 168
  Vector4 _MainTex_ST at 368
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 unity_4LightPosX0;
    float4 unity_4LightPosY0;
    float4 unity_4LightPosZ0;
    half4 unity_4LightAtten0;
    half4 unity_LightColor[8];
    half4 unity_SHAr;
    half4 unity_SHAg;
    half4 unity_SHAb;
    half4 unity_SHBr;
    half4 unity_SHBg;
    half4 unity_SHBb;
    half4 unity_SHC;
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    half3 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float4 TEXCOORD5 [[ user(TEXCOORD5) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float4 u_xlat2;
    half4 u_xlat16_2;
    float4 u_xlat3;
    float4 u_xlat4;
    half3 u_xlat16_5;
    half3 u_xlat16_6;
    float u_xlat21;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat0.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat2 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat2);
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat2);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat2);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat1.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat1.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat1.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat21 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat21 = rsqrt(u_xlat21);
    u_xlat1.xyz = float3(u_xlat21) * u_xlat1.xyz;
    output.TEXCOORD1.xyz = u_xlat1.xyz;
    output.TEXCOORD2.xyz = u_xlat0.xyz;
    u_xlat2 = (-u_xlat0.xxxx) + VGlobals.unity_4LightPosX0;
    u_xlat3 = (-u_xlat0.yyyy) + VGlobals.unity_4LightPosY0;
    u_xlat0 = (-u_xlat0.zzzz) + VGlobals.unity_4LightPosZ0;
    u_xlat4 = u_xlat1.yyyy * u_xlat3;
    u_xlat3 = u_xlat3 * u_xlat3;
    u_xlat3 = fma(u_xlat2, u_xlat2, u_xlat3);
    u_xlat2 = fma(u_xlat2, u_xlat1.xxxx, u_xlat4);
    u_xlat2 = fma(u_xlat0, u_xlat1.zzzz, u_xlat2);
    u_xlat0 = fma(u_xlat0, u_xlat0, u_xlat3);
    u_xlat0 = max(u_xlat0, float4(9.99999997e-07, 9.99999997e-07, 9.99999997e-07, 9.99999997e-07));
    u_xlat3 = rsqrt(u_xlat0);
    u_xlat0 = fma(u_xlat0, float4(VGlobals.unity_4LightAtten0), float4(1.0, 1.0, 1.0, 1.0));
    u_xlat0 = float4(1.0, 1.0, 1.0, 1.0) / u_xlat0;
    u_xlat2 = u_xlat2 * u_xlat3;
    u_xlat2 = max(u_xlat2, float4(0.0, 0.0, 0.0, 0.0));
    u_xlat0 = u_xlat0 * u_xlat2;
    u_xlat2.xyz = u_xlat0.yyy * float3(VGlobals.unity_LightColor[1].xyz);
    u_xlat2.xyz = fma(float3(VGlobals.unity_LightColor[0].xyz), u_xlat0.xxx, u_xlat2.xyz);
    u_xlat0.xyz = fma(float3(VGlobals.unity_LightColor[2].xyz), u_xlat0.zzz, u_xlat2.xyz);
    u_xlat0.xyz = fma(float3(VGlobals.unity_LightColor[3].xyz), u_xlat0.www, u_xlat0.xyz);
    u_xlat16_5.x = half(u_xlat1.y * u_xlat1.y);
    u_xlat16_5.x = half(fma(u_xlat1.x, u_xlat1.x, (-float(u_xlat16_5.x))));
    u_xlat16_2 = half4(u_xlat1.yzzx * u_xlat1.xyzz);
    u_xlat16_6.x = dot(VGlobals.unity_SHBr, u_xlat16_2);
    u_xlat16_6.y = dot(VGlobals.unity_SHBg, u_xlat16_2);
    u_xlat16_6.z = dot(VGlobals.unity_SHBb, u_xlat16_2);
    u_xlat16_5.xyz = fma(VGlobals.unity_SHC.xyz, u_xlat16_5.xxx, u_xlat16_6.xyz);
    u_xlat1.w = 1.0;
    u_xlat16_6.x = half(dot(float4(VGlobals.unity_SHAr), u_xlat1));
    u_xlat16_6.y = half(dot(float4(VGlobals.unity_SHAg), u_xlat1));
    u_xlat16_6.z = half(dot(float4(VGlobals.unity_SHAb), u_xlat1));
    u_xlat16_5.xyz = u_xlat16_5.xyz + u_xlat16_6.xyz;
    u_xlat16_5.xyz = max(u_xlat16_5.xyz, half3(0.0, 0.0, 0.0));
    u_xlat1.xyz = log2(float3(u_xlat16_5.xyz));
    u_xlat1.xyz = u_xlat1.xyz * float3(0.416666657, 0.416666657, 0.416666657);
    u_xlat1.xyz = exp2(u_xlat1.xyz);
    u_xlat1.xyz = fma(u_xlat1.xyz, float3(1.05499995, 1.05499995, 1.05499995), float3(-0.0549999997, -0.0549999997, -0.0549999997));
    u_xlat1.xyz = max(u_xlat1.xyz, float3(0.0, 0.0, 0.0));
    output.TEXCOORD3.xyz = half3(u_xlat0.xyz + u_xlat1.xyz);
    output.TEXCOORD5 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Fragment shader for "gles":
// No shader variant for this keyword set. The closest match will be used instead.

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL LIGHTPROBE_SH VERTEXLIGHT_ON 
-- Hardware tier variant: Tier 3
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (384 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 176
  Matrix4x4 unity_WorldToObject at 240
  Matrix4x4 unity_MatrixVP at 304
  Vector4 unity_4LightPosX0 at 0
  Vector4 unity_4LightPosY0 at 16
  Vector4 unity_4LightPosZ0 at 32
  VectorHalf4 unity_4LightAtten0 at 48
  VectorHalf4 unity_LightColor[8] at 56
  VectorHalf4 unity_SHAr at 120
  VectorHalf4 unity_SHAg at 128
  VectorHalf4 unity_SHAb at 136
  VectorHalf4 unity_SHBr at 144
  VectorHalf4 unity_SHBg at 152
  VectorHalf4 unity_SHBb at 160
  VectorHalf4 unity_SHC at 168
  Vector4 _MainTex_ST at 368
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 unity_4LightPosX0;
    float4 unity_4LightPosY0;
    float4 unity_4LightPosZ0;
    half4 unity_4LightAtten0;
    half4 unity_LightColor[8];
    half4 unity_SHAr;
    half4 unity_SHAg;
    half4 unity_SHAb;
    half4 unity_SHBr;
    half4 unity_SHBg;
    half4 unity_SHBb;
    half4 unity_SHC;
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    half3 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float4 TEXCOORD5 [[ user(TEXCOORD5) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float4 u_xlat2;
    half4 u_xlat16_2;
    float4 u_xlat3;
    float4 u_xlat4;
    half3 u_xlat16_5;
    half3 u_xlat16_6;
    float u_xlat21;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat0.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat2 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat2);
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat2);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat2);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat1.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat1.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat1.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat21 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat21 = rsqrt(u_xlat21);
    u_xlat1.xyz = float3(u_xlat21) * u_xlat1.xyz;
    output.TEXCOORD1.xyz = u_xlat1.xyz;
    output.TEXCOORD2.xyz = u_xlat0.xyz;
    u_xlat2 = (-u_xlat0.xxxx) + VGlobals.unity_4LightPosX0;
    u_xlat3 = (-u_xlat0.yyyy) + VGlobals.unity_4LightPosY0;
    u_xlat0 = (-u_xlat0.zzzz) + VGlobals.unity_4LightPosZ0;
    u_xlat4 = u_xlat1.yyyy * u_xlat3;
    u_xlat3 = u_xlat3 * u_xlat3;
    u_xlat3 = fma(u_xlat2, u_xlat2, u_xlat3);
    u_xlat2 = fma(u_xlat2, u_xlat1.xxxx, u_xlat4);
    u_xlat2 = fma(u_xlat0, u_xlat1.zzzz, u_xlat2);
    u_xlat0 = fma(u_xlat0, u_xlat0, u_xlat3);
    u_xlat0 = max(u_xlat0, float4(9.99999997e-07, 9.99999997e-07, 9.99999997e-07, 9.99999997e-07));
    u_xlat3 = rsqrt(u_xlat0);
    u_xlat0 = fma(u_xlat0, float4(VGlobals.unity_4LightAtten0), float4(1.0, 1.0, 1.0, 1.0));
    u_xlat0 = float4(1.0, 1.0, 1.0, 1.0) / u_xlat0;
    u_xlat2 = u_xlat2 * u_xlat3;
    u_xlat2 = max(u_xlat2, float4(0.0, 0.0, 0.0, 0.0));
    u_xlat0 = u_xlat0 * u_xlat2;
    u_xlat2.xyz = u_xlat0.yyy * float3(VGlobals.unity_LightColor[1].xyz);
    u_xlat2.xyz = fma(float3(VGlobals.unity_LightColor[0].xyz), u_xlat0.xxx, u_xlat2.xyz);
    u_xlat0.xyz = fma(float3(VGlobals.unity_LightColor[2].xyz), u_xlat0.zzz, u_xlat2.xyz);
    u_xlat0.xyz = fma(float3(VGlobals.unity_LightColor[3].xyz), u_xlat0.www, u_xlat0.xyz);
    u_xlat16_5.x = half(u_xlat1.y * u_xlat1.y);
    u_xlat16_5.x = half(fma(u_xlat1.x, u_xlat1.x, (-float(u_xlat16_5.x))));
    u_xlat16_2 = half4(u_xlat1.yzzx * u_xlat1.xyzz);
    u_xlat16_6.x = dot(VGlobals.unity_SHBr, u_xlat16_2);
    u_xlat16_6.y = dot(VGlobals.unity_SHBg, u_xlat16_2);
    u_xlat16_6.z = dot(VGlobals.unity_SHBb, u_xlat16_2);
    u_xlat16_5.xyz = fma(VGlobals.unity_SHC.xyz, u_xlat16_5.xxx, u_xlat16_6.xyz);
    u_xlat1.w = 1.0;
    u_xlat16_6.x = half(dot(float4(VGlobals.unity_SHAr), u_xlat1));
    u_xlat16_6.y = half(dot(float4(VGlobals.unity_SHAg), u_xlat1));
    u_xlat16_6.z = half(dot(float4(VGlobals.unity_SHAb), u_xlat1));
    u_xlat16_5.xyz = u_xlat16_5.xyz + u_xlat16_6.xyz;
    u_xlat16_5.xyz = max(u_xlat16_5.xyz, half3(0.0, 0.0, 0.0));
    u_xlat1.xyz = log2(float3(u_xlat16_5.xyz));
    u_xlat1.xyz = u_xlat1.xyz * float3(0.416666657, 0.416666657, 0.416666657);
    u_xlat1.xyz = exp2(u_xlat1.xyz);
    u_xlat1.xyz = fma(u_xlat1.xyz, float3(1.05499995, 1.05499995, 1.05499995), float3(-0.0549999997, -0.0549999997, -0.0549999997));
    u_xlat1.xyz = max(u_xlat1.xyz, float3(0.0, 0.0, 0.0));
    output.TEXCOORD3.xyz = half3(u_xlat0.xyz + u_xlat1.xyz);
    output.TEXCOORD5 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Fragment shader for "gles":
// No shader variant for this keyword set. The closest match will be used instead.

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL SHADOWS_SCREEN VERTEXLIGHT_ON 
-- Hardware tier variant: Tier 1
-- Vertex shader for "gles":
// Stats: 22 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
#extension GL_EXT_shadow_samplers : enable
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD5;
varying highp vec4 xlv_TEXCOORD6;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_4;
  tmpvar_4[0] = unity_WorldToObject[0].xyz;
  tmpvar_4[1] = unity_WorldToObject[1].xyz;
  tmpvar_4[2] = unity_WorldToObject[2].xyz;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = normalize((_glesNormal * tmpvar_4));
  xlv_TEXCOORD2 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD5 = tmpvar_1;
  xlv_TEXCOORD6 = tmpvar_2;
}


#endif
#ifdef FRAGMENT
#extension GL_EXT_shadow_samplers : enable
uniform highp vec3 _WorldSpaceCameraPos;
uniform mediump vec4 _WorldSpaceLightPos0;
uniform highp mat4 unity_WorldToShadow[4];
uniform mediump vec4 _LightShadowData;
uniform highp vec4 unity_ShadowFadeCenterAndType;
uniform highp mat4 unity_MatrixV;
uniform lowp vec4 _LightColor0;
uniform lowp sampler2DShadow _ShadowMapTexture;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
void main ()
{
  mediump float tmpvar_1;
  mediump vec3 tmpvar_2;
  mediump vec3 tmpvar_3;
  lowp vec4 c_4;
  lowp float atten_5;
  lowp vec3 tmpvar_6;
  lowp vec3 lightDir_7;
  mediump vec3 tmpvar_8;
  tmpvar_8 = _WorldSpaceLightPos0.xyz;
  lightDir_7 = tmpvar_8;
  tmpvar_6 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_9;
  tmpvar_9 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  mediump float realtimeShadowAttenuation_10;
  highp vec4 v_11;
  v_11.x = unity_MatrixV[0].z;
  v_11.y = unity_MatrixV[1].z;
  v_11.z = unity_MatrixV[2].z;
  v_11.w = unity_MatrixV[3].z;
  highp vec3 tmpvar_12;
  tmpvar_12 = (xlv_TEXCOORD2 - unity_ShadowFadeCenterAndType.xyz);
  mediump float tmpvar_13;
  highp float tmpvar_14;
  tmpvar_14 = clamp (((
    mix (dot ((_WorldSpaceCameraPos - xlv_TEXCOORD2), v_11.xyz), sqrt(dot (tmpvar_12, tmpvar_12)), unity_ShadowFadeCenterAndType.w)
   * _LightShadowData.z) + _LightShadowData.w), 0.0, 1.0);
  tmpvar_13 = tmpvar_14;
  highp vec4 tmpvar_15;
  tmpvar_15.w = 1.0;
  tmpvar_15.xyz = xlv_TEXCOORD2;
  lowp float shadow_16;
  highp vec3 coord_17;
  coord_17 = (unity_WorldToShadow[0] * tmpvar_15).xyz;
  shadow_16 = (_LightShadowData.x + (shadow2DEXT (_ShadowMapTexture, coord_17) * (1.0 - _LightShadowData.x)));
  realtimeShadowAttenuation_10 = shadow_16;
  mediump float tmpvar_18;
  tmpvar_18 = mix (realtimeShadowAttenuation_10, 1.0, tmpvar_13);
  atten_5 = tmpvar_18;
  tmpvar_2 = _LightColor0.xyz;
  tmpvar_3 = lightDir_7;
  tmpvar_1 = atten_5;
  mediump vec3 tmpvar_19;
  tmpvar_19 = (tmpvar_2 * tmpvar_1);
  tmpvar_2 = tmpvar_19;
  lowp vec4 c_20;
  lowp vec4 c_21;
  lowp float diff_22;
  mediump float tmpvar_23;
  tmpvar_23 = max (0.0, dot (tmpvar_6, tmpvar_3));
  diff_22 = tmpvar_23;
  c_21.xyz = ((tmpvar_9.xyz * tmpvar_19) * diff_22);
  c_21.w = tmpvar_9.w;
  c_20.w = c_21.w;
  c_20.xyz = c_21.xyz;
  c_4.xyz = c_20.xyz;
  c_4.w = 1.0;
  gl_FragData[0] = c_4;
}


#endif


-- Fragment shader for "gles":
// No shader variant for this keyword set. The closest match will be used instead.

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL SHADOWS_SCREEN VERTEXLIGHT_ON 
-- Hardware tier variant: Tier 2
-- Vertex shader for "gles":
// Stats: 22 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
#extension GL_EXT_shadow_samplers : enable
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD5;
varying highp vec4 xlv_TEXCOORD6;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_4;
  tmpvar_4[0] = unity_WorldToObject[0].xyz;
  tmpvar_4[1] = unity_WorldToObject[1].xyz;
  tmpvar_4[2] = unity_WorldToObject[2].xyz;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = normalize((_glesNormal * tmpvar_4));
  xlv_TEXCOORD2 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD5 = tmpvar_1;
  xlv_TEXCOORD6 = tmpvar_2;
}


#endif
#ifdef FRAGMENT
#extension GL_EXT_shadow_samplers : enable
uniform highp vec3 _WorldSpaceCameraPos;
uniform mediump vec4 _WorldSpaceLightPos0;
uniform highp mat4 unity_WorldToShadow[4];
uniform mediump vec4 _LightShadowData;
uniform highp vec4 unity_ShadowFadeCenterAndType;
uniform highp mat4 unity_MatrixV;
uniform lowp vec4 _LightColor0;
uniform lowp sampler2DShadow _ShadowMapTexture;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
void main ()
{
  mediump float tmpvar_1;
  mediump vec3 tmpvar_2;
  mediump vec3 tmpvar_3;
  lowp vec4 c_4;
  lowp float atten_5;
  lowp vec3 tmpvar_6;
  lowp vec3 lightDir_7;
  mediump vec3 tmpvar_8;
  tmpvar_8 = _WorldSpaceLightPos0.xyz;
  lightDir_7 = tmpvar_8;
  tmpvar_6 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_9;
  tmpvar_9 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  mediump float realtimeShadowAttenuation_10;
  highp vec4 v_11;
  v_11.x = unity_MatrixV[0].z;
  v_11.y = unity_MatrixV[1].z;
  v_11.z = unity_MatrixV[2].z;
  v_11.w = unity_MatrixV[3].z;
  highp vec3 tmpvar_12;
  tmpvar_12 = (xlv_TEXCOORD2 - unity_ShadowFadeCenterAndType.xyz);
  mediump float tmpvar_13;
  highp float tmpvar_14;
  tmpvar_14 = clamp (((
    mix (dot ((_WorldSpaceCameraPos - xlv_TEXCOORD2), v_11.xyz), sqrt(dot (tmpvar_12, tmpvar_12)), unity_ShadowFadeCenterAndType.w)
   * _LightShadowData.z) + _LightShadowData.w), 0.0, 1.0);
  tmpvar_13 = tmpvar_14;
  highp vec4 tmpvar_15;
  tmpvar_15.w = 1.0;
  tmpvar_15.xyz = xlv_TEXCOORD2;
  lowp float shadow_16;
  highp vec3 coord_17;
  coord_17 = (unity_WorldToShadow[0] * tmpvar_15).xyz;
  shadow_16 = (_LightShadowData.x + (shadow2DEXT (_ShadowMapTexture, coord_17) * (1.0 - _LightShadowData.x)));
  realtimeShadowAttenuation_10 = shadow_16;
  mediump float tmpvar_18;
  tmpvar_18 = mix (realtimeShadowAttenuation_10, 1.0, tmpvar_13);
  atten_5 = tmpvar_18;
  tmpvar_2 = _LightColor0.xyz;
  tmpvar_3 = lightDir_7;
  tmpvar_1 = atten_5;
  mediump vec3 tmpvar_19;
  tmpvar_19 = (tmpvar_2 * tmpvar_1);
  tmpvar_2 = tmpvar_19;
  lowp vec4 c_20;
  lowp vec4 c_21;
  lowp float diff_22;
  mediump float tmpvar_23;
  tmpvar_23 = max (0.0, dot (tmpvar_6, tmpvar_3));
  diff_22 = tmpvar_23;
  c_21.xyz = ((tmpvar_9.xyz * tmpvar_19) * diff_22);
  c_21.w = tmpvar_9.w;
  c_20.w = c_21.w;
  c_20.xyz = c_21.xyz;
  c_4.xyz = c_20.xyz;
  c_4.w = 1.0;
  gl_FragData[0] = c_4;
}


#endif


-- Fragment shader for "gles":
// No shader variant for this keyword set. The closest match will be used instead.

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL SHADOWS_SCREEN VERTEXLIGHT_ON 
-- Hardware tier variant: Tier 3
-- Vertex shader for "gles":
// Stats: 22 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
#extension GL_EXT_shadow_samplers : enable
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD5;
varying highp vec4 xlv_TEXCOORD6;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_4;
  tmpvar_4[0] = unity_WorldToObject[0].xyz;
  tmpvar_4[1] = unity_WorldToObject[1].xyz;
  tmpvar_4[2] = unity_WorldToObject[2].xyz;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = normalize((_glesNormal * tmpvar_4));
  xlv_TEXCOORD2 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD5 = tmpvar_1;
  xlv_TEXCOORD6 = tmpvar_2;
}


#endif
#ifdef FRAGMENT
#extension GL_EXT_shadow_samplers : enable
uniform highp vec3 _WorldSpaceCameraPos;
uniform mediump vec4 _WorldSpaceLightPos0;
uniform highp mat4 unity_WorldToShadow[4];
uniform mediump vec4 _LightShadowData;
uniform highp vec4 unity_ShadowFadeCenterAndType;
uniform highp mat4 unity_MatrixV;
uniform lowp vec4 _LightColor0;
uniform lowp sampler2DShadow _ShadowMapTexture;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
void main ()
{
  mediump float tmpvar_1;
  mediump vec3 tmpvar_2;
  mediump vec3 tmpvar_3;
  lowp vec4 c_4;
  lowp float atten_5;
  lowp vec3 tmpvar_6;
  lowp vec3 lightDir_7;
  mediump vec3 tmpvar_8;
  tmpvar_8 = _WorldSpaceLightPos0.xyz;
  lightDir_7 = tmpvar_8;
  tmpvar_6 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_9;
  tmpvar_9 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  mediump float realtimeShadowAttenuation_10;
  highp vec4 v_11;
  v_11.x = unity_MatrixV[0].z;
  v_11.y = unity_MatrixV[1].z;
  v_11.z = unity_MatrixV[2].z;
  v_11.w = unity_MatrixV[3].z;
  highp vec3 tmpvar_12;
  tmpvar_12 = (xlv_TEXCOORD2 - unity_ShadowFadeCenterAndType.xyz);
  mediump float tmpvar_13;
  highp float tmpvar_14;
  tmpvar_14 = clamp (((
    mix (dot ((_WorldSpaceCameraPos - xlv_TEXCOORD2), v_11.xyz), sqrt(dot (tmpvar_12, tmpvar_12)), unity_ShadowFadeCenterAndType.w)
   * _LightShadowData.z) + _LightShadowData.w), 0.0, 1.0);
  tmpvar_13 = tmpvar_14;
  highp vec4 tmpvar_15;
  tmpvar_15.w = 1.0;
  tmpvar_15.xyz = xlv_TEXCOORD2;
  lowp float shadow_16;
  highp vec3 coord_17;
  coord_17 = (unity_WorldToShadow[0] * tmpvar_15).xyz;
  shadow_16 = (_LightShadowData.x + (shadow2DEXT (_ShadowMapTexture, coord_17) * (1.0 - _LightShadowData.x)));
  realtimeShadowAttenuation_10 = shadow_16;
  mediump float tmpvar_18;
  tmpvar_18 = mix (realtimeShadowAttenuation_10, 1.0, tmpvar_13);
  atten_5 = tmpvar_18;
  tmpvar_2 = _LightColor0.xyz;
  tmpvar_3 = lightDir_7;
  tmpvar_1 = atten_5;
  mediump vec3 tmpvar_19;
  tmpvar_19 = (tmpvar_2 * tmpvar_1);
  tmpvar_2 = tmpvar_19;
  lowp vec4 c_20;
  lowp vec4 c_21;
  lowp float diff_22;
  mediump float tmpvar_23;
  tmpvar_23 = max (0.0, dot (tmpvar_6, tmpvar_3));
  diff_22 = tmpvar_23;
  c_21.xyz = ((tmpvar_9.xyz * tmpvar_19) * diff_22);
  c_21.w = tmpvar_9.w;
  c_20.w = c_21.w;
  c_20.xyz = c_21.xyz;
  c_4.xyz = c_20.xyz;
  c_4.w = 1.0;
  gl_FragData[0] = c_4;
}


#endif


-- Fragment shader for "gles":
// No shader variant for this keyword set. The closest match will be used instead.

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL SHADOWS_SCREEN VERTEXLIGHT_ON 
-- Hardware tier variant: Tier 1
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (208 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
  Vector4 _MainTex_ST at 192
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD5 [[ user(TEXCOORD5) ]];
    float4 TEXCOORD6 [[ user(TEXCOORD6) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float u_xlat6;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = rsqrt(u_xlat6);
    output.TEXCOORD1.xyz = float3(u_xlat6) * u_xlat0.xyz;
    output.TEXCOORD5 = float4(0.0, 0.0, 0.0, 0.0);
    output.TEXCOORD6 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Fragment shader for "gles":
// No shader variant for this keyword set. The closest match will be used instead.

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL SHADOWS_SCREEN VERTEXLIGHT_ON 
-- Hardware tier variant: Tier 2
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (208 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
  Vector4 _MainTex_ST at 192
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD5 [[ user(TEXCOORD5) ]];
    float4 TEXCOORD6 [[ user(TEXCOORD6) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float u_xlat6;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = rsqrt(u_xlat6);
    output.TEXCOORD1.xyz = float3(u_xlat6) * u_xlat0.xyz;
    output.TEXCOORD5 = float4(0.0, 0.0, 0.0, 0.0);
    output.TEXCOORD6 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Fragment shader for "gles":
// No shader variant for this keyword set. The closest match will be used instead.

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL SHADOWS_SCREEN VERTEXLIGHT_ON 
-- Hardware tier variant: Tier 3
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (208 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
  Vector4 _MainTex_ST at 192
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD5 [[ user(TEXCOORD5) ]];
    float4 TEXCOORD6 [[ user(TEXCOORD6) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float u_xlat6;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = rsqrt(u_xlat6);
    output.TEXCOORD1.xyz = float3(u_xlat6) * u_xlat0.xyz;
    output.TEXCOORD5 = float4(0.0, 0.0, 0.0, 0.0);
    output.TEXCOORD6 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Fragment shader for "gles":
// No shader variant for this keyword set. The closest match will be used instead.

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL SHADOWS_SCREEN LIGHTPROBE_SH VERTEXLIGHT_ON 
-- Hardware tier variant: Tier 1
-- Vertex shader for "gles":
// Stats: 34 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
#extension GL_EXT_shadow_samplers : enable
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp vec4 unity_4LightPosX0;
uniform highp vec4 unity_4LightPosY0;
uniform highp vec4 unity_4LightPosZ0;
uniform mediump vec4 unity_4LightAtten0;
uniform mediump vec4 unity_LightColor[8];
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying mediump vec3 xlv_TEXCOORD3;
varying highp vec4 xlv_TEXCOORD5;
varying highp vec4 xlv_TEXCOORD6;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  highp vec4 tmpvar_4;
  tmpvar_4.w = 1.0;
  tmpvar_4.xyz = _glesVertex.xyz;
  highp vec3 tmpvar_5;
  tmpvar_5 = (unity_ObjectToWorld * _glesVertex).xyz;
  highp mat3 tmpvar_6;
  tmpvar_6[0] = unity_WorldToObject[0].xyz;
  tmpvar_6[1] = unity_WorldToObject[1].xyz;
  tmpvar_6[2] = unity_WorldToObject[2].xyz;
  highp vec3 tmpvar_7;
  tmpvar_7 = normalize((_glesNormal * tmpvar_6));
  highp vec3 lightColor0_8;
  lightColor0_8 = unity_LightColor[0].xyz;
  highp vec3 lightColor1_9;
  lightColor1_9 = unity_LightColor[1].xyz;
  highp vec3 lightColor2_10;
  lightColor2_10 = unity_LightColor[2].xyz;
  highp vec3 lightColor3_11;
  lightColor3_11 = unity_LightColor[3].xyz;
  highp vec4 lightAttenSq_12;
  lightAttenSq_12 = unity_4LightAtten0;
  highp vec3 col_13;
  highp vec4 ndotl_14;
  highp vec4 lengthSq_15;
  highp vec4 tmpvar_16;
  tmpvar_16 = (unity_4LightPosX0 - tmpvar_5.x);
  highp vec4 tmpvar_17;
  tmpvar_17 = (unity_4LightPosY0 - tmpvar_5.y);
  highp vec4 tmpvar_18;
  tmpvar_18 = (unity_4LightPosZ0 - tmpvar_5.z);
  lengthSq_15 = (tmpvar_16 * tmpvar_16);
  lengthSq_15 = (lengthSq_15 + (tmpvar_17 * tmpvar_17));
  lengthSq_15 = (lengthSq_15 + (tmpvar_18 * tmpvar_18));
  highp vec4 tmpvar_19;
  tmpvar_19 = max (lengthSq_15, vec4(1e-06, 1e-06, 1e-06, 1e-06));
  lengthSq_15 = tmpvar_19;
  ndotl_14 = (tmpvar_16 * tmpvar_7.x);
  ndotl_14 = (ndotl_14 + (tmpvar_17 * tmpvar_7.y));
  ndotl_14 = (ndotl_14 + (tmpvar_18 * tmpvar_7.z));
  highp vec4 tmpvar_20;
  tmpvar_20 = max (vec4(0.0, 0.0, 0.0, 0.0), (ndotl_14 * inversesqrt(tmpvar_19)));
  ndotl_14 = tmpvar_20;
  highp vec4 tmpvar_21;
  tmpvar_21 = (tmpvar_20 * (1.0/((1.0 + 
    (tmpvar_19 * lightAttenSq_12)
  ))));
  col_13 = (lightColor0_8 * tmpvar_21.x);
  col_13 = (col_13 + (lightColor1_9 * tmpvar_21.y));
  col_13 = (col_13 + (lightColor2_10 * tmpvar_21.z));
  col_13 = (col_13 + (lightColor3_11 * tmpvar_21.w));
  tmpvar_1 = col_13;
  mediump vec3 normal_22;
  normal_22 = tmpvar_7;
  mediump vec3 ambient_23;
  mediump vec3 x1_24;
  mediump vec4 tmpvar_25;
  tmpvar_25 = (normal_22.xyzz * normal_22.yzzx);
  x1_24.x = dot (unity_SHBr, tmpvar_25);
  x1_24.y = dot (unity_SHBg, tmpvar_25);
  x1_24.z = dot (unity_SHBb, tmpvar_25);
  ambient_23 = ((tmpvar_1 * (
    (tmpvar_1 * ((tmpvar_1 * 0.305306) + 0.6821711))
   + 0.01252288)) + (x1_24 + (unity_SHC.xyz * 
    ((normal_22.x * normal_22.x) - (normal_22.y * normal_22.y))
  )));
  tmpvar_1 = ambient_23;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_4));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = tmpvar_7;
  xlv_TEXCOORD2 = tmpvar_5;
  xlv_TEXCOORD3 = ambient_23;
  xlv_TEXCOORD5 = tmpvar_2;
  xlv_TEXCOORD6 = tmpvar_3;
}


#endif
#ifdef FRAGMENT
#extension GL_EXT_shadow_samplers : enable
uniform highp vec3 _WorldSpaceCameraPos;
uniform mediump vec4 _WorldSpaceLightPos0;
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform highp mat4 unity_WorldToShadow[4];
uniform mediump vec4 _LightShadowData;
uniform highp vec4 unity_ShadowFadeCenterAndType;
uniform highp mat4 unity_MatrixV;
uniform lowp vec4 _LightColor0;
uniform lowp sampler2DShadow _ShadowMapTexture;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying mediump vec3 xlv_TEXCOORD3;
void main ()
{
  mediump float tmpvar_1;
  mediump vec3 tmpvar_2;
  mediump vec3 tmpvar_3;
  lowp vec4 c_4;
  lowp float atten_5;
  lowp vec3 tmpvar_6;
  lowp vec3 lightDir_7;
  mediump vec3 tmpvar_8;
  tmpvar_8 = _WorldSpaceLightPos0.xyz;
  lightDir_7 = tmpvar_8;
  tmpvar_6 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_9;
  tmpvar_9 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  mediump float realtimeShadowAttenuation_10;
  highp vec4 v_11;
  v_11.x = unity_MatrixV[0].z;
  v_11.y = unity_MatrixV[1].z;
  v_11.z = unity_MatrixV[2].z;
  v_11.w = unity_MatrixV[3].z;
  highp vec3 tmpvar_12;
  tmpvar_12 = (xlv_TEXCOORD2 - unity_ShadowFadeCenterAndType.xyz);
  mediump float tmpvar_13;
  highp float tmpvar_14;
  tmpvar_14 = clamp (((
    mix (dot ((_WorldSpaceCameraPos - xlv_TEXCOORD2), v_11.xyz), sqrt(dot (tmpvar_12, tmpvar_12)), unity_ShadowFadeCenterAndType.w)
   * _LightShadowData.z) + _LightShadowData.w), 0.0, 1.0);
  tmpvar_13 = tmpvar_14;
  highp vec4 tmpvar_15;
  tmpvar_15.w = 1.0;
  tmpvar_15.xyz = xlv_TEXCOORD2;
  lowp float shadow_16;
  highp vec3 coord_17;
  coord_17 = (unity_WorldToShadow[0] * tmpvar_15).xyz;
  shadow_16 = (_LightShadowData.x + (shadow2DEXT (_ShadowMapTexture, coord_17) * (1.0 - _LightShadowData.x)));
  realtimeShadowAttenuation_10 = shadow_16;
  mediump float tmpvar_18;
  tmpvar_18 = mix (realtimeShadowAttenuation_10, 1.0, tmpvar_13);
  atten_5 = tmpvar_18;
  tmpvar_2 = _LightColor0.xyz;
  tmpvar_3 = lightDir_7;
  tmpvar_1 = atten_5;
  mediump vec3 normalWorld_19;
  normalWorld_19 = tmpvar_6;
  mediump vec3 tmpvar_20;
  tmpvar_20 = (tmpvar_2 * tmpvar_1);
  mediump vec4 tmpvar_21;
  tmpvar_21.w = 1.0;
  tmpvar_21.xyz = normalWorld_19;
  mediump vec3 x_22;
  x_22.x = dot (unity_SHAr, tmpvar_21);
  x_22.y = dot (unity_SHAg, tmpvar_21);
  x_22.z = dot (unity_SHAb, tmpvar_21);
  mediump vec3 tmpvar_23;
  tmpvar_23 = max (((1.055 * 
    pow (max (vec3(0.0, 0.0, 0.0), (xlv_TEXCOORD3 + x_22)), vec3(0.4166667, 0.4166667, 0.4166667))
  ) - 0.055), vec3(0.0, 0.0, 0.0));
  tmpvar_2 = tmpvar_20;
  lowp vec4 c_24;
  lowp vec4 c_25;
  lowp float diff_26;
  mediump float tmpvar_27;
  tmpvar_27 = max (0.0, dot (tmpvar_6, tmpvar_3));
  diff_26 = tmpvar_27;
  c_25.xyz = ((tmpvar_9.xyz * tmpvar_20) * diff_26);
  c_25.w = tmpvar_9.w;
  c_24.w = c_25.w;
  c_24.xyz = (c_25.xyz + (tmpvar_9.xyz * tmpvar_23));
  c_4.xyz = c_24.xyz;
  c_4.w = 1.0;
  gl_FragData[0] = c_4;
}


#endif


-- Fragment shader for "gles":
// No shader variant for this keyword set. The closest match will be used instead.

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL SHADOWS_SCREEN LIGHTPROBE_SH VERTEXLIGHT_ON 
-- Hardware tier variant: Tier 2
-- Vertex shader for "gles":
// Stats: 34 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
#extension GL_EXT_shadow_samplers : enable
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp vec4 unity_4LightPosX0;
uniform highp vec4 unity_4LightPosY0;
uniform highp vec4 unity_4LightPosZ0;
uniform mediump vec4 unity_4LightAtten0;
uniform mediump vec4 unity_LightColor[8];
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying mediump vec3 xlv_TEXCOORD3;
varying highp vec4 xlv_TEXCOORD5;
varying highp vec4 xlv_TEXCOORD6;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  highp vec4 tmpvar_4;
  tmpvar_4.w = 1.0;
  tmpvar_4.xyz = _glesVertex.xyz;
  highp vec3 tmpvar_5;
  tmpvar_5 = (unity_ObjectToWorld * _glesVertex).xyz;
  highp mat3 tmpvar_6;
  tmpvar_6[0] = unity_WorldToObject[0].xyz;
  tmpvar_6[1] = unity_WorldToObject[1].xyz;
  tmpvar_6[2] = unity_WorldToObject[2].xyz;
  highp vec3 tmpvar_7;
  tmpvar_7 = normalize((_glesNormal * tmpvar_6));
  highp vec3 lightColor0_8;
  lightColor0_8 = unity_LightColor[0].xyz;
  highp vec3 lightColor1_9;
  lightColor1_9 = unity_LightColor[1].xyz;
  highp vec3 lightColor2_10;
  lightColor2_10 = unity_LightColor[2].xyz;
  highp vec3 lightColor3_11;
  lightColor3_11 = unity_LightColor[3].xyz;
  highp vec4 lightAttenSq_12;
  lightAttenSq_12 = unity_4LightAtten0;
  highp vec3 col_13;
  highp vec4 ndotl_14;
  highp vec4 lengthSq_15;
  highp vec4 tmpvar_16;
  tmpvar_16 = (unity_4LightPosX0 - tmpvar_5.x);
  highp vec4 tmpvar_17;
  tmpvar_17 = (unity_4LightPosY0 - tmpvar_5.y);
  highp vec4 tmpvar_18;
  tmpvar_18 = (unity_4LightPosZ0 - tmpvar_5.z);
  lengthSq_15 = (tmpvar_16 * tmpvar_16);
  lengthSq_15 = (lengthSq_15 + (tmpvar_17 * tmpvar_17));
  lengthSq_15 = (lengthSq_15 + (tmpvar_18 * tmpvar_18));
  highp vec4 tmpvar_19;
  tmpvar_19 = max (lengthSq_15, vec4(1e-06, 1e-06, 1e-06, 1e-06));
  lengthSq_15 = tmpvar_19;
  ndotl_14 = (tmpvar_16 * tmpvar_7.x);
  ndotl_14 = (ndotl_14 + (tmpvar_17 * tmpvar_7.y));
  ndotl_14 = (ndotl_14 + (tmpvar_18 * tmpvar_7.z));
  highp vec4 tmpvar_20;
  tmpvar_20 = max (vec4(0.0, 0.0, 0.0, 0.0), (ndotl_14 * inversesqrt(tmpvar_19)));
  ndotl_14 = tmpvar_20;
  highp vec4 tmpvar_21;
  tmpvar_21 = (tmpvar_20 * (1.0/((1.0 + 
    (tmpvar_19 * lightAttenSq_12)
  ))));
  col_13 = (lightColor0_8 * tmpvar_21.x);
  col_13 = (col_13 + (lightColor1_9 * tmpvar_21.y));
  col_13 = (col_13 + (lightColor2_10 * tmpvar_21.z));
  col_13 = (col_13 + (lightColor3_11 * tmpvar_21.w));
  tmpvar_1 = col_13;
  mediump vec3 normal_22;
  normal_22 = tmpvar_7;
  mediump vec3 ambient_23;
  mediump vec3 x1_24;
  mediump vec4 tmpvar_25;
  tmpvar_25 = (normal_22.xyzz * normal_22.yzzx);
  x1_24.x = dot (unity_SHBr, tmpvar_25);
  x1_24.y = dot (unity_SHBg, tmpvar_25);
  x1_24.z = dot (unity_SHBb, tmpvar_25);
  ambient_23 = ((tmpvar_1 * (
    (tmpvar_1 * ((tmpvar_1 * 0.305306) + 0.6821711))
   + 0.01252288)) + (x1_24 + (unity_SHC.xyz * 
    ((normal_22.x * normal_22.x) - (normal_22.y * normal_22.y))
  )));
  tmpvar_1 = ambient_23;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_4));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = tmpvar_7;
  xlv_TEXCOORD2 = tmpvar_5;
  xlv_TEXCOORD3 = ambient_23;
  xlv_TEXCOORD5 = tmpvar_2;
  xlv_TEXCOORD6 = tmpvar_3;
}


#endif
#ifdef FRAGMENT
#extension GL_EXT_shadow_samplers : enable
uniform highp vec3 _WorldSpaceCameraPos;
uniform mediump vec4 _WorldSpaceLightPos0;
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform highp mat4 unity_WorldToShadow[4];
uniform mediump vec4 _LightShadowData;
uniform highp vec4 unity_ShadowFadeCenterAndType;
uniform highp mat4 unity_MatrixV;
uniform lowp vec4 _LightColor0;
uniform lowp sampler2DShadow _ShadowMapTexture;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying mediump vec3 xlv_TEXCOORD3;
void main ()
{
  mediump float tmpvar_1;
  mediump vec3 tmpvar_2;
  mediump vec3 tmpvar_3;
  lowp vec4 c_4;
  lowp float atten_5;
  lowp vec3 tmpvar_6;
  lowp vec3 lightDir_7;
  mediump vec3 tmpvar_8;
  tmpvar_8 = _WorldSpaceLightPos0.xyz;
  lightDir_7 = tmpvar_8;
  tmpvar_6 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_9;
  tmpvar_9 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  mediump float realtimeShadowAttenuation_10;
  highp vec4 v_11;
  v_11.x = unity_MatrixV[0].z;
  v_11.y = unity_MatrixV[1].z;
  v_11.z = unity_MatrixV[2].z;
  v_11.w = unity_MatrixV[3].z;
  highp vec3 tmpvar_12;
  tmpvar_12 = (xlv_TEXCOORD2 - unity_ShadowFadeCenterAndType.xyz);
  mediump float tmpvar_13;
  highp float tmpvar_14;
  tmpvar_14 = clamp (((
    mix (dot ((_WorldSpaceCameraPos - xlv_TEXCOORD2), v_11.xyz), sqrt(dot (tmpvar_12, tmpvar_12)), unity_ShadowFadeCenterAndType.w)
   * _LightShadowData.z) + _LightShadowData.w), 0.0, 1.0);
  tmpvar_13 = tmpvar_14;
  highp vec4 tmpvar_15;
  tmpvar_15.w = 1.0;
  tmpvar_15.xyz = xlv_TEXCOORD2;
  lowp float shadow_16;
  highp vec3 coord_17;
  coord_17 = (unity_WorldToShadow[0] * tmpvar_15).xyz;
  shadow_16 = (_LightShadowData.x + (shadow2DEXT (_ShadowMapTexture, coord_17) * (1.0 - _LightShadowData.x)));
  realtimeShadowAttenuation_10 = shadow_16;
  mediump float tmpvar_18;
  tmpvar_18 = mix (realtimeShadowAttenuation_10, 1.0, tmpvar_13);
  atten_5 = tmpvar_18;
  tmpvar_2 = _LightColor0.xyz;
  tmpvar_3 = lightDir_7;
  tmpvar_1 = atten_5;
  mediump vec3 normalWorld_19;
  normalWorld_19 = tmpvar_6;
  mediump vec3 tmpvar_20;
  tmpvar_20 = (tmpvar_2 * tmpvar_1);
  mediump vec4 tmpvar_21;
  tmpvar_21.w = 1.0;
  tmpvar_21.xyz = normalWorld_19;
  mediump vec3 x_22;
  x_22.x = dot (unity_SHAr, tmpvar_21);
  x_22.y = dot (unity_SHAg, tmpvar_21);
  x_22.z = dot (unity_SHAb, tmpvar_21);
  mediump vec3 tmpvar_23;
  tmpvar_23 = max (((1.055 * 
    pow (max (vec3(0.0, 0.0, 0.0), (xlv_TEXCOORD3 + x_22)), vec3(0.4166667, 0.4166667, 0.4166667))
  ) - 0.055), vec3(0.0, 0.0, 0.0));
  tmpvar_2 = tmpvar_20;
  lowp vec4 c_24;
  lowp vec4 c_25;
  lowp float diff_26;
  mediump float tmpvar_27;
  tmpvar_27 = max (0.0, dot (tmpvar_6, tmpvar_3));
  diff_26 = tmpvar_27;
  c_25.xyz = ((tmpvar_9.xyz * tmpvar_20) * diff_26);
  c_25.w = tmpvar_9.w;
  c_24.w = c_25.w;
  c_24.xyz = (c_25.xyz + (tmpvar_9.xyz * tmpvar_23));
  c_4.xyz = c_24.xyz;
  c_4.w = 1.0;
  gl_FragData[0] = c_4;
}


#endif


-- Fragment shader for "gles":
// No shader variant for this keyword set. The closest match will be used instead.

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL SHADOWS_SCREEN LIGHTPROBE_SH VERTEXLIGHT_ON 
-- Hardware tier variant: Tier 3
-- Vertex shader for "gles":
// Stats: 34 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
#extension GL_EXT_shadow_samplers : enable
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp vec4 unity_4LightPosX0;
uniform highp vec4 unity_4LightPosY0;
uniform highp vec4 unity_4LightPosZ0;
uniform mediump vec4 unity_4LightAtten0;
uniform mediump vec4 unity_LightColor[8];
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying mediump vec3 xlv_TEXCOORD3;
varying highp vec4 xlv_TEXCOORD5;
varying highp vec4 xlv_TEXCOORD6;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  highp vec4 tmpvar_4;
  tmpvar_4.w = 1.0;
  tmpvar_4.xyz = _glesVertex.xyz;
  highp vec3 tmpvar_5;
  tmpvar_5 = (unity_ObjectToWorld * _glesVertex).xyz;
  highp mat3 tmpvar_6;
  tmpvar_6[0] = unity_WorldToObject[0].xyz;
  tmpvar_6[1] = unity_WorldToObject[1].xyz;
  tmpvar_6[2] = unity_WorldToObject[2].xyz;
  highp vec3 tmpvar_7;
  tmpvar_7 = normalize((_glesNormal * tmpvar_6));
  highp vec3 lightColor0_8;
  lightColor0_8 = unity_LightColor[0].xyz;
  highp vec3 lightColor1_9;
  lightColor1_9 = unity_LightColor[1].xyz;
  highp vec3 lightColor2_10;
  lightColor2_10 = unity_LightColor[2].xyz;
  highp vec3 lightColor3_11;
  lightColor3_11 = unity_LightColor[3].xyz;
  highp vec4 lightAttenSq_12;
  lightAttenSq_12 = unity_4LightAtten0;
  highp vec3 col_13;
  highp vec4 ndotl_14;
  highp vec4 lengthSq_15;
  highp vec4 tmpvar_16;
  tmpvar_16 = (unity_4LightPosX0 - tmpvar_5.x);
  highp vec4 tmpvar_17;
  tmpvar_17 = (unity_4LightPosY0 - tmpvar_5.y);
  highp vec4 tmpvar_18;
  tmpvar_18 = (unity_4LightPosZ0 - tmpvar_5.z);
  lengthSq_15 = (tmpvar_16 * tmpvar_16);
  lengthSq_15 = (lengthSq_15 + (tmpvar_17 * tmpvar_17));
  lengthSq_15 = (lengthSq_15 + (tmpvar_18 * tmpvar_18));
  highp vec4 tmpvar_19;
  tmpvar_19 = max (lengthSq_15, vec4(1e-06, 1e-06, 1e-06, 1e-06));
  lengthSq_15 = tmpvar_19;
  ndotl_14 = (tmpvar_16 * tmpvar_7.x);
  ndotl_14 = (ndotl_14 + (tmpvar_17 * tmpvar_7.y));
  ndotl_14 = (ndotl_14 + (tmpvar_18 * tmpvar_7.z));
  highp vec4 tmpvar_20;
  tmpvar_20 = max (vec4(0.0, 0.0, 0.0, 0.0), (ndotl_14 * inversesqrt(tmpvar_19)));
  ndotl_14 = tmpvar_20;
  highp vec4 tmpvar_21;
  tmpvar_21 = (tmpvar_20 * (1.0/((1.0 + 
    (tmpvar_19 * lightAttenSq_12)
  ))));
  col_13 = (lightColor0_8 * tmpvar_21.x);
  col_13 = (col_13 + (lightColor1_9 * tmpvar_21.y));
  col_13 = (col_13 + (lightColor2_10 * tmpvar_21.z));
  col_13 = (col_13 + (lightColor3_11 * tmpvar_21.w));
  tmpvar_1 = col_13;
  mediump vec3 normal_22;
  normal_22 = tmpvar_7;
  mediump vec3 ambient_23;
  mediump vec3 x1_24;
  mediump vec4 tmpvar_25;
  tmpvar_25 = (normal_22.xyzz * normal_22.yzzx);
  x1_24.x = dot (unity_SHBr, tmpvar_25);
  x1_24.y = dot (unity_SHBg, tmpvar_25);
  x1_24.z = dot (unity_SHBb, tmpvar_25);
  ambient_23 = ((tmpvar_1 * (
    (tmpvar_1 * ((tmpvar_1 * 0.305306) + 0.6821711))
   + 0.01252288)) + (x1_24 + (unity_SHC.xyz * 
    ((normal_22.x * normal_22.x) - (normal_22.y * normal_22.y))
  )));
  tmpvar_1 = ambient_23;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_4));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = tmpvar_7;
  xlv_TEXCOORD2 = tmpvar_5;
  xlv_TEXCOORD3 = ambient_23;
  xlv_TEXCOORD5 = tmpvar_2;
  xlv_TEXCOORD6 = tmpvar_3;
}


#endif
#ifdef FRAGMENT
#extension GL_EXT_shadow_samplers : enable
uniform highp vec3 _WorldSpaceCameraPos;
uniform mediump vec4 _WorldSpaceLightPos0;
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform highp mat4 unity_WorldToShadow[4];
uniform mediump vec4 _LightShadowData;
uniform highp vec4 unity_ShadowFadeCenterAndType;
uniform highp mat4 unity_MatrixV;
uniform lowp vec4 _LightColor0;
uniform lowp sampler2DShadow _ShadowMapTexture;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying mediump vec3 xlv_TEXCOORD3;
void main ()
{
  mediump float tmpvar_1;
  mediump vec3 tmpvar_2;
  mediump vec3 tmpvar_3;
  lowp vec4 c_4;
  lowp float atten_5;
  lowp vec3 tmpvar_6;
  lowp vec3 lightDir_7;
  mediump vec3 tmpvar_8;
  tmpvar_8 = _WorldSpaceLightPos0.xyz;
  lightDir_7 = tmpvar_8;
  tmpvar_6 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_9;
  tmpvar_9 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  mediump float realtimeShadowAttenuation_10;
  highp vec4 v_11;
  v_11.x = unity_MatrixV[0].z;
  v_11.y = unity_MatrixV[1].z;
  v_11.z = unity_MatrixV[2].z;
  v_11.w = unity_MatrixV[3].z;
  highp vec3 tmpvar_12;
  tmpvar_12 = (xlv_TEXCOORD2 - unity_ShadowFadeCenterAndType.xyz);
  mediump float tmpvar_13;
  highp float tmpvar_14;
  tmpvar_14 = clamp (((
    mix (dot ((_WorldSpaceCameraPos - xlv_TEXCOORD2), v_11.xyz), sqrt(dot (tmpvar_12, tmpvar_12)), unity_ShadowFadeCenterAndType.w)
   * _LightShadowData.z) + _LightShadowData.w), 0.0, 1.0);
  tmpvar_13 = tmpvar_14;
  highp vec4 tmpvar_15;
  tmpvar_15.w = 1.0;
  tmpvar_15.xyz = xlv_TEXCOORD2;
  lowp float shadow_16;
  highp vec3 coord_17;
  coord_17 = (unity_WorldToShadow[0] * tmpvar_15).xyz;
  shadow_16 = (_LightShadowData.x + (shadow2DEXT (_ShadowMapTexture, coord_17) * (1.0 - _LightShadowData.x)));
  realtimeShadowAttenuation_10 = shadow_16;
  mediump float tmpvar_18;
  tmpvar_18 = mix (realtimeShadowAttenuation_10, 1.0, tmpvar_13);
  atten_5 = tmpvar_18;
  tmpvar_2 = _LightColor0.xyz;
  tmpvar_3 = lightDir_7;
  tmpvar_1 = atten_5;
  mediump vec3 normalWorld_19;
  normalWorld_19 = tmpvar_6;
  mediump vec3 tmpvar_20;
  tmpvar_20 = (tmpvar_2 * tmpvar_1);
  mediump vec4 tmpvar_21;
  tmpvar_21.w = 1.0;
  tmpvar_21.xyz = normalWorld_19;
  mediump vec3 x_22;
  x_22.x = dot (unity_SHAr, tmpvar_21);
  x_22.y = dot (unity_SHAg, tmpvar_21);
  x_22.z = dot (unity_SHAb, tmpvar_21);
  mediump vec3 tmpvar_23;
  tmpvar_23 = max (((1.055 * 
    pow (max (vec3(0.0, 0.0, 0.0), (xlv_TEXCOORD3 + x_22)), vec3(0.4166667, 0.4166667, 0.4166667))
  ) - 0.055), vec3(0.0, 0.0, 0.0));
  tmpvar_2 = tmpvar_20;
  lowp vec4 c_24;
  lowp vec4 c_25;
  lowp float diff_26;
  mediump float tmpvar_27;
  tmpvar_27 = max (0.0, dot (tmpvar_6, tmpvar_3));
  diff_26 = tmpvar_27;
  c_25.xyz = ((tmpvar_9.xyz * tmpvar_20) * diff_26);
  c_25.w = tmpvar_9.w;
  c_24.w = c_25.w;
  c_24.xyz = (c_25.xyz + (tmpvar_9.xyz * tmpvar_23));
  c_4.xyz = c_24.xyz;
  c_4.w = 1.0;
  gl_FragData[0] = c_4;
}


#endif


-- Fragment shader for "gles":
// No shader variant for this keyword set. The closest match will be used instead.

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL SHADOWS_SCREEN LIGHTPROBE_SH VERTEXLIGHT_ON 
-- Hardware tier variant: Tier 1
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (368 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 160
  Matrix4x4 unity_WorldToObject at 224
  Matrix4x4 unity_MatrixVP at 288
  Vector4 unity_4LightPosX0 at 0
  Vector4 unity_4LightPosY0 at 16
  Vector4 unity_4LightPosZ0 at 32
  VectorHalf4 unity_4LightAtten0 at 48
  VectorHalf4 unity_LightColor[8] at 56
  VectorHalf4 unity_SHBr at 120
  VectorHalf4 unity_SHBg at 128
  VectorHalf4 unity_SHBb at 136
  VectorHalf4 unity_SHC at 144
  Vector4 _MainTex_ST at 352
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 unity_4LightPosX0;
    float4 unity_4LightPosY0;
    float4 unity_4LightPosZ0;
    half4 unity_4LightAtten0;
    half4 unity_LightColor[8];
    half4 unity_SHBr;
    half4 unity_SHBg;
    half4 unity_SHBb;
    half4 unity_SHC;
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    half3 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float4 TEXCOORD5 [[ user(TEXCOORD5) ]];
    float4 TEXCOORD6 [[ user(TEXCOORD6) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    half4 u_xlat16_1;
    float4 u_xlat2;
    float4 u_xlat3;
    float4 u_xlat4;
    half3 u_xlat16_5;
    half3 u_xlat16_6;
    float u_xlat21;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat0.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat2 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat2);
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat2);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat2);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat1.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat1.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat1.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat21 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat21 = rsqrt(u_xlat21);
    u_xlat1.xyz = float3(u_xlat21) * u_xlat1.xyz;
    output.TEXCOORD1.xyz = u_xlat1.xyz;
    output.TEXCOORD2.xyz = u_xlat0.xyz;
    u_xlat2 = (-u_xlat0.xxxx) + VGlobals.unity_4LightPosX0;
    u_xlat3 = (-u_xlat0.yyyy) + VGlobals.unity_4LightPosY0;
    u_xlat0 = (-u_xlat0.zzzz) + VGlobals.unity_4LightPosZ0;
    u_xlat4 = u_xlat1.yyyy * u_xlat3;
    u_xlat3 = u_xlat3 * u_xlat3;
    u_xlat3 = fma(u_xlat2, u_xlat2, u_xlat3);
    u_xlat2 = fma(u_xlat2, u_xlat1.xxxx, u_xlat4);
    u_xlat2 = fma(u_xlat0, u_xlat1.zzzz, u_xlat2);
    u_xlat0 = fma(u_xlat0, u_xlat0, u_xlat3);
    u_xlat0 = max(u_xlat0, float4(9.99999997e-07, 9.99999997e-07, 9.99999997e-07, 9.99999997e-07));
    u_xlat3 = rsqrt(u_xlat0);
    u_xlat0 = fma(u_xlat0, float4(VGlobals.unity_4LightAtten0), float4(1.0, 1.0, 1.0, 1.0));
    u_xlat0 = float4(1.0, 1.0, 1.0, 1.0) / u_xlat0;
    u_xlat2 = u_xlat2 * u_xlat3;
    u_xlat2 = max(u_xlat2, float4(0.0, 0.0, 0.0, 0.0));
    u_xlat0 = u_xlat0 * u_xlat2;
    u_xlat2.xyz = u_xlat0.yyy * float3(VGlobals.unity_LightColor[1].xyz);
    u_xlat2.xyz = fma(float3(VGlobals.unity_LightColor[0].xyz), u_xlat0.xxx, u_xlat2.xyz);
    u_xlat0.xyz = fma(float3(VGlobals.unity_LightColor[2].xyz), u_xlat0.zzz, u_xlat2.xyz);
    u_xlat0.xyz = fma(float3(VGlobals.unity_LightColor[3].xyz), u_xlat0.www, u_xlat0.xyz);
    u_xlat2.xyz = fma(u_xlat0.xyz, float3(0.305306017, 0.305306017, 0.305306017), float3(0.682171106, 0.682171106, 0.682171106));
    u_xlat2.xyz = fma(u_xlat0.xyz, u_xlat2.xyz, float3(0.0125228781, 0.0125228781, 0.0125228781));
    u_xlat16_5.x = half(u_xlat1.y * u_xlat1.y);
    u_xlat16_5.x = half(fma(u_xlat1.x, u_xlat1.x, (-float(u_xlat16_5.x))));
    u_xlat16_1 = half4(u_xlat1.yzzx * u_xlat1.xyzz);
    u_xlat16_6.x = dot(VGlobals.unity_SHBr, u_xlat16_1);
    u_xlat16_6.y = dot(VGlobals.unity_SHBg, u_xlat16_1);
    u_xlat16_6.z = dot(VGlobals.unity_SHBb, u_xlat16_1);
    u_xlat16_5.xyz = fma(VGlobals.unity_SHC.xyz, u_xlat16_5.xxx, u_xlat16_6.xyz);
    output.TEXCOORD3.xyz = half3(fma(u_xlat0.xyz, u_xlat2.xyz, float3(u_xlat16_5.xyz)));
    output.TEXCOORD5 = float4(0.0, 0.0, 0.0, 0.0);
    output.TEXCOORD6 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Fragment shader for "gles":
// No shader variant for this keyword set. The closest match will be used instead.

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL SHADOWS_SCREEN LIGHTPROBE_SH VERTEXLIGHT_ON 
-- Hardware tier variant: Tier 2
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (368 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 160
  Matrix4x4 unity_WorldToObject at 224
  Matrix4x4 unity_MatrixVP at 288
  Vector4 unity_4LightPosX0 at 0
  Vector4 unity_4LightPosY0 at 16
  Vector4 unity_4LightPosZ0 at 32
  VectorHalf4 unity_4LightAtten0 at 48
  VectorHalf4 unity_LightColor[8] at 56
  VectorHalf4 unity_SHBr at 120
  VectorHalf4 unity_SHBg at 128
  VectorHalf4 unity_SHBb at 136
  VectorHalf4 unity_SHC at 144
  Vector4 _MainTex_ST at 352
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 unity_4LightPosX0;
    float4 unity_4LightPosY0;
    float4 unity_4LightPosZ0;
    half4 unity_4LightAtten0;
    half4 unity_LightColor[8];
    half4 unity_SHBr;
    half4 unity_SHBg;
    half4 unity_SHBb;
    half4 unity_SHC;
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    half3 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float4 TEXCOORD5 [[ user(TEXCOORD5) ]];
    float4 TEXCOORD6 [[ user(TEXCOORD6) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    half4 u_xlat16_1;
    float4 u_xlat2;
    float4 u_xlat3;
    float4 u_xlat4;
    half3 u_xlat16_5;
    half3 u_xlat16_6;
    float u_xlat21;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat0.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat2 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat2);
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat2);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat2);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat1.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat1.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat1.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat21 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat21 = rsqrt(u_xlat21);
    u_xlat1.xyz = float3(u_xlat21) * u_xlat1.xyz;
    output.TEXCOORD1.xyz = u_xlat1.xyz;
    output.TEXCOORD2.xyz = u_xlat0.xyz;
    u_xlat2 = (-u_xlat0.xxxx) + VGlobals.unity_4LightPosX0;
    u_xlat3 = (-u_xlat0.yyyy) + VGlobals.unity_4LightPosY0;
    u_xlat0 = (-u_xlat0.zzzz) + VGlobals.unity_4LightPosZ0;
    u_xlat4 = u_xlat1.yyyy * u_xlat3;
    u_xlat3 = u_xlat3 * u_xlat3;
    u_xlat3 = fma(u_xlat2, u_xlat2, u_xlat3);
    u_xlat2 = fma(u_xlat2, u_xlat1.xxxx, u_xlat4);
    u_xlat2 = fma(u_xlat0, u_xlat1.zzzz, u_xlat2);
    u_xlat0 = fma(u_xlat0, u_xlat0, u_xlat3);
    u_xlat0 = max(u_xlat0, float4(9.99999997e-07, 9.99999997e-07, 9.99999997e-07, 9.99999997e-07));
    u_xlat3 = rsqrt(u_xlat0);
    u_xlat0 = fma(u_xlat0, float4(VGlobals.unity_4LightAtten0), float4(1.0, 1.0, 1.0, 1.0));
    u_xlat0 = float4(1.0, 1.0, 1.0, 1.0) / u_xlat0;
    u_xlat2 = u_xlat2 * u_xlat3;
    u_xlat2 = max(u_xlat2, float4(0.0, 0.0, 0.0, 0.0));
    u_xlat0 = u_xlat0 * u_xlat2;
    u_xlat2.xyz = u_xlat0.yyy * float3(VGlobals.unity_LightColor[1].xyz);
    u_xlat2.xyz = fma(float3(VGlobals.unity_LightColor[0].xyz), u_xlat0.xxx, u_xlat2.xyz);
    u_xlat0.xyz = fma(float3(VGlobals.unity_LightColor[2].xyz), u_xlat0.zzz, u_xlat2.xyz);
    u_xlat0.xyz = fma(float3(VGlobals.unity_LightColor[3].xyz), u_xlat0.www, u_xlat0.xyz);
    u_xlat2.xyz = fma(u_xlat0.xyz, float3(0.305306017, 0.305306017, 0.305306017), float3(0.682171106, 0.682171106, 0.682171106));
    u_xlat2.xyz = fma(u_xlat0.xyz, u_xlat2.xyz, float3(0.0125228781, 0.0125228781, 0.0125228781));
    u_xlat16_5.x = half(u_xlat1.y * u_xlat1.y);
    u_xlat16_5.x = half(fma(u_xlat1.x, u_xlat1.x, (-float(u_xlat16_5.x))));
    u_xlat16_1 = half4(u_xlat1.yzzx * u_xlat1.xyzz);
    u_xlat16_6.x = dot(VGlobals.unity_SHBr, u_xlat16_1);
    u_xlat16_6.y = dot(VGlobals.unity_SHBg, u_xlat16_1);
    u_xlat16_6.z = dot(VGlobals.unity_SHBb, u_xlat16_1);
    u_xlat16_5.xyz = fma(VGlobals.unity_SHC.xyz, u_xlat16_5.xxx, u_xlat16_6.xyz);
    output.TEXCOORD3.xyz = half3(fma(u_xlat0.xyz, u_xlat2.xyz, float3(u_xlat16_5.xyz)));
    output.TEXCOORD5 = float4(0.0, 0.0, 0.0, 0.0);
    output.TEXCOORD6 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Fragment shader for "gles":
// No shader variant for this keyword set. The closest match will be used instead.

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL SHADOWS_SCREEN LIGHTPROBE_SH VERTEXLIGHT_ON 
-- Hardware tier variant: Tier 3
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (368 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 160
  Matrix4x4 unity_WorldToObject at 224
  Matrix4x4 unity_MatrixVP at 288
  Vector4 unity_4LightPosX0 at 0
  Vector4 unity_4LightPosY0 at 16
  Vector4 unity_4LightPosZ0 at 32
  VectorHalf4 unity_4LightAtten0 at 48
  VectorHalf4 unity_LightColor[8] at 56
  VectorHalf4 unity_SHBr at 120
  VectorHalf4 unity_SHBg at 128
  VectorHalf4 unity_SHBb at 136
  VectorHalf4 unity_SHC at 144
  Vector4 _MainTex_ST at 352
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 unity_4LightPosX0;
    float4 unity_4LightPosY0;
    float4 unity_4LightPosZ0;
    half4 unity_4LightAtten0;
    half4 unity_LightColor[8];
    half4 unity_SHBr;
    half4 unity_SHBg;
    half4 unity_SHBb;
    half4 unity_SHC;
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    half3 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float4 TEXCOORD5 [[ user(TEXCOORD5) ]];
    float4 TEXCOORD6 [[ user(TEXCOORD6) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    half4 u_xlat16_1;
    float4 u_xlat2;
    float4 u_xlat3;
    float4 u_xlat4;
    half3 u_xlat16_5;
    half3 u_xlat16_6;
    float u_xlat21;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat0.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat2 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat2);
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat2);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat2);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat1.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat1.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat1.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat21 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat21 = rsqrt(u_xlat21);
    u_xlat1.xyz = float3(u_xlat21) * u_xlat1.xyz;
    output.TEXCOORD1.xyz = u_xlat1.xyz;
    output.TEXCOORD2.xyz = u_xlat0.xyz;
    u_xlat2 = (-u_xlat0.xxxx) + VGlobals.unity_4LightPosX0;
    u_xlat3 = (-u_xlat0.yyyy) + VGlobals.unity_4LightPosY0;
    u_xlat0 = (-u_xlat0.zzzz) + VGlobals.unity_4LightPosZ0;
    u_xlat4 = u_xlat1.yyyy * u_xlat3;
    u_xlat3 = u_xlat3 * u_xlat3;
    u_xlat3 = fma(u_xlat2, u_xlat2, u_xlat3);
    u_xlat2 = fma(u_xlat2, u_xlat1.xxxx, u_xlat4);
    u_xlat2 = fma(u_xlat0, u_xlat1.zzzz, u_xlat2);
    u_xlat0 = fma(u_xlat0, u_xlat0, u_xlat3);
    u_xlat0 = max(u_xlat0, float4(9.99999997e-07, 9.99999997e-07, 9.99999997e-07, 9.99999997e-07));
    u_xlat3 = rsqrt(u_xlat0);
    u_xlat0 = fma(u_xlat0, float4(VGlobals.unity_4LightAtten0), float4(1.0, 1.0, 1.0, 1.0));
    u_xlat0 = float4(1.0, 1.0, 1.0, 1.0) / u_xlat0;
    u_xlat2 = u_xlat2 * u_xlat3;
    u_xlat2 = max(u_xlat2, float4(0.0, 0.0, 0.0, 0.0));
    u_xlat0 = u_xlat0 * u_xlat2;
    u_xlat2.xyz = u_xlat0.yyy * float3(VGlobals.unity_LightColor[1].xyz);
    u_xlat2.xyz = fma(float3(VGlobals.unity_LightColor[0].xyz), u_xlat0.xxx, u_xlat2.xyz);
    u_xlat0.xyz = fma(float3(VGlobals.unity_LightColor[2].xyz), u_xlat0.zzz, u_xlat2.xyz);
    u_xlat0.xyz = fma(float3(VGlobals.unity_LightColor[3].xyz), u_xlat0.www, u_xlat0.xyz);
    u_xlat2.xyz = fma(u_xlat0.xyz, float3(0.305306017, 0.305306017, 0.305306017), float3(0.682171106, 0.682171106, 0.682171106));
    u_xlat2.xyz = fma(u_xlat0.xyz, u_xlat2.xyz, float3(0.0125228781, 0.0125228781, 0.0125228781));
    u_xlat16_5.x = half(u_xlat1.y * u_xlat1.y);
    u_xlat16_5.x = half(fma(u_xlat1.x, u_xlat1.x, (-float(u_xlat16_5.x))));
    u_xlat16_1 = half4(u_xlat1.yzzx * u_xlat1.xyzz);
    u_xlat16_6.x = dot(VGlobals.unity_SHBr, u_xlat16_1);
    u_xlat16_6.y = dot(VGlobals.unity_SHBg, u_xlat16_1);
    u_xlat16_6.z = dot(VGlobals.unity_SHBb, u_xlat16_1);
    u_xlat16_5.xyz = fma(VGlobals.unity_SHC.xyz, u_xlat16_5.xxx, u_xlat16_6.xyz);
    output.TEXCOORD3.xyz = half3(fma(u_xlat0.xyz, u_xlat2.xyz, float3(u_xlat16_5.xyz)));
    output.TEXCOORD5 = float4(0.0, 0.0, 0.0, 0.0);
    output.TEXCOORD6 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Fragment shader for "gles":
// No shader variant for this keyword set. The closest match will be used instead.

 }


 // Stats for Vertex shader:
 //         gles: 11 avg math (6..18), 2 avg texture (1..3)
 Pass {
  Name "FORWARD"
  Tags { "LIGHTMODE"="FORWARDADD" "RenderType"="Opaque" }
  ZWrite Off
  Blend One One
  //////////////////////////////////
  //                              //
  //      Compiled programs       //
  //                              //
  //////////////////////////////////
//////////////////////////////////////////////////////
Keywords set in this variant: POINT 
-- Hardware tier variant: Tier 1
-- Vertex shader for "gles":
// Stats: 12 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp mat4 unity_WorldToLight;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec3 xlv_TEXCOORD3;
varying highp vec4 xlv_TEXCOORD4;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = normalize((_glesNormal * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  xlv_TEXCOORD2 = tmpvar_4.xyz;
  xlv_TEXCOORD3 = (unity_WorldToLight * tmpvar_4).xyz;
  xlv_TEXCOORD4 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform highp vec4 _WorldSpaceLightPos0;
uniform lowp vec4 _LightColor0;
uniform highp sampler2D _LightTexture0;
uniform highp mat4 unity_WorldToLight;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
void main ()
{
  mediump vec3 tmpvar_1;
  mediump vec3 tmpvar_2;
  lowp vec4 c_3;
  lowp float atten_4;
  highp vec3 lightCoord_5;
  lowp vec3 tmpvar_6;
  lowp vec3 lightDir_7;
  highp vec3 tmpvar_8;
  tmpvar_8 = normalize((_WorldSpaceLightPos0.xyz - xlv_TEXCOORD2));
  lightDir_7 = tmpvar_8;
  tmpvar_6 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_9;
  tmpvar_9 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  highp vec4 tmpvar_10;
  tmpvar_10.w = 1.0;
  tmpvar_10.xyz = xlv_TEXCOORD2;
  lightCoord_5 = (unity_WorldToLight * tmpvar_10).xyz;
  highp float tmpvar_11;
  tmpvar_11 = texture2D (_LightTexture0, vec2(dot (lightCoord_5, lightCoord_5))).x;
  atten_4 = tmpvar_11;
  tmpvar_1 = _LightColor0.xyz;
  tmpvar_2 = lightDir_7;
  tmpvar_1 = (tmpvar_1 * atten_4);
  lowp vec4 c_12;
  lowp vec4 c_13;
  lowp float diff_14;
  mediump float tmpvar_15;
  tmpvar_15 = max (0.0, dot (tmpvar_6, tmpvar_2));
  diff_14 = tmpvar_15;
  c_13.xyz = ((tmpvar_9.xyz * tmpvar_1) * diff_14);
  c_13.w = tmpvar_9.w;
  c_12.w = c_13.w;
  c_12.xyz = c_13.xyz;
  c_3.xyz = c_12.xyz;
  c_3.w = 1.0;
  gl_FragData[0] = c_3;
}


#endif


-- Hardware tier variant: Tier 1
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: POINT 
-- Hardware tier variant: Tier 2
-- Vertex shader for "gles":
// Stats: 12 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp mat4 unity_WorldToLight;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec3 xlv_TEXCOORD3;
varying highp vec4 xlv_TEXCOORD4;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = normalize((_glesNormal * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  xlv_TEXCOORD2 = tmpvar_4.xyz;
  xlv_TEXCOORD3 = (unity_WorldToLight * tmpvar_4).xyz;
  xlv_TEXCOORD4 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform highp vec4 _WorldSpaceLightPos0;
uniform lowp vec4 _LightColor0;
uniform highp sampler2D _LightTexture0;
uniform highp mat4 unity_WorldToLight;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
void main ()
{
  mediump vec3 tmpvar_1;
  mediump vec3 tmpvar_2;
  lowp vec4 c_3;
  lowp float atten_4;
  highp vec3 lightCoord_5;
  lowp vec3 tmpvar_6;
  lowp vec3 lightDir_7;
  highp vec3 tmpvar_8;
  tmpvar_8 = normalize((_WorldSpaceLightPos0.xyz - xlv_TEXCOORD2));
  lightDir_7 = tmpvar_8;
  tmpvar_6 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_9;
  tmpvar_9 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  highp vec4 tmpvar_10;
  tmpvar_10.w = 1.0;
  tmpvar_10.xyz = xlv_TEXCOORD2;
  lightCoord_5 = (unity_WorldToLight * tmpvar_10).xyz;
  highp float tmpvar_11;
  tmpvar_11 = texture2D (_LightTexture0, vec2(dot (lightCoord_5, lightCoord_5))).x;
  atten_4 = tmpvar_11;
  tmpvar_1 = _LightColor0.xyz;
  tmpvar_2 = lightDir_7;
  tmpvar_1 = (tmpvar_1 * atten_4);
  lowp vec4 c_12;
  lowp vec4 c_13;
  lowp float diff_14;
  mediump float tmpvar_15;
  tmpvar_15 = max (0.0, dot (tmpvar_6, tmpvar_2));
  diff_14 = tmpvar_15;
  c_13.xyz = ((tmpvar_9.xyz * tmpvar_1) * diff_14);
  c_13.w = tmpvar_9.w;
  c_12.w = c_13.w;
  c_12.xyz = c_13.xyz;
  c_3.xyz = c_12.xyz;
  c_3.w = 1.0;
  gl_FragData[0] = c_3;
}


#endif


-- Hardware tier variant: Tier 2
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: POINT 
-- Hardware tier variant: Tier 3
-- Vertex shader for "gles":
// Stats: 12 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp mat4 unity_WorldToLight;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec3 xlv_TEXCOORD3;
varying highp vec4 xlv_TEXCOORD4;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = normalize((_glesNormal * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  xlv_TEXCOORD2 = tmpvar_4.xyz;
  xlv_TEXCOORD3 = (unity_WorldToLight * tmpvar_4).xyz;
  xlv_TEXCOORD4 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform highp vec4 _WorldSpaceLightPos0;
uniform lowp vec4 _LightColor0;
uniform highp sampler2D _LightTexture0;
uniform highp mat4 unity_WorldToLight;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
void main ()
{
  mediump vec3 tmpvar_1;
  mediump vec3 tmpvar_2;
  lowp vec4 c_3;
  lowp float atten_4;
  highp vec3 lightCoord_5;
  lowp vec3 tmpvar_6;
  lowp vec3 lightDir_7;
  highp vec3 tmpvar_8;
  tmpvar_8 = normalize((_WorldSpaceLightPos0.xyz - xlv_TEXCOORD2));
  lightDir_7 = tmpvar_8;
  tmpvar_6 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_9;
  tmpvar_9 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  highp vec4 tmpvar_10;
  tmpvar_10.w = 1.0;
  tmpvar_10.xyz = xlv_TEXCOORD2;
  lightCoord_5 = (unity_WorldToLight * tmpvar_10).xyz;
  highp float tmpvar_11;
  tmpvar_11 = texture2D (_LightTexture0, vec2(dot (lightCoord_5, lightCoord_5))).x;
  atten_4 = tmpvar_11;
  tmpvar_1 = _LightColor0.xyz;
  tmpvar_2 = lightDir_7;
  tmpvar_1 = (tmpvar_1 * atten_4);
  lowp vec4 c_12;
  lowp vec4 c_13;
  lowp float diff_14;
  mediump float tmpvar_15;
  tmpvar_15 = max (0.0, dot (tmpvar_6, tmpvar_2));
  diff_14 = tmpvar_15;
  c_13.xyz = ((tmpvar_9.xyz * tmpvar_1) * diff_14);
  c_13.w = tmpvar_9.w;
  c_12.w = c_13.w;
  c_12.xyz = c_13.xyz;
  c_3.xyz = c_12.xyz;
  c_3.w = 1.0;
  gl_FragData[0] = c_3;
}


#endif


-- Hardware tier variant: Tier 3
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: POINT 
-- Hardware tier variant: Tier 1
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (272 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
  Matrix4x4 unity_WorldToLight at 192
  Vector4 _MainTex_ST at 256
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 hlslcc_mtx4x4unity_WorldToLight[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float3 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float4 TEXCOORD4 [[ user(TEXCOORD4) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float4 u_xlat2;
    float u_xlat10;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat2 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat2);
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat2);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat2);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat1.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat1.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat1.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat10 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat10 = rsqrt(u_xlat10);
    output.TEXCOORD1.xyz = float3(u_xlat10) * u_xlat1.xyz;
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3], input.POSITION0.wwww, u_xlat0);
    u_xlat1.xyz = u_xlat0.yyy * VGlobals.hlslcc_mtx4x4unity_WorldToLight[1].xyz;
    u_xlat1.xyz = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[0].xyz, u_xlat0.xxx, u_xlat1.xyz);
    u_xlat0.xyz = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[2].xyz, u_xlat0.zzz, u_xlat1.xyz);
    output.TEXCOORD3.xyz = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[3].xyz, u_xlat0.www, u_xlat0.xyz);
    output.TEXCOORD4 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Hardware tier variant: Tier 1
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0 sampler slot 1
Set 2D Texture "_LightTexture0" to slot 1 sampler slot 0

Constant Buffer "FGlobals" (104 bytes) on slot 0 {
  Matrix4x4 unity_WorldToLight at 32
  Vector4 _WorldSpaceLightPos0 at 0
  VectorHalf4 _LightColor0 at 16
  VectorHalf4 _Color at 96
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    float4 _WorldSpaceLightPos0;
    half4 _LightColor0;
    float4 hlslcc_mtx4x4unity_WorldToLight[4];
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_LightTexture0 [[ sampler (0) ]],
    sampler sampler_MainTex [[ sampler (1) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    texture2d<float, access::sample > _LightTexture0 [[ texture(1) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float3 u_xlat0;
    half3 u_xlat16_0;
    half3 u_xlat16_1;
    float u_xlat6;
    half u_xlat16_7;
    u_xlat0.xyz = input.TEXCOORD2.yyy * FGlobals.hlslcc_mtx4x4unity_WorldToLight[1].xyz;
    u_xlat0.xyz = fma(FGlobals.hlslcc_mtx4x4unity_WorldToLight[0].xyz, input.TEXCOORD2.xxx, u_xlat0.xyz);
    u_xlat0.xyz = fma(FGlobals.hlslcc_mtx4x4unity_WorldToLight[2].xyz, input.TEXCOORD2.zzz, u_xlat0.xyz);
    u_xlat0.xyz = u_xlat0.xyz + FGlobals.hlslcc_mtx4x4unity_WorldToLight[3].xyz;
    u_xlat0.x = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat0.x = _LightTexture0.sample(sampler_LightTexture0, u_xlat0.xx).x;
    u_xlat16_1.xyz = half3(u_xlat0.xxx * float3(FGlobals._LightColor0.xyz));
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    u_xlat16_1.xyz = u_xlat16_1.xyz * u_xlat16_0.xyz;
    u_xlat0.xyz = (-input.TEXCOORD2.xyz) + FGlobals._WorldSpaceLightPos0.xyz;
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = rsqrt(u_xlat6);
    u_xlat0.xyz = float3(u_xlat6) * u_xlat0.xyz;
    u_xlat16_7 = dot(input.TEXCOORD1.xyz, u_xlat0.xyz);
    u_xlat16_7 = max(u_xlat16_7, half(0.0));
    output.SV_Target0.xyz = half3(u_xlat16_7) * u_xlat16_1.xyz;
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: POINT 
-- Hardware tier variant: Tier 2
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (272 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
  Matrix4x4 unity_WorldToLight at 192
  Vector4 _MainTex_ST at 256
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 hlslcc_mtx4x4unity_WorldToLight[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float3 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float4 TEXCOORD4 [[ user(TEXCOORD4) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float4 u_xlat2;
    float u_xlat10;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat2 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat2);
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat2);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat2);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat1.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat1.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat1.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat10 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat10 = rsqrt(u_xlat10);
    output.TEXCOORD1.xyz = float3(u_xlat10) * u_xlat1.xyz;
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3], input.POSITION0.wwww, u_xlat0);
    u_xlat1.xyz = u_xlat0.yyy * VGlobals.hlslcc_mtx4x4unity_WorldToLight[1].xyz;
    u_xlat1.xyz = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[0].xyz, u_xlat0.xxx, u_xlat1.xyz);
    u_xlat0.xyz = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[2].xyz, u_xlat0.zzz, u_xlat1.xyz);
    output.TEXCOORD3.xyz = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[3].xyz, u_xlat0.www, u_xlat0.xyz);
    output.TEXCOORD4 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Hardware tier variant: Tier 2
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0 sampler slot 1
Set 2D Texture "_LightTexture0" to slot 1 sampler slot 0

Constant Buffer "FGlobals" (104 bytes) on slot 0 {
  Matrix4x4 unity_WorldToLight at 32
  Vector4 _WorldSpaceLightPos0 at 0
  VectorHalf4 _LightColor0 at 16
  VectorHalf4 _Color at 96
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    float4 _WorldSpaceLightPos0;
    half4 _LightColor0;
    float4 hlslcc_mtx4x4unity_WorldToLight[4];
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_LightTexture0 [[ sampler (0) ]],
    sampler sampler_MainTex [[ sampler (1) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    texture2d<float, access::sample > _LightTexture0 [[ texture(1) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float3 u_xlat0;
    half3 u_xlat16_0;
    half3 u_xlat16_1;
    float u_xlat6;
    half u_xlat16_7;
    u_xlat0.xyz = input.TEXCOORD2.yyy * FGlobals.hlslcc_mtx4x4unity_WorldToLight[1].xyz;
    u_xlat0.xyz = fma(FGlobals.hlslcc_mtx4x4unity_WorldToLight[0].xyz, input.TEXCOORD2.xxx, u_xlat0.xyz);
    u_xlat0.xyz = fma(FGlobals.hlslcc_mtx4x4unity_WorldToLight[2].xyz, input.TEXCOORD2.zzz, u_xlat0.xyz);
    u_xlat0.xyz = u_xlat0.xyz + FGlobals.hlslcc_mtx4x4unity_WorldToLight[3].xyz;
    u_xlat0.x = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat0.x = _LightTexture0.sample(sampler_LightTexture0, u_xlat0.xx).x;
    u_xlat16_1.xyz = half3(u_xlat0.xxx * float3(FGlobals._LightColor0.xyz));
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    u_xlat16_1.xyz = u_xlat16_1.xyz * u_xlat16_0.xyz;
    u_xlat0.xyz = (-input.TEXCOORD2.xyz) + FGlobals._WorldSpaceLightPos0.xyz;
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = rsqrt(u_xlat6);
    u_xlat0.xyz = float3(u_xlat6) * u_xlat0.xyz;
    u_xlat16_7 = dot(input.TEXCOORD1.xyz, u_xlat0.xyz);
    u_xlat16_7 = max(u_xlat16_7, half(0.0));
    output.SV_Target0.xyz = half3(u_xlat16_7) * u_xlat16_1.xyz;
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: POINT 
-- Hardware tier variant: Tier 3
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (272 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
  Matrix4x4 unity_WorldToLight at 192
  Vector4 _MainTex_ST at 256
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 hlslcc_mtx4x4unity_WorldToLight[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float3 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float4 TEXCOORD4 [[ user(TEXCOORD4) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float4 u_xlat2;
    float u_xlat10;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat2 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat2);
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat2);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat2);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat1.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat1.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat1.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat10 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat10 = rsqrt(u_xlat10);
    output.TEXCOORD1.xyz = float3(u_xlat10) * u_xlat1.xyz;
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3], input.POSITION0.wwww, u_xlat0);
    u_xlat1.xyz = u_xlat0.yyy * VGlobals.hlslcc_mtx4x4unity_WorldToLight[1].xyz;
    u_xlat1.xyz = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[0].xyz, u_xlat0.xxx, u_xlat1.xyz);
    u_xlat0.xyz = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[2].xyz, u_xlat0.zzz, u_xlat1.xyz);
    output.TEXCOORD3.xyz = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[3].xyz, u_xlat0.www, u_xlat0.xyz);
    output.TEXCOORD4 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Hardware tier variant: Tier 3
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0 sampler slot 1
Set 2D Texture "_LightTexture0" to slot 1 sampler slot 0

Constant Buffer "FGlobals" (104 bytes) on slot 0 {
  Matrix4x4 unity_WorldToLight at 32
  Vector4 _WorldSpaceLightPos0 at 0
  VectorHalf4 _LightColor0 at 16
  VectorHalf4 _Color at 96
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    float4 _WorldSpaceLightPos0;
    half4 _LightColor0;
    float4 hlslcc_mtx4x4unity_WorldToLight[4];
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_LightTexture0 [[ sampler (0) ]],
    sampler sampler_MainTex [[ sampler (1) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    texture2d<float, access::sample > _LightTexture0 [[ texture(1) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float3 u_xlat0;
    half3 u_xlat16_0;
    half3 u_xlat16_1;
    float u_xlat6;
    half u_xlat16_7;
    u_xlat0.xyz = input.TEXCOORD2.yyy * FGlobals.hlslcc_mtx4x4unity_WorldToLight[1].xyz;
    u_xlat0.xyz = fma(FGlobals.hlslcc_mtx4x4unity_WorldToLight[0].xyz, input.TEXCOORD2.xxx, u_xlat0.xyz);
    u_xlat0.xyz = fma(FGlobals.hlslcc_mtx4x4unity_WorldToLight[2].xyz, input.TEXCOORD2.zzz, u_xlat0.xyz);
    u_xlat0.xyz = u_xlat0.xyz + FGlobals.hlslcc_mtx4x4unity_WorldToLight[3].xyz;
    u_xlat0.x = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat0.x = _LightTexture0.sample(sampler_LightTexture0, u_xlat0.xx).x;
    u_xlat16_1.xyz = half3(u_xlat0.xxx * float3(FGlobals._LightColor0.xyz));
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    u_xlat16_1.xyz = u_xlat16_1.xyz * u_xlat16_0.xyz;
    u_xlat0.xyz = (-input.TEXCOORD2.xyz) + FGlobals._WorldSpaceLightPos0.xyz;
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = rsqrt(u_xlat6);
    u_xlat0.xyz = float3(u_xlat6) * u_xlat0.xyz;
    u_xlat16_7 = dot(input.TEXCOORD1.xyz, u_xlat0.xyz);
    u_xlat16_7 = max(u_xlat16_7, half(0.0));
    output.SV_Target0.xyz = half3(u_xlat16_7) * u_xlat16_1.xyz;
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL 
-- Hardware tier variant: Tier 1
-- Vertex shader for "gles":
// Stats: 6 math, 1 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD4;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = normalize((_glesNormal * tmpvar_3));
  xlv_TEXCOORD2 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD4 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform mediump vec4 _WorldSpaceLightPos0;
uniform lowp vec4 _LightColor0;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  mediump vec3 tmpvar_2;
  lowp vec4 c_3;
  lowp vec3 tmpvar_4;
  lowp vec3 lightDir_5;
  mediump vec3 tmpvar_6;
  tmpvar_6 = _WorldSpaceLightPos0.xyz;
  lightDir_5 = tmpvar_6;
  tmpvar_4 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_7;
  tmpvar_7 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  tmpvar_1 = _LightColor0.xyz;
  tmpvar_2 = lightDir_5;
  lowp vec4 c_8;
  lowp vec4 c_9;
  lowp float diff_10;
  mediump float tmpvar_11;
  tmpvar_11 = max (0.0, dot (tmpvar_4, tmpvar_2));
  diff_10 = tmpvar_11;
  c_9.xyz = ((tmpvar_7.xyz * tmpvar_1) * diff_10);
  c_9.w = tmpvar_7.w;
  c_8.w = c_9.w;
  c_8.xyz = c_9.xyz;
  c_3.xyz = c_8.xyz;
  c_3.w = 1.0;
  gl_FragData[0] = c_3;
}


#endif


-- Hardware tier variant: Tier 1
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL 
-- Hardware tier variant: Tier 2
-- Vertex shader for "gles":
// Stats: 6 math, 1 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD4;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = normalize((_glesNormal * tmpvar_3));
  xlv_TEXCOORD2 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD4 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform mediump vec4 _WorldSpaceLightPos0;
uniform lowp vec4 _LightColor0;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  mediump vec3 tmpvar_2;
  lowp vec4 c_3;
  lowp vec3 tmpvar_4;
  lowp vec3 lightDir_5;
  mediump vec3 tmpvar_6;
  tmpvar_6 = _WorldSpaceLightPos0.xyz;
  lightDir_5 = tmpvar_6;
  tmpvar_4 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_7;
  tmpvar_7 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  tmpvar_1 = _LightColor0.xyz;
  tmpvar_2 = lightDir_5;
  lowp vec4 c_8;
  lowp vec4 c_9;
  lowp float diff_10;
  mediump float tmpvar_11;
  tmpvar_11 = max (0.0, dot (tmpvar_4, tmpvar_2));
  diff_10 = tmpvar_11;
  c_9.xyz = ((tmpvar_7.xyz * tmpvar_1) * diff_10);
  c_9.w = tmpvar_7.w;
  c_8.w = c_9.w;
  c_8.xyz = c_9.xyz;
  c_3.xyz = c_8.xyz;
  c_3.w = 1.0;
  gl_FragData[0] = c_3;
}


#endif


-- Hardware tier variant: Tier 2
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL 
-- Hardware tier variant: Tier 3
-- Vertex shader for "gles":
// Stats: 6 math, 1 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD4;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = normalize((_glesNormal * tmpvar_3));
  xlv_TEXCOORD2 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD4 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform mediump vec4 _WorldSpaceLightPos0;
uniform lowp vec4 _LightColor0;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  mediump vec3 tmpvar_2;
  lowp vec4 c_3;
  lowp vec3 tmpvar_4;
  lowp vec3 lightDir_5;
  mediump vec3 tmpvar_6;
  tmpvar_6 = _WorldSpaceLightPos0.xyz;
  lightDir_5 = tmpvar_6;
  tmpvar_4 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_7;
  tmpvar_7 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  tmpvar_1 = _LightColor0.xyz;
  tmpvar_2 = lightDir_5;
  lowp vec4 c_8;
  lowp vec4 c_9;
  lowp float diff_10;
  mediump float tmpvar_11;
  tmpvar_11 = max (0.0, dot (tmpvar_4, tmpvar_2));
  diff_10 = tmpvar_11;
  c_9.xyz = ((tmpvar_7.xyz * tmpvar_1) * diff_10);
  c_9.w = tmpvar_7.w;
  c_8.w = c_9.w;
  c_8.xyz = c_9.xyz;
  c_3.xyz = c_8.xyz;
  c_3.w = 1.0;
  gl_FragData[0] = c_3;
}


#endif


-- Hardware tier variant: Tier 3
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL 
-- Hardware tier variant: Tier 1
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (208 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
  Vector4 _MainTex_ST at 192
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD4 [[ user(TEXCOORD4) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float u_xlat6;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = rsqrt(u_xlat6);
    output.TEXCOORD1.xyz = float3(u_xlat6) * u_xlat0.xyz;
    output.TEXCOORD4 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Hardware tier variant: Tier 1
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0

Constant Buffer "FGlobals" (24 bytes) on slot 0 {
  VectorHalf4 _WorldSpaceLightPos0 at 0
  VectorHalf4 _LightColor0 at 8
  VectorHalf4 _Color at 16
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    half4 _WorldSpaceLightPos0;
    half4 _LightColor0;
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_MainTex [[ sampler (0) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    half3 u_xlat16_0;
    half3 u_xlat16_1;
    half u_xlat16_7;
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    u_xlat16_1.xyz = u_xlat16_0.xyz * FGlobals._LightColor0.xyz;
    u_xlat16_7 = dot(input.TEXCOORD1.xyz, float3(FGlobals._WorldSpaceLightPos0.xyz));
    u_xlat16_7 = max(u_xlat16_7, half(0.0));
    output.SV_Target0.xyz = half3(u_xlat16_7) * u_xlat16_1.xyz;
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL 
-- Hardware tier variant: Tier 2
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (208 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
  Vector4 _MainTex_ST at 192
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD4 [[ user(TEXCOORD4) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float u_xlat6;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = rsqrt(u_xlat6);
    output.TEXCOORD1.xyz = float3(u_xlat6) * u_xlat0.xyz;
    output.TEXCOORD4 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Hardware tier variant: Tier 2
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0

Constant Buffer "FGlobals" (24 bytes) on slot 0 {
  VectorHalf4 _WorldSpaceLightPos0 at 0
  VectorHalf4 _LightColor0 at 8
  VectorHalf4 _Color at 16
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    half4 _WorldSpaceLightPos0;
    half4 _LightColor0;
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_MainTex [[ sampler (0) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    half3 u_xlat16_0;
    half3 u_xlat16_1;
    half u_xlat16_7;
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    u_xlat16_1.xyz = u_xlat16_0.xyz * FGlobals._LightColor0.xyz;
    u_xlat16_7 = dot(input.TEXCOORD1.xyz, float3(FGlobals._WorldSpaceLightPos0.xyz));
    u_xlat16_7 = max(u_xlat16_7, half(0.0));
    output.SV_Target0.xyz = half3(u_xlat16_7) * u_xlat16_1.xyz;
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL 
-- Hardware tier variant: Tier 3
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (208 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
  Vector4 _MainTex_ST at 192
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD4 [[ user(TEXCOORD4) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float u_xlat6;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = rsqrt(u_xlat6);
    output.TEXCOORD1.xyz = float3(u_xlat6) * u_xlat0.xyz;
    output.TEXCOORD4 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Hardware tier variant: Tier 3
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0

Constant Buffer "FGlobals" (24 bytes) on slot 0 {
  VectorHalf4 _WorldSpaceLightPos0 at 0
  VectorHalf4 _LightColor0 at 8
  VectorHalf4 _Color at 16
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    half4 _WorldSpaceLightPos0;
    half4 _LightColor0;
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_MainTex [[ sampler (0) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    half3 u_xlat16_0;
    half3 u_xlat16_1;
    half u_xlat16_7;
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    u_xlat16_1.xyz = u_xlat16_0.xyz * FGlobals._LightColor0.xyz;
    u_xlat16_7 = dot(input.TEXCOORD1.xyz, float3(FGlobals._WorldSpaceLightPos0.xyz));
    u_xlat16_7 = max(u_xlat16_7, half(0.0));
    output.SV_Target0.xyz = half3(u_xlat16_7) * u_xlat16_1.xyz;
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: SPOT 
-- Hardware tier variant: Tier 1
-- Vertex shader for "gles":
// Stats: 18 math, 3 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp mat4 unity_WorldToLight;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD3;
varying highp vec4 xlv_TEXCOORD4;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = normalize((_glesNormal * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  xlv_TEXCOORD2 = tmpvar_4.xyz;
  xlv_TEXCOORD3 = (unity_WorldToLight * tmpvar_4);
  xlv_TEXCOORD4 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform highp vec4 _WorldSpaceLightPos0;
uniform lowp vec4 _LightColor0;
uniform highp sampler2D _LightTexture0;
uniform highp mat4 unity_WorldToLight;
uniform highp sampler2D _LightTextureB0;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
void main ()
{
  mediump vec3 tmpvar_1;
  mediump vec3 tmpvar_2;
  lowp vec4 c_3;
  lowp float atten_4;
  highp vec4 lightCoord_5;
  lowp vec3 tmpvar_6;
  lowp vec3 lightDir_7;
  highp vec3 tmpvar_8;
  tmpvar_8 = normalize((_WorldSpaceLightPos0.xyz - xlv_TEXCOORD2));
  lightDir_7 = tmpvar_8;
  tmpvar_6 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_9;
  tmpvar_9 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  highp vec4 tmpvar_10;
  tmpvar_10.w = 1.0;
  tmpvar_10.xyz = xlv_TEXCOORD2;
  lightCoord_5 = (unity_WorldToLight * tmpvar_10);
  lowp float tmpvar_11;
  highp vec4 tmpvar_12;
  tmpvar_12 = texture2D (_LightTexture0, ((lightCoord_5.xy / lightCoord_5.w) + 0.5));
  tmpvar_11 = tmpvar_12.w;
  lowp float tmpvar_13;
  highp vec4 tmpvar_14;
  tmpvar_14 = texture2D (_LightTextureB0, vec2(dot (lightCoord_5.xyz, lightCoord_5.xyz)));
  tmpvar_13 = tmpvar_14.x;
  highp float tmpvar_15;
  tmpvar_15 = ((float(
    (lightCoord_5.z > 0.0)
  ) * tmpvar_11) * tmpvar_13);
  atten_4 = tmpvar_15;
  tmpvar_1 = _LightColor0.xyz;
  tmpvar_2 = lightDir_7;
  tmpvar_1 = (tmpvar_1 * atten_4);
  lowp vec4 c_16;
  lowp vec4 c_17;
  lowp float diff_18;
  mediump float tmpvar_19;
  tmpvar_19 = max (0.0, dot (tmpvar_6, tmpvar_2));
  diff_18 = tmpvar_19;
  c_17.xyz = ((tmpvar_9.xyz * tmpvar_1) * diff_18);
  c_17.w = tmpvar_9.w;
  c_16.w = c_17.w;
  c_16.xyz = c_17.xyz;
  c_3.xyz = c_16.xyz;
  c_3.w = 1.0;
  gl_FragData[0] = c_3;
}


#endif


-- Hardware tier variant: Tier 1
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: SPOT 
-- Hardware tier variant: Tier 2
-- Vertex shader for "gles":
// Stats: 18 math, 3 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp mat4 unity_WorldToLight;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD3;
varying highp vec4 xlv_TEXCOORD4;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = normalize((_glesNormal * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  xlv_TEXCOORD2 = tmpvar_4.xyz;
  xlv_TEXCOORD3 = (unity_WorldToLight * tmpvar_4);
  xlv_TEXCOORD4 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform highp vec4 _WorldSpaceLightPos0;
uniform lowp vec4 _LightColor0;
uniform highp sampler2D _LightTexture0;
uniform highp mat4 unity_WorldToLight;
uniform highp sampler2D _LightTextureB0;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
void main ()
{
  mediump vec3 tmpvar_1;
  mediump vec3 tmpvar_2;
  lowp vec4 c_3;
  lowp float atten_4;
  highp vec4 lightCoord_5;
  lowp vec3 tmpvar_6;
  lowp vec3 lightDir_7;
  highp vec3 tmpvar_8;
  tmpvar_8 = normalize((_WorldSpaceLightPos0.xyz - xlv_TEXCOORD2));
  lightDir_7 = tmpvar_8;
  tmpvar_6 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_9;
  tmpvar_9 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  highp vec4 tmpvar_10;
  tmpvar_10.w = 1.0;
  tmpvar_10.xyz = xlv_TEXCOORD2;
  lightCoord_5 = (unity_WorldToLight * tmpvar_10);
  lowp float tmpvar_11;
  highp vec4 tmpvar_12;
  tmpvar_12 = texture2D (_LightTexture0, ((lightCoord_5.xy / lightCoord_5.w) + 0.5));
  tmpvar_11 = tmpvar_12.w;
  lowp float tmpvar_13;
  highp vec4 tmpvar_14;
  tmpvar_14 = texture2D (_LightTextureB0, vec2(dot (lightCoord_5.xyz, lightCoord_5.xyz)));
  tmpvar_13 = tmpvar_14.x;
  highp float tmpvar_15;
  tmpvar_15 = ((float(
    (lightCoord_5.z > 0.0)
  ) * tmpvar_11) * tmpvar_13);
  atten_4 = tmpvar_15;
  tmpvar_1 = _LightColor0.xyz;
  tmpvar_2 = lightDir_7;
  tmpvar_1 = (tmpvar_1 * atten_4);
  lowp vec4 c_16;
  lowp vec4 c_17;
  lowp float diff_18;
  mediump float tmpvar_19;
  tmpvar_19 = max (0.0, dot (tmpvar_6, tmpvar_2));
  diff_18 = tmpvar_19;
  c_17.xyz = ((tmpvar_9.xyz * tmpvar_1) * diff_18);
  c_17.w = tmpvar_9.w;
  c_16.w = c_17.w;
  c_16.xyz = c_17.xyz;
  c_3.xyz = c_16.xyz;
  c_3.w = 1.0;
  gl_FragData[0] = c_3;
}


#endif


-- Hardware tier variant: Tier 2
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: SPOT 
-- Hardware tier variant: Tier 3
-- Vertex shader for "gles":
// Stats: 18 math, 3 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp mat4 unity_WorldToLight;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD3;
varying highp vec4 xlv_TEXCOORD4;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = normalize((_glesNormal * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  xlv_TEXCOORD2 = tmpvar_4.xyz;
  xlv_TEXCOORD3 = (unity_WorldToLight * tmpvar_4);
  xlv_TEXCOORD4 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform highp vec4 _WorldSpaceLightPos0;
uniform lowp vec4 _LightColor0;
uniform highp sampler2D _LightTexture0;
uniform highp mat4 unity_WorldToLight;
uniform highp sampler2D _LightTextureB0;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
void main ()
{
  mediump vec3 tmpvar_1;
  mediump vec3 tmpvar_2;
  lowp vec4 c_3;
  lowp float atten_4;
  highp vec4 lightCoord_5;
  lowp vec3 tmpvar_6;
  lowp vec3 lightDir_7;
  highp vec3 tmpvar_8;
  tmpvar_8 = normalize((_WorldSpaceLightPos0.xyz - xlv_TEXCOORD2));
  lightDir_7 = tmpvar_8;
  tmpvar_6 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_9;
  tmpvar_9 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  highp vec4 tmpvar_10;
  tmpvar_10.w = 1.0;
  tmpvar_10.xyz = xlv_TEXCOORD2;
  lightCoord_5 = (unity_WorldToLight * tmpvar_10);
  lowp float tmpvar_11;
  highp vec4 tmpvar_12;
  tmpvar_12 = texture2D (_LightTexture0, ((lightCoord_5.xy / lightCoord_5.w) + 0.5));
  tmpvar_11 = tmpvar_12.w;
  lowp float tmpvar_13;
  highp vec4 tmpvar_14;
  tmpvar_14 = texture2D (_LightTextureB0, vec2(dot (lightCoord_5.xyz, lightCoord_5.xyz)));
  tmpvar_13 = tmpvar_14.x;
  highp float tmpvar_15;
  tmpvar_15 = ((float(
    (lightCoord_5.z > 0.0)
  ) * tmpvar_11) * tmpvar_13);
  atten_4 = tmpvar_15;
  tmpvar_1 = _LightColor0.xyz;
  tmpvar_2 = lightDir_7;
  tmpvar_1 = (tmpvar_1 * atten_4);
  lowp vec4 c_16;
  lowp vec4 c_17;
  lowp float diff_18;
  mediump float tmpvar_19;
  tmpvar_19 = max (0.0, dot (tmpvar_6, tmpvar_2));
  diff_18 = tmpvar_19;
  c_17.xyz = ((tmpvar_9.xyz * tmpvar_1) * diff_18);
  c_17.w = tmpvar_9.w;
  c_16.w = c_17.w;
  c_16.xyz = c_17.xyz;
  c_3.xyz = c_16.xyz;
  c_3.w = 1.0;
  gl_FragData[0] = c_3;
}


#endif


-- Hardware tier variant: Tier 3
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: SPOT 
-- Hardware tier variant: Tier 1
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (272 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
  Matrix4x4 unity_WorldToLight at 192
  Vector4 _MainTex_ST at 256
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 hlslcc_mtx4x4unity_WorldToLight[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float4 TEXCOORD4 [[ user(TEXCOORD4) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float4 u_xlat2;
    float u_xlat10;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat2 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat2);
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat2);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat2);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat1.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat1.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat1.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat10 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat10 = rsqrt(u_xlat10);
    output.TEXCOORD1.xyz = float3(u_xlat10) * u_xlat1.xyz;
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3], input.POSITION0.wwww, u_xlat0);
    u_xlat1 = u_xlat0.yyyy * VGlobals.hlslcc_mtx4x4unity_WorldToLight[1];
    u_xlat1 = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[0], u_xlat0.xxxx, u_xlat1);
    u_xlat1 = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[2], u_xlat0.zzzz, u_xlat1);
    output.TEXCOORD3 = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[3], u_xlat0.wwww, u_xlat1);
    output.TEXCOORD4 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Hardware tier variant: Tier 1
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0 sampler slot 2
Set 2D Texture "_LightTexture0" to slot 1 sampler slot 0
Set 2D Texture "_LightTextureB0" to slot 2 sampler slot 1

Constant Buffer "FGlobals" (104 bytes) on slot 0 {
  Matrix4x4 unity_WorldToLight at 32
  Vector4 _WorldSpaceLightPos0 at 0
  VectorHalf4 _LightColor0 at 16
  VectorHalf4 _Color at 96
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    float4 _WorldSpaceLightPos0;
    half4 _LightColor0;
    float4 hlslcc_mtx4x4unity_WorldToLight[4];
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_LightTexture0 [[ sampler (0) ]],
    sampler sampler_LightTextureB0 [[ sampler (1) ]],
    sampler sampler_MainTex [[ sampler (2) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    texture2d<float, access::sample > _LightTexture0 [[ texture(1) ]] ,
    texture2d<float, access::sample > _LightTextureB0 [[ texture(2) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float4 u_xlat0;
    half3 u_xlat16_0;
    float2 u_xlat1;
    bool u_xlatb1;
    half3 u_xlat16_2;
    float u_xlat9;
    half u_xlat16_11;
    u_xlat0 = input.TEXCOORD2.yyyy * FGlobals.hlslcc_mtx4x4unity_WorldToLight[1];
    u_xlat0 = fma(FGlobals.hlslcc_mtx4x4unity_WorldToLight[0], input.TEXCOORD2.xxxx, u_xlat0);
    u_xlat0 = fma(FGlobals.hlslcc_mtx4x4unity_WorldToLight[2], input.TEXCOORD2.zzzz, u_xlat0);
    u_xlat0 = u_xlat0 + FGlobals.hlslcc_mtx4x4unity_WorldToLight[3];
    u_xlat1.xy = u_xlat0.xy / u_xlat0.ww;
    u_xlat1.xy = u_xlat1.xy + float2(0.5, 0.5);
    u_xlat9 = _LightTexture0.sample(sampler_LightTexture0, u_xlat1.xy).w;
    u_xlatb1 = 0.0<u_xlat0.z;
    u_xlat0.x = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat0.x = _LightTextureB0.sample(sampler_LightTextureB0, u_xlat0.xx).x;
    u_xlat16_2.x = (u_xlatb1) ? half(1.0) : half(0.0);
    u_xlat16_2.x = half(u_xlat9 * float(u_xlat16_2.x));
    u_xlat16_2.x = half(u_xlat0.x * float(u_xlat16_2.x));
    u_xlat16_2.xyz = u_xlat16_2.xxx * FGlobals._LightColor0.xyz;
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    u_xlat16_2.xyz = u_xlat16_2.xyz * u_xlat16_0.xyz;
    u_xlat0.xyz = (-input.TEXCOORD2.xyz) + FGlobals._WorldSpaceLightPos0.xyz;
    u_xlat9 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat9 = rsqrt(u_xlat9);
    u_xlat0.xyz = float3(u_xlat9) * u_xlat0.xyz;
    u_xlat16_11 = dot(input.TEXCOORD1.xyz, u_xlat0.xyz);
    u_xlat16_11 = max(u_xlat16_11, half(0.0));
    output.SV_Target0.xyz = half3(u_xlat16_11) * u_xlat16_2.xyz;
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: SPOT 
-- Hardware tier variant: Tier 2
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (272 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
  Matrix4x4 unity_WorldToLight at 192
  Vector4 _MainTex_ST at 256
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 hlslcc_mtx4x4unity_WorldToLight[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float4 TEXCOORD4 [[ user(TEXCOORD4) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float4 u_xlat2;
    float u_xlat10;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat2 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat2);
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat2);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat2);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat1.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat1.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat1.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat10 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat10 = rsqrt(u_xlat10);
    output.TEXCOORD1.xyz = float3(u_xlat10) * u_xlat1.xyz;
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3], input.POSITION0.wwww, u_xlat0);
    u_xlat1 = u_xlat0.yyyy * VGlobals.hlslcc_mtx4x4unity_WorldToLight[1];
    u_xlat1 = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[0], u_xlat0.xxxx, u_xlat1);
    u_xlat1 = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[2], u_xlat0.zzzz, u_xlat1);
    output.TEXCOORD3 = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[3], u_xlat0.wwww, u_xlat1);
    output.TEXCOORD4 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Hardware tier variant: Tier 2
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0 sampler slot 2
Set 2D Texture "_LightTexture0" to slot 1 sampler slot 0
Set 2D Texture "_LightTextureB0" to slot 2 sampler slot 1

Constant Buffer "FGlobals" (104 bytes) on slot 0 {
  Matrix4x4 unity_WorldToLight at 32
  Vector4 _WorldSpaceLightPos0 at 0
  VectorHalf4 _LightColor0 at 16
  VectorHalf4 _Color at 96
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    float4 _WorldSpaceLightPos0;
    half4 _LightColor0;
    float4 hlslcc_mtx4x4unity_WorldToLight[4];
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_LightTexture0 [[ sampler (0) ]],
    sampler sampler_LightTextureB0 [[ sampler (1) ]],
    sampler sampler_MainTex [[ sampler (2) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    texture2d<float, access::sample > _LightTexture0 [[ texture(1) ]] ,
    texture2d<float, access::sample > _LightTextureB0 [[ texture(2) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float4 u_xlat0;
    half3 u_xlat16_0;
    float2 u_xlat1;
    bool u_xlatb1;
    half3 u_xlat16_2;
    float u_xlat9;
    half u_xlat16_11;
    u_xlat0 = input.TEXCOORD2.yyyy * FGlobals.hlslcc_mtx4x4unity_WorldToLight[1];
    u_xlat0 = fma(FGlobals.hlslcc_mtx4x4unity_WorldToLight[0], input.TEXCOORD2.xxxx, u_xlat0);
    u_xlat0 = fma(FGlobals.hlslcc_mtx4x4unity_WorldToLight[2], input.TEXCOORD2.zzzz, u_xlat0);
    u_xlat0 = u_xlat0 + FGlobals.hlslcc_mtx4x4unity_WorldToLight[3];
    u_xlat1.xy = u_xlat0.xy / u_xlat0.ww;
    u_xlat1.xy = u_xlat1.xy + float2(0.5, 0.5);
    u_xlat9 = _LightTexture0.sample(sampler_LightTexture0, u_xlat1.xy).w;
    u_xlatb1 = 0.0<u_xlat0.z;
    u_xlat0.x = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat0.x = _LightTextureB0.sample(sampler_LightTextureB0, u_xlat0.xx).x;
    u_xlat16_2.x = (u_xlatb1) ? half(1.0) : half(0.0);
    u_xlat16_2.x = half(u_xlat9 * float(u_xlat16_2.x));
    u_xlat16_2.x = half(u_xlat0.x * float(u_xlat16_2.x));
    u_xlat16_2.xyz = u_xlat16_2.xxx * FGlobals._LightColor0.xyz;
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    u_xlat16_2.xyz = u_xlat16_2.xyz * u_xlat16_0.xyz;
    u_xlat0.xyz = (-input.TEXCOORD2.xyz) + FGlobals._WorldSpaceLightPos0.xyz;
    u_xlat9 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat9 = rsqrt(u_xlat9);
    u_xlat0.xyz = float3(u_xlat9) * u_xlat0.xyz;
    u_xlat16_11 = dot(input.TEXCOORD1.xyz, u_xlat0.xyz);
    u_xlat16_11 = max(u_xlat16_11, half(0.0));
    output.SV_Target0.xyz = half3(u_xlat16_11) * u_xlat16_2.xyz;
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: SPOT 
-- Hardware tier variant: Tier 3
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (272 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
  Matrix4x4 unity_WorldToLight at 192
  Vector4 _MainTex_ST at 256
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 hlslcc_mtx4x4unity_WorldToLight[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float4 TEXCOORD4 [[ user(TEXCOORD4) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float4 u_xlat2;
    float u_xlat10;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat2 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat2);
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat2);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat2);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat1.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat1.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat1.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat10 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat10 = rsqrt(u_xlat10);
    output.TEXCOORD1.xyz = float3(u_xlat10) * u_xlat1.xyz;
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3], input.POSITION0.wwww, u_xlat0);
    u_xlat1 = u_xlat0.yyyy * VGlobals.hlslcc_mtx4x4unity_WorldToLight[1];
    u_xlat1 = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[0], u_xlat0.xxxx, u_xlat1);
    u_xlat1 = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[2], u_xlat0.zzzz, u_xlat1);
    output.TEXCOORD3 = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[3], u_xlat0.wwww, u_xlat1);
    output.TEXCOORD4 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Hardware tier variant: Tier 3
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0 sampler slot 2
Set 2D Texture "_LightTexture0" to slot 1 sampler slot 0
Set 2D Texture "_LightTextureB0" to slot 2 sampler slot 1

Constant Buffer "FGlobals" (104 bytes) on slot 0 {
  Matrix4x4 unity_WorldToLight at 32
  Vector4 _WorldSpaceLightPos0 at 0
  VectorHalf4 _LightColor0 at 16
  VectorHalf4 _Color at 96
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    float4 _WorldSpaceLightPos0;
    half4 _LightColor0;
    float4 hlslcc_mtx4x4unity_WorldToLight[4];
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_LightTexture0 [[ sampler (0) ]],
    sampler sampler_LightTextureB0 [[ sampler (1) ]],
    sampler sampler_MainTex [[ sampler (2) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    texture2d<float, access::sample > _LightTexture0 [[ texture(1) ]] ,
    texture2d<float, access::sample > _LightTextureB0 [[ texture(2) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float4 u_xlat0;
    half3 u_xlat16_0;
    float2 u_xlat1;
    bool u_xlatb1;
    half3 u_xlat16_2;
    float u_xlat9;
    half u_xlat16_11;
    u_xlat0 = input.TEXCOORD2.yyyy * FGlobals.hlslcc_mtx4x4unity_WorldToLight[1];
    u_xlat0 = fma(FGlobals.hlslcc_mtx4x4unity_WorldToLight[0], input.TEXCOORD2.xxxx, u_xlat0);
    u_xlat0 = fma(FGlobals.hlslcc_mtx4x4unity_WorldToLight[2], input.TEXCOORD2.zzzz, u_xlat0);
    u_xlat0 = u_xlat0 + FGlobals.hlslcc_mtx4x4unity_WorldToLight[3];
    u_xlat1.xy = u_xlat0.xy / u_xlat0.ww;
    u_xlat1.xy = u_xlat1.xy + float2(0.5, 0.5);
    u_xlat9 = _LightTexture0.sample(sampler_LightTexture0, u_xlat1.xy).w;
    u_xlatb1 = 0.0<u_xlat0.z;
    u_xlat0.x = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat0.x = _LightTextureB0.sample(sampler_LightTextureB0, u_xlat0.xx).x;
    u_xlat16_2.x = (u_xlatb1) ? half(1.0) : half(0.0);
    u_xlat16_2.x = half(u_xlat9 * float(u_xlat16_2.x));
    u_xlat16_2.x = half(u_xlat0.x * float(u_xlat16_2.x));
    u_xlat16_2.xyz = u_xlat16_2.xxx * FGlobals._LightColor0.xyz;
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    u_xlat16_2.xyz = u_xlat16_2.xyz * u_xlat16_0.xyz;
    u_xlat0.xyz = (-input.TEXCOORD2.xyz) + FGlobals._WorldSpaceLightPos0.xyz;
    u_xlat9 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat9 = rsqrt(u_xlat9);
    u_xlat0.xyz = float3(u_xlat9) * u_xlat0.xyz;
    u_xlat16_11 = dot(input.TEXCOORD1.xyz, u_xlat0.xyz);
    u_xlat16_11 = max(u_xlat16_11, half(0.0));
    output.SV_Target0.xyz = half3(u_xlat16_11) * u_xlat16_2.xyz;
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: POINT_COOKIE 
-- Hardware tier variant: Tier 1
-- Vertex shader for "gles":
// Stats: 13 math, 3 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp mat4 unity_WorldToLight;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec3 xlv_TEXCOORD3;
varying highp vec4 xlv_TEXCOORD4;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = normalize((_glesNormal * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  xlv_TEXCOORD2 = tmpvar_4.xyz;
  xlv_TEXCOORD3 = (unity_WorldToLight * tmpvar_4).xyz;
  xlv_TEXCOORD4 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform highp vec4 _WorldSpaceLightPos0;
uniform lowp vec4 _LightColor0;
uniform highp samplerCube _LightTexture0;
uniform highp mat4 unity_WorldToLight;
uniform highp sampler2D _LightTextureB0;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
void main ()
{
  mediump vec3 tmpvar_1;
  mediump vec3 tmpvar_2;
  lowp vec4 c_3;
  lowp float atten_4;
  highp vec3 lightCoord_5;
  lowp vec3 tmpvar_6;
  lowp vec3 lightDir_7;
  highp vec3 tmpvar_8;
  tmpvar_8 = normalize((_WorldSpaceLightPos0.xyz - xlv_TEXCOORD2));
  lightDir_7 = tmpvar_8;
  tmpvar_6 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_9;
  tmpvar_9 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  highp vec4 tmpvar_10;
  tmpvar_10.w = 1.0;
  tmpvar_10.xyz = xlv_TEXCOORD2;
  lightCoord_5 = (unity_WorldToLight * tmpvar_10).xyz;
  highp float tmpvar_11;
  tmpvar_11 = (texture2D (_LightTextureB0, vec2(dot (lightCoord_5, lightCoord_5))).x * textureCube (_LightTexture0, lightCoord_5).w);
  atten_4 = tmpvar_11;
  tmpvar_1 = _LightColor0.xyz;
  tmpvar_2 = lightDir_7;
  tmpvar_1 = (tmpvar_1 * atten_4);
  lowp vec4 c_12;
  lowp vec4 c_13;
  lowp float diff_14;
  mediump float tmpvar_15;
  tmpvar_15 = max (0.0, dot (tmpvar_6, tmpvar_2));
  diff_14 = tmpvar_15;
  c_13.xyz = ((tmpvar_9.xyz * tmpvar_1) * diff_14);
  c_13.w = tmpvar_9.w;
  c_12.w = c_13.w;
  c_12.xyz = c_13.xyz;
  c_3.xyz = c_12.xyz;
  c_3.w = 1.0;
  gl_FragData[0] = c_3;
}


#endif


-- Hardware tier variant: Tier 1
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: POINT_COOKIE 
-- Hardware tier variant: Tier 2
-- Vertex shader for "gles":
// Stats: 13 math, 3 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp mat4 unity_WorldToLight;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec3 xlv_TEXCOORD3;
varying highp vec4 xlv_TEXCOORD4;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = normalize((_glesNormal * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  xlv_TEXCOORD2 = tmpvar_4.xyz;
  xlv_TEXCOORD3 = (unity_WorldToLight * tmpvar_4).xyz;
  xlv_TEXCOORD4 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform highp vec4 _WorldSpaceLightPos0;
uniform lowp vec4 _LightColor0;
uniform highp samplerCube _LightTexture0;
uniform highp mat4 unity_WorldToLight;
uniform highp sampler2D _LightTextureB0;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
void main ()
{
  mediump vec3 tmpvar_1;
  mediump vec3 tmpvar_2;
  lowp vec4 c_3;
  lowp float atten_4;
  highp vec3 lightCoord_5;
  lowp vec3 tmpvar_6;
  lowp vec3 lightDir_7;
  highp vec3 tmpvar_8;
  tmpvar_8 = normalize((_WorldSpaceLightPos0.xyz - xlv_TEXCOORD2));
  lightDir_7 = tmpvar_8;
  tmpvar_6 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_9;
  tmpvar_9 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  highp vec4 tmpvar_10;
  tmpvar_10.w = 1.0;
  tmpvar_10.xyz = xlv_TEXCOORD2;
  lightCoord_5 = (unity_WorldToLight * tmpvar_10).xyz;
  highp float tmpvar_11;
  tmpvar_11 = (texture2D (_LightTextureB0, vec2(dot (lightCoord_5, lightCoord_5))).x * textureCube (_LightTexture0, lightCoord_5).w);
  atten_4 = tmpvar_11;
  tmpvar_1 = _LightColor0.xyz;
  tmpvar_2 = lightDir_7;
  tmpvar_1 = (tmpvar_1 * atten_4);
  lowp vec4 c_12;
  lowp vec4 c_13;
  lowp float diff_14;
  mediump float tmpvar_15;
  tmpvar_15 = max (0.0, dot (tmpvar_6, tmpvar_2));
  diff_14 = tmpvar_15;
  c_13.xyz = ((tmpvar_9.xyz * tmpvar_1) * diff_14);
  c_13.w = tmpvar_9.w;
  c_12.w = c_13.w;
  c_12.xyz = c_13.xyz;
  c_3.xyz = c_12.xyz;
  c_3.w = 1.0;
  gl_FragData[0] = c_3;
}


#endif


-- Hardware tier variant: Tier 2
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: POINT_COOKIE 
-- Hardware tier variant: Tier 3
-- Vertex shader for "gles":
// Stats: 13 math, 3 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp mat4 unity_WorldToLight;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec3 xlv_TEXCOORD3;
varying highp vec4 xlv_TEXCOORD4;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = normalize((_glesNormal * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  xlv_TEXCOORD2 = tmpvar_4.xyz;
  xlv_TEXCOORD3 = (unity_WorldToLight * tmpvar_4).xyz;
  xlv_TEXCOORD4 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform highp vec4 _WorldSpaceLightPos0;
uniform lowp vec4 _LightColor0;
uniform highp samplerCube _LightTexture0;
uniform highp mat4 unity_WorldToLight;
uniform highp sampler2D _LightTextureB0;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
void main ()
{
  mediump vec3 tmpvar_1;
  mediump vec3 tmpvar_2;
  lowp vec4 c_3;
  lowp float atten_4;
  highp vec3 lightCoord_5;
  lowp vec3 tmpvar_6;
  lowp vec3 lightDir_7;
  highp vec3 tmpvar_8;
  tmpvar_8 = normalize((_WorldSpaceLightPos0.xyz - xlv_TEXCOORD2));
  lightDir_7 = tmpvar_8;
  tmpvar_6 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_9;
  tmpvar_9 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  highp vec4 tmpvar_10;
  tmpvar_10.w = 1.0;
  tmpvar_10.xyz = xlv_TEXCOORD2;
  lightCoord_5 = (unity_WorldToLight * tmpvar_10).xyz;
  highp float tmpvar_11;
  tmpvar_11 = (texture2D (_LightTextureB0, vec2(dot (lightCoord_5, lightCoord_5))).x * textureCube (_LightTexture0, lightCoord_5).w);
  atten_4 = tmpvar_11;
  tmpvar_1 = _LightColor0.xyz;
  tmpvar_2 = lightDir_7;
  tmpvar_1 = (tmpvar_1 * atten_4);
  lowp vec4 c_12;
  lowp vec4 c_13;
  lowp float diff_14;
  mediump float tmpvar_15;
  tmpvar_15 = max (0.0, dot (tmpvar_6, tmpvar_2));
  diff_14 = tmpvar_15;
  c_13.xyz = ((tmpvar_9.xyz * tmpvar_1) * diff_14);
  c_13.w = tmpvar_9.w;
  c_12.w = c_13.w;
  c_12.xyz = c_13.xyz;
  c_3.xyz = c_12.xyz;
  c_3.w = 1.0;
  gl_FragData[0] = c_3;
}


#endif


-- Hardware tier variant: Tier 3
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: POINT_COOKIE 
-- Hardware tier variant: Tier 1
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (272 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
  Matrix4x4 unity_WorldToLight at 192
  Vector4 _MainTex_ST at 256
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 hlslcc_mtx4x4unity_WorldToLight[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float3 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float4 TEXCOORD4 [[ user(TEXCOORD4) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float4 u_xlat2;
    float u_xlat10;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat2 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat2);
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat2);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat2);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat1.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat1.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat1.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat10 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat10 = rsqrt(u_xlat10);
    output.TEXCOORD1.xyz = float3(u_xlat10) * u_xlat1.xyz;
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3], input.POSITION0.wwww, u_xlat0);
    u_xlat1.xyz = u_xlat0.yyy * VGlobals.hlslcc_mtx4x4unity_WorldToLight[1].xyz;
    u_xlat1.xyz = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[0].xyz, u_xlat0.xxx, u_xlat1.xyz);
    u_xlat0.xyz = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[2].xyz, u_xlat0.zzz, u_xlat1.xyz);
    output.TEXCOORD3.xyz = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[3].xyz, u_xlat0.www, u_xlat0.xyz);
    output.TEXCOORD4 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Hardware tier variant: Tier 1
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0 sampler slot 2
Set 2D Texture "_LightTextureB0" to slot 1
Set CUBE Texture "_LightTexture0" to slot 2 sampler slot 0

Constant Buffer "FGlobals" (104 bytes) on slot 0 {
  Matrix4x4 unity_WorldToLight at 32
  Vector4 _WorldSpaceLightPos0 at 0
  VectorHalf4 _LightColor0 at 16
  VectorHalf4 _Color at 96
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    float4 _WorldSpaceLightPos0;
    half4 _LightColor0;
    float4 hlslcc_mtx4x4unity_WorldToLight[4];
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_LightTexture0 [[ sampler (0) ]],
    sampler sampler_LightTextureB0 [[ sampler (1) ]],
    sampler sampler_MainTex [[ sampler (2) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    texture2d<float, access::sample > _LightTextureB0 [[ texture(1) ]] ,
    texturecube<float, access::sample > _LightTexture0 [[ texture(2) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float3 u_xlat0;
    half3 u_xlat16_0;
    half3 u_xlat16_1;
    float u_xlat2;
    float u_xlat6;
    half u_xlat16_7;
    u_xlat0.xyz = input.TEXCOORD2.yyy * FGlobals.hlslcc_mtx4x4unity_WorldToLight[1].xyz;
    u_xlat0.xyz = fma(FGlobals.hlslcc_mtx4x4unity_WorldToLight[0].xyz, input.TEXCOORD2.xxx, u_xlat0.xyz);
    u_xlat0.xyz = fma(FGlobals.hlslcc_mtx4x4unity_WorldToLight[2].xyz, input.TEXCOORD2.zzz, u_xlat0.xyz);
    u_xlat0.xyz = u_xlat0.xyz + FGlobals.hlslcc_mtx4x4unity_WorldToLight[3].xyz;
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat0.x = _LightTexture0.sample(sampler_LightTexture0, u_xlat0.xyz).w;
    u_xlat2 = _LightTextureB0.sample(sampler_LightTextureB0, float2(u_xlat6)).x;
    u_xlat0.x = u_xlat0.x * u_xlat2;
    u_xlat16_1.xyz = half3(u_xlat0.xxx * float3(FGlobals._LightColor0.xyz));
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    u_xlat16_1.xyz = u_xlat16_1.xyz * u_xlat16_0.xyz;
    u_xlat0.xyz = (-input.TEXCOORD2.xyz) + FGlobals._WorldSpaceLightPos0.xyz;
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = rsqrt(u_xlat6);
    u_xlat0.xyz = float3(u_xlat6) * u_xlat0.xyz;
    u_xlat16_7 = dot(input.TEXCOORD1.xyz, u_xlat0.xyz);
    u_xlat16_7 = max(u_xlat16_7, half(0.0));
    output.SV_Target0.xyz = half3(u_xlat16_7) * u_xlat16_1.xyz;
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: POINT_COOKIE 
-- Hardware tier variant: Tier 2
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (272 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
  Matrix4x4 unity_WorldToLight at 192
  Vector4 _MainTex_ST at 256
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 hlslcc_mtx4x4unity_WorldToLight[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float3 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float4 TEXCOORD4 [[ user(TEXCOORD4) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float4 u_xlat2;
    float u_xlat10;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat2 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat2);
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat2);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat2);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat1.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat1.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat1.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat10 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat10 = rsqrt(u_xlat10);
    output.TEXCOORD1.xyz = float3(u_xlat10) * u_xlat1.xyz;
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3], input.POSITION0.wwww, u_xlat0);
    u_xlat1.xyz = u_xlat0.yyy * VGlobals.hlslcc_mtx4x4unity_WorldToLight[1].xyz;
    u_xlat1.xyz = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[0].xyz, u_xlat0.xxx, u_xlat1.xyz);
    u_xlat0.xyz = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[2].xyz, u_xlat0.zzz, u_xlat1.xyz);
    output.TEXCOORD3.xyz = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[3].xyz, u_xlat0.www, u_xlat0.xyz);
    output.TEXCOORD4 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Hardware tier variant: Tier 2
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0 sampler slot 2
Set 2D Texture "_LightTextureB0" to slot 1
Set CUBE Texture "_LightTexture0" to slot 2 sampler slot 0

Constant Buffer "FGlobals" (104 bytes) on slot 0 {
  Matrix4x4 unity_WorldToLight at 32
  Vector4 _WorldSpaceLightPos0 at 0
  VectorHalf4 _LightColor0 at 16
  VectorHalf4 _Color at 96
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    float4 _WorldSpaceLightPos0;
    half4 _LightColor0;
    float4 hlslcc_mtx4x4unity_WorldToLight[4];
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_LightTexture0 [[ sampler (0) ]],
    sampler sampler_LightTextureB0 [[ sampler (1) ]],
    sampler sampler_MainTex [[ sampler (2) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    texture2d<float, access::sample > _LightTextureB0 [[ texture(1) ]] ,
    texturecube<float, access::sample > _LightTexture0 [[ texture(2) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float3 u_xlat0;
    half3 u_xlat16_0;
    half3 u_xlat16_1;
    float u_xlat2;
    float u_xlat6;
    half u_xlat16_7;
    u_xlat0.xyz = input.TEXCOORD2.yyy * FGlobals.hlslcc_mtx4x4unity_WorldToLight[1].xyz;
    u_xlat0.xyz = fma(FGlobals.hlslcc_mtx4x4unity_WorldToLight[0].xyz, input.TEXCOORD2.xxx, u_xlat0.xyz);
    u_xlat0.xyz = fma(FGlobals.hlslcc_mtx4x4unity_WorldToLight[2].xyz, input.TEXCOORD2.zzz, u_xlat0.xyz);
    u_xlat0.xyz = u_xlat0.xyz + FGlobals.hlslcc_mtx4x4unity_WorldToLight[3].xyz;
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat0.x = _LightTexture0.sample(sampler_LightTexture0, u_xlat0.xyz).w;
    u_xlat2 = _LightTextureB0.sample(sampler_LightTextureB0, float2(u_xlat6)).x;
    u_xlat0.x = u_xlat0.x * u_xlat2;
    u_xlat16_1.xyz = half3(u_xlat0.xxx * float3(FGlobals._LightColor0.xyz));
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    u_xlat16_1.xyz = u_xlat16_1.xyz * u_xlat16_0.xyz;
    u_xlat0.xyz = (-input.TEXCOORD2.xyz) + FGlobals._WorldSpaceLightPos0.xyz;
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = rsqrt(u_xlat6);
    u_xlat0.xyz = float3(u_xlat6) * u_xlat0.xyz;
    u_xlat16_7 = dot(input.TEXCOORD1.xyz, u_xlat0.xyz);
    u_xlat16_7 = max(u_xlat16_7, half(0.0));
    output.SV_Target0.xyz = half3(u_xlat16_7) * u_xlat16_1.xyz;
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: POINT_COOKIE 
-- Hardware tier variant: Tier 3
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (272 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
  Matrix4x4 unity_WorldToLight at 192
  Vector4 _MainTex_ST at 256
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 hlslcc_mtx4x4unity_WorldToLight[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float3 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float4 TEXCOORD4 [[ user(TEXCOORD4) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float4 u_xlat2;
    float u_xlat10;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat2 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat2);
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat2);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat2);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat1.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat1.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat1.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat10 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat10 = rsqrt(u_xlat10);
    output.TEXCOORD1.xyz = float3(u_xlat10) * u_xlat1.xyz;
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3], input.POSITION0.wwww, u_xlat0);
    u_xlat1.xyz = u_xlat0.yyy * VGlobals.hlslcc_mtx4x4unity_WorldToLight[1].xyz;
    u_xlat1.xyz = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[0].xyz, u_xlat0.xxx, u_xlat1.xyz);
    u_xlat0.xyz = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[2].xyz, u_xlat0.zzz, u_xlat1.xyz);
    output.TEXCOORD3.xyz = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[3].xyz, u_xlat0.www, u_xlat0.xyz);
    output.TEXCOORD4 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Hardware tier variant: Tier 3
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0 sampler slot 2
Set 2D Texture "_LightTextureB0" to slot 1
Set CUBE Texture "_LightTexture0" to slot 2 sampler slot 0

Constant Buffer "FGlobals" (104 bytes) on slot 0 {
  Matrix4x4 unity_WorldToLight at 32
  Vector4 _WorldSpaceLightPos0 at 0
  VectorHalf4 _LightColor0 at 16
  VectorHalf4 _Color at 96
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    float4 _WorldSpaceLightPos0;
    half4 _LightColor0;
    float4 hlslcc_mtx4x4unity_WorldToLight[4];
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_LightTexture0 [[ sampler (0) ]],
    sampler sampler_LightTextureB0 [[ sampler (1) ]],
    sampler sampler_MainTex [[ sampler (2) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    texture2d<float, access::sample > _LightTextureB0 [[ texture(1) ]] ,
    texturecube<float, access::sample > _LightTexture0 [[ texture(2) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float3 u_xlat0;
    half3 u_xlat16_0;
    half3 u_xlat16_1;
    float u_xlat2;
    float u_xlat6;
    half u_xlat16_7;
    u_xlat0.xyz = input.TEXCOORD2.yyy * FGlobals.hlslcc_mtx4x4unity_WorldToLight[1].xyz;
    u_xlat0.xyz = fma(FGlobals.hlslcc_mtx4x4unity_WorldToLight[0].xyz, input.TEXCOORD2.xxx, u_xlat0.xyz);
    u_xlat0.xyz = fma(FGlobals.hlslcc_mtx4x4unity_WorldToLight[2].xyz, input.TEXCOORD2.zzz, u_xlat0.xyz);
    u_xlat0.xyz = u_xlat0.xyz + FGlobals.hlslcc_mtx4x4unity_WorldToLight[3].xyz;
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat0.x = _LightTexture0.sample(sampler_LightTexture0, u_xlat0.xyz).w;
    u_xlat2 = _LightTextureB0.sample(sampler_LightTextureB0, float2(u_xlat6)).x;
    u_xlat0.x = u_xlat0.x * u_xlat2;
    u_xlat16_1.xyz = half3(u_xlat0.xxx * float3(FGlobals._LightColor0.xyz));
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    u_xlat16_1.xyz = u_xlat16_1.xyz * u_xlat16_0.xyz;
    u_xlat0.xyz = (-input.TEXCOORD2.xyz) + FGlobals._WorldSpaceLightPos0.xyz;
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = rsqrt(u_xlat6);
    u_xlat0.xyz = float3(u_xlat6) * u_xlat0.xyz;
    u_xlat16_7 = dot(input.TEXCOORD1.xyz, u_xlat0.xyz);
    u_xlat16_7 = max(u_xlat16_7, half(0.0));
    output.SV_Target0.xyz = half3(u_xlat16_7) * u_xlat16_1.xyz;
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL_COOKIE 
-- Hardware tier variant: Tier 1
-- Vertex shader for "gles":
// Stats: 9 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp mat4 unity_WorldToLight;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec2 xlv_TEXCOORD3;
varying highp vec4 xlv_TEXCOORD4;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = normalize((_glesNormal * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  xlv_TEXCOORD2 = tmpvar_4.xyz;
  xlv_TEXCOORD3 = (unity_WorldToLight * tmpvar_4).xy;
  xlv_TEXCOORD4 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform mediump vec4 _WorldSpaceLightPos0;
uniform lowp vec4 _LightColor0;
uniform highp sampler2D _LightTexture0;
uniform highp mat4 unity_WorldToLight;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
void main ()
{
  mediump vec3 tmpvar_1;
  mediump vec3 tmpvar_2;
  lowp vec4 c_3;
  lowp float atten_4;
  lowp vec3 tmpvar_5;
  lowp vec3 lightDir_6;
  mediump vec3 tmpvar_7;
  tmpvar_7 = _WorldSpaceLightPos0.xyz;
  lightDir_6 = tmpvar_7;
  tmpvar_5 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_8;
  tmpvar_8 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  highp vec4 tmpvar_9;
  tmpvar_9.w = 1.0;
  tmpvar_9.xyz = xlv_TEXCOORD2;
  highp float tmpvar_10;
  tmpvar_10 = texture2D (_LightTexture0, (unity_WorldToLight * tmpvar_9).xy).w;
  atten_4 = tmpvar_10;
  tmpvar_1 = _LightColor0.xyz;
  tmpvar_2 = lightDir_6;
  tmpvar_1 = (tmpvar_1 * atten_4);
  lowp vec4 c_11;
  lowp vec4 c_12;
  lowp float diff_13;
  mediump float tmpvar_14;
  tmpvar_14 = max (0.0, dot (tmpvar_5, tmpvar_2));
  diff_13 = tmpvar_14;
  c_12.xyz = ((tmpvar_8.xyz * tmpvar_1) * diff_13);
  c_12.w = tmpvar_8.w;
  c_11.w = c_12.w;
  c_11.xyz = c_12.xyz;
  c_3.xyz = c_11.xyz;
  c_3.w = 1.0;
  gl_FragData[0] = c_3;
}


#endif


-- Hardware tier variant: Tier 1
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL_COOKIE 
-- Hardware tier variant: Tier 2
-- Vertex shader for "gles":
// Stats: 9 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp mat4 unity_WorldToLight;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec2 xlv_TEXCOORD3;
varying highp vec4 xlv_TEXCOORD4;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = normalize((_glesNormal * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  xlv_TEXCOORD2 = tmpvar_4.xyz;
  xlv_TEXCOORD3 = (unity_WorldToLight * tmpvar_4).xy;
  xlv_TEXCOORD4 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform mediump vec4 _WorldSpaceLightPos0;
uniform lowp vec4 _LightColor0;
uniform highp sampler2D _LightTexture0;
uniform highp mat4 unity_WorldToLight;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
void main ()
{
  mediump vec3 tmpvar_1;
  mediump vec3 tmpvar_2;
  lowp vec4 c_3;
  lowp float atten_4;
  lowp vec3 tmpvar_5;
  lowp vec3 lightDir_6;
  mediump vec3 tmpvar_7;
  tmpvar_7 = _WorldSpaceLightPos0.xyz;
  lightDir_6 = tmpvar_7;
  tmpvar_5 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_8;
  tmpvar_8 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  highp vec4 tmpvar_9;
  tmpvar_9.w = 1.0;
  tmpvar_9.xyz = xlv_TEXCOORD2;
  highp float tmpvar_10;
  tmpvar_10 = texture2D (_LightTexture0, (unity_WorldToLight * tmpvar_9).xy).w;
  atten_4 = tmpvar_10;
  tmpvar_1 = _LightColor0.xyz;
  tmpvar_2 = lightDir_6;
  tmpvar_1 = (tmpvar_1 * atten_4);
  lowp vec4 c_11;
  lowp vec4 c_12;
  lowp float diff_13;
  mediump float tmpvar_14;
  tmpvar_14 = max (0.0, dot (tmpvar_5, tmpvar_2));
  diff_13 = tmpvar_14;
  c_12.xyz = ((tmpvar_8.xyz * tmpvar_1) * diff_13);
  c_12.w = tmpvar_8.w;
  c_11.w = c_12.w;
  c_11.xyz = c_12.xyz;
  c_3.xyz = c_11.xyz;
  c_3.w = 1.0;
  gl_FragData[0] = c_3;
}


#endif


-- Hardware tier variant: Tier 2
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL_COOKIE 
-- Hardware tier variant: Tier 3
-- Vertex shader for "gles":
// Stats: 9 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp mat4 unity_WorldToLight;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec2 xlv_TEXCOORD3;
varying highp vec4 xlv_TEXCOORD4;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = normalize((_glesNormal * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  xlv_TEXCOORD2 = tmpvar_4.xyz;
  xlv_TEXCOORD3 = (unity_WorldToLight * tmpvar_4).xy;
  xlv_TEXCOORD4 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform mediump vec4 _WorldSpaceLightPos0;
uniform lowp vec4 _LightColor0;
uniform highp sampler2D _LightTexture0;
uniform highp mat4 unity_WorldToLight;
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
void main ()
{
  mediump vec3 tmpvar_1;
  mediump vec3 tmpvar_2;
  lowp vec4 c_3;
  lowp float atten_4;
  lowp vec3 tmpvar_5;
  lowp vec3 lightDir_6;
  mediump vec3 tmpvar_7;
  tmpvar_7 = _WorldSpaceLightPos0.xyz;
  lightDir_6 = tmpvar_7;
  tmpvar_5 = xlv_TEXCOORD1;
  lowp vec4 tmpvar_8;
  tmpvar_8 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  highp vec4 tmpvar_9;
  tmpvar_9.w = 1.0;
  tmpvar_9.xyz = xlv_TEXCOORD2;
  highp float tmpvar_10;
  tmpvar_10 = texture2D (_LightTexture0, (unity_WorldToLight * tmpvar_9).xy).w;
  atten_4 = tmpvar_10;
  tmpvar_1 = _LightColor0.xyz;
  tmpvar_2 = lightDir_6;
  tmpvar_1 = (tmpvar_1 * atten_4);
  lowp vec4 c_11;
  lowp vec4 c_12;
  lowp float diff_13;
  mediump float tmpvar_14;
  tmpvar_14 = max (0.0, dot (tmpvar_5, tmpvar_2));
  diff_13 = tmpvar_14;
  c_12.xyz = ((tmpvar_8.xyz * tmpvar_1) * diff_13);
  c_12.w = tmpvar_8.w;
  c_11.w = c_12.w;
  c_11.xyz = c_12.xyz;
  c_3.xyz = c_11.xyz;
  c_3.w = 1.0;
  gl_FragData[0] = c_3;
}


#endif


-- Hardware tier variant: Tier 3
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL_COOKIE 
-- Hardware tier variant: Tier 1
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (272 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
  Matrix4x4 unity_WorldToLight at 192
  Vector4 _MainTex_ST at 256
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 hlslcc_mtx4x4unity_WorldToLight[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float2 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD4 [[ user(TEXCOORD4) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float4 u_xlat2;
    float u_xlat9;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat2 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat2);
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat2);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat2);
    u_xlat1 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3], input.POSITION0.wwww, u_xlat0);
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0.xy = u_xlat1.yy * VGlobals.hlslcc_mtx4x4unity_WorldToLight[1].xy;
    u_xlat0.xy = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[0].xy, u_xlat1.xx, u_xlat0.xy);
    u_xlat0.xy = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[2].xy, u_xlat1.zz, u_xlat0.xy);
    output.TEXCOORD3.xy = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[3].xy, u_xlat1.ww, u_xlat0.xy);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat9 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat9 = rsqrt(u_xlat9);
    output.TEXCOORD1.xyz = float3(u_xlat9) * u_xlat0.xyz;
    output.TEXCOORD4 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Hardware tier variant: Tier 1
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0 sampler slot 1
Set 2D Texture "_LightTexture0" to slot 1 sampler slot 0

Constant Buffer "FGlobals" (88 bytes) on slot 0 {
  Matrix4x4 unity_WorldToLight at 16
  VectorHalf4 _WorldSpaceLightPos0 at 0
  VectorHalf4 _LightColor0 at 8
  VectorHalf4 _Color at 80
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    half4 _WorldSpaceLightPos0;
    half4 _LightColor0;
    float4 hlslcc_mtx4x4unity_WorldToLight[4];
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_LightTexture0 [[ sampler (0) ]],
    sampler sampler_MainTex [[ sampler (1) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    texture2d<float, access::sample > _LightTexture0 [[ texture(1) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float2 u_xlat0;
    half3 u_xlat16_0;
    half3 u_xlat16_1;
    half u_xlat16_7;
    u_xlat0.xy = input.TEXCOORD2.yy * FGlobals.hlslcc_mtx4x4unity_WorldToLight[1].xy;
    u_xlat0.xy = fma(FGlobals.hlslcc_mtx4x4unity_WorldToLight[0].xy, input.TEXCOORD2.xx, u_xlat0.xy);
    u_xlat0.xy = fma(FGlobals.hlslcc_mtx4x4unity_WorldToLight[2].xy, input.TEXCOORD2.zz, u_xlat0.xy);
    u_xlat0.xy = u_xlat0.xy + FGlobals.hlslcc_mtx4x4unity_WorldToLight[3].xy;
    u_xlat0.x = _LightTexture0.sample(sampler_LightTexture0, u_xlat0.xy).w;
    u_xlat16_1.xyz = half3(u_xlat0.xxx * float3(FGlobals._LightColor0.xyz));
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    u_xlat16_1.xyz = u_xlat16_1.xyz * u_xlat16_0.xyz;
    u_xlat16_7 = dot(input.TEXCOORD1.xyz, float3(FGlobals._WorldSpaceLightPos0.xyz));
    u_xlat16_7 = max(u_xlat16_7, half(0.0));
    output.SV_Target0.xyz = half3(u_xlat16_7) * u_xlat16_1.xyz;
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL_COOKIE 
-- Hardware tier variant: Tier 2
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (272 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
  Matrix4x4 unity_WorldToLight at 192
  Vector4 _MainTex_ST at 256
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 hlslcc_mtx4x4unity_WorldToLight[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float2 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD4 [[ user(TEXCOORD4) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float4 u_xlat2;
    float u_xlat9;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat2 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat2);
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat2);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat2);
    u_xlat1 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3], input.POSITION0.wwww, u_xlat0);
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0.xy = u_xlat1.yy * VGlobals.hlslcc_mtx4x4unity_WorldToLight[1].xy;
    u_xlat0.xy = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[0].xy, u_xlat1.xx, u_xlat0.xy);
    u_xlat0.xy = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[2].xy, u_xlat1.zz, u_xlat0.xy);
    output.TEXCOORD3.xy = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[3].xy, u_xlat1.ww, u_xlat0.xy);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat9 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat9 = rsqrt(u_xlat9);
    output.TEXCOORD1.xyz = float3(u_xlat9) * u_xlat0.xyz;
    output.TEXCOORD4 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Hardware tier variant: Tier 2
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0 sampler slot 1
Set 2D Texture "_LightTexture0" to slot 1 sampler slot 0

Constant Buffer "FGlobals" (88 bytes) on slot 0 {
  Matrix4x4 unity_WorldToLight at 16
  VectorHalf4 _WorldSpaceLightPos0 at 0
  VectorHalf4 _LightColor0 at 8
  VectorHalf4 _Color at 80
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    half4 _WorldSpaceLightPos0;
    half4 _LightColor0;
    float4 hlslcc_mtx4x4unity_WorldToLight[4];
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_LightTexture0 [[ sampler (0) ]],
    sampler sampler_MainTex [[ sampler (1) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    texture2d<float, access::sample > _LightTexture0 [[ texture(1) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float2 u_xlat0;
    half3 u_xlat16_0;
    half3 u_xlat16_1;
    half u_xlat16_7;
    u_xlat0.xy = input.TEXCOORD2.yy * FGlobals.hlslcc_mtx4x4unity_WorldToLight[1].xy;
    u_xlat0.xy = fma(FGlobals.hlslcc_mtx4x4unity_WorldToLight[0].xy, input.TEXCOORD2.xx, u_xlat0.xy);
    u_xlat0.xy = fma(FGlobals.hlslcc_mtx4x4unity_WorldToLight[2].xy, input.TEXCOORD2.zz, u_xlat0.xy);
    u_xlat0.xy = u_xlat0.xy + FGlobals.hlslcc_mtx4x4unity_WorldToLight[3].xy;
    u_xlat0.x = _LightTexture0.sample(sampler_LightTexture0, u_xlat0.xy).w;
    u_xlat16_1.xyz = half3(u_xlat0.xxx * float3(FGlobals._LightColor0.xyz));
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    u_xlat16_1.xyz = u_xlat16_1.xyz * u_xlat16_0.xyz;
    u_xlat16_7 = dot(input.TEXCOORD1.xyz, float3(FGlobals._WorldSpaceLightPos0.xyz));
    u_xlat16_7 = max(u_xlat16_7, half(0.0));
    output.SV_Target0.xyz = half3(u_xlat16_7) * u_xlat16_1.xyz;
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: DIRECTIONAL_COOKIE 
-- Hardware tier variant: Tier 3
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (272 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
  Matrix4x4 unity_WorldToLight at 192
  Vector4 _MainTex_ST at 256
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 hlslcc_mtx4x4unity_WorldToLight[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float2 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD4 [[ user(TEXCOORD4) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float4 u_xlat2;
    float u_xlat9;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat2 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat2);
    u_xlat2 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat2);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat2);
    u_xlat1 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3], input.POSITION0.wwww, u_xlat0);
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0.xy = u_xlat1.yy * VGlobals.hlslcc_mtx4x4unity_WorldToLight[1].xy;
    u_xlat0.xy = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[0].xy, u_xlat1.xx, u_xlat0.xy);
    u_xlat0.xy = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[2].xy, u_xlat1.zz, u_xlat0.xy);
    output.TEXCOORD3.xy = fma(VGlobals.hlslcc_mtx4x4unity_WorldToLight[3].xy, u_xlat1.ww, u_xlat0.xy);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat9 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat9 = rsqrt(u_xlat9);
    output.TEXCOORD1.xyz = float3(u_xlat9) * u_xlat0.xyz;
    output.TEXCOORD4 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Hardware tier variant: Tier 3
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0 sampler slot 1
Set 2D Texture "_LightTexture0" to slot 1 sampler slot 0

Constant Buffer "FGlobals" (88 bytes) on slot 0 {
  Matrix4x4 unity_WorldToLight at 16
  VectorHalf4 _WorldSpaceLightPos0 at 0
  VectorHalf4 _LightColor0 at 8
  VectorHalf4 _Color at 80
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    half4 _WorldSpaceLightPos0;
    half4 _LightColor0;
    float4 hlslcc_mtx4x4unity_WorldToLight[4];
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_LightTexture0 [[ sampler (0) ]],
    sampler sampler_MainTex [[ sampler (1) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    texture2d<float, access::sample > _LightTexture0 [[ texture(1) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float2 u_xlat0;
    half3 u_xlat16_0;
    half3 u_xlat16_1;
    half u_xlat16_7;
    u_xlat0.xy = input.TEXCOORD2.yy * FGlobals.hlslcc_mtx4x4unity_WorldToLight[1].xy;
    u_xlat0.xy = fma(FGlobals.hlslcc_mtx4x4unity_WorldToLight[0].xy, input.TEXCOORD2.xx, u_xlat0.xy);
    u_xlat0.xy = fma(FGlobals.hlslcc_mtx4x4unity_WorldToLight[2].xy, input.TEXCOORD2.zz, u_xlat0.xy);
    u_xlat0.xy = u_xlat0.xy + FGlobals.hlslcc_mtx4x4unity_WorldToLight[3].xy;
    u_xlat0.x = _LightTexture0.sample(sampler_LightTexture0, u_xlat0.xy).w;
    u_xlat16_1.xyz = half3(u_xlat0.xxx * float3(FGlobals._LightColor0.xyz));
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    u_xlat16_1.xyz = u_xlat16_1.xyz * u_xlat16_0.xyz;
    u_xlat16_7 = dot(input.TEXCOORD1.xyz, float3(FGlobals._WorldSpaceLightPos0.xyz));
    u_xlat16_7 = max(u_xlat16_7, half(0.0));
    output.SV_Target0.xyz = half3(u_xlat16_7) * u_xlat16_1.xyz;
    output.SV_Target0.w = half(1.0);
    return output;
}


 }


 // Stats for Vertex shader:
 //         gles: 3 math
 Pass {
  Name "PREPASS"
  Tags { "LIGHTMODE"="PREPASSBASE" "RenderType"="Opaque" }
  //////////////////////////////////
  //                              //
  //      Compiled programs       //
  //                              //
  //////////////////////////////////
//////////////////////////////////////////////////////
No keywords set in this variant.
-- Hardware tier variant: Tier 1
-- Vertex shader for "gles":
// Stats: 3 math
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
varying highp vec3 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_2;
  tmpvar_2[0] = unity_WorldToObject[0].xyz;
  tmpvar_2[1] = unity_WorldToObject[1].xyz;
  tmpvar_2[2] = unity_WorldToObject[2].xyz;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_1));
  xlv_TEXCOORD0 = normalize((_glesNormal * tmpvar_2));
  xlv_TEXCOORD1 = (unity_ObjectToWorld * _glesVertex).xyz;
}


#endif
#ifdef FRAGMENT
varying highp vec3 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 res_1;
  lowp vec3 tmpvar_2;
  tmpvar_2 = xlv_TEXCOORD0;
  res_1.xyz = ((tmpvar_2 * 0.5) + 0.5);
  res_1.w = 0.0;
  gl_FragData[0] = res_1;
}


#endif


-- Hardware tier variant: Tier 1
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
No keywords set in this variant.
-- Hardware tier variant: Tier 2
-- Vertex shader for "gles":
// Stats: 3 math
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
varying highp vec3 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_2;
  tmpvar_2[0] = unity_WorldToObject[0].xyz;
  tmpvar_2[1] = unity_WorldToObject[1].xyz;
  tmpvar_2[2] = unity_WorldToObject[2].xyz;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_1));
  xlv_TEXCOORD0 = normalize((_glesNormal * tmpvar_2));
  xlv_TEXCOORD1 = (unity_ObjectToWorld * _glesVertex).xyz;
}


#endif
#ifdef FRAGMENT
varying highp vec3 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 res_1;
  lowp vec3 tmpvar_2;
  tmpvar_2 = xlv_TEXCOORD0;
  res_1.xyz = ((tmpvar_2 * 0.5) + 0.5);
  res_1.w = 0.0;
  gl_FragData[0] = res_1;
}


#endif


-- Hardware tier variant: Tier 2
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
No keywords set in this variant.
-- Hardware tier variant: Tier 3
-- Vertex shader for "gles":
// Stats: 3 math
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
varying highp vec3 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
void main ()
{
  highp vec4 tmpvar_1;
  tmpvar_1.w = 1.0;
  tmpvar_1.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_2;
  tmpvar_2[0] = unity_WorldToObject[0].xyz;
  tmpvar_2[1] = unity_WorldToObject[1].xyz;
  tmpvar_2[2] = unity_WorldToObject[2].xyz;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_1));
  xlv_TEXCOORD0 = normalize((_glesNormal * tmpvar_2));
  xlv_TEXCOORD1 = (unity_ObjectToWorld * _glesVertex).xyz;
}


#endif
#ifdef FRAGMENT
varying highp vec3 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 res_1;
  lowp vec3 tmpvar_2;
  tmpvar_2 = xlv_TEXCOORD0;
  res_1.xyz = ((tmpvar_2 * 0.5) + 0.5);
  res_1.w = 0.0;
  gl_FragData[0] = res_1;
}


#endif


-- Hardware tier variant: Tier 3
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
No keywords set in this variant.
-- Hardware tier variant: Tier 1
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"

Constant Buffer "VGlobals" (192 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float3 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float u_xlat6;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD1.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = rsqrt(u_xlat6);
    output.TEXCOORD0.xyz = float3(u_xlat6) * u_xlat0.xyz;
    return output;
}


-- Hardware tier variant: Tier 1
-- Fragment shader for "metal":
Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct Mtl_FragmentIn
{
    float3 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    output.SV_Target0.xyz = half3(fma(input.TEXCOORD0.xyz, float3(0.5, 0.5, 0.5), float3(0.5, 0.5, 0.5)));
    output.SV_Target0.w = half(0.0);
    return output;
}


//////////////////////////////////////////////////////
No keywords set in this variant.
-- Hardware tier variant: Tier 2
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"

Constant Buffer "VGlobals" (192 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float3 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float u_xlat6;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD1.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = rsqrt(u_xlat6);
    output.TEXCOORD0.xyz = float3(u_xlat6) * u_xlat0.xyz;
    return output;
}


-- Hardware tier variant: Tier 2
-- Fragment shader for "metal":
Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct Mtl_FragmentIn
{
    float3 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    output.SV_Target0.xyz = half3(fma(input.TEXCOORD0.xyz, float3(0.5, 0.5, 0.5), float3(0.5, 0.5, 0.5)));
    output.SV_Target0.w = half(0.0);
    return output;
}


//////////////////////////////////////////////////////
No keywords set in this variant.
-- Hardware tier variant: Tier 3
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"

Constant Buffer "VGlobals" (192 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float3 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float u_xlat6;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD1.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = rsqrt(u_xlat6);
    output.TEXCOORD0.xyz = float3(u_xlat6) * u_xlat0.xyz;
    return output;
}


-- Hardware tier variant: Tier 3
-- Fragment shader for "metal":
Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct Mtl_FragmentIn
{
    float3 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    output.SV_Target0.xyz = half3(fma(input.TEXCOORD0.xyz, float3(0.5, 0.5, 0.5), float3(0.5, 0.5, 0.5)));
    output.SV_Target0.w = half(0.0);
    return output;
}


 }


 // Stats for Vertex shader:
 //         gles: 6 avg math (5..7), 2 texture
 Pass {
  Name "PREPASS"
  Tags { "LIGHTMODE"="PREPASSFINAL" "RenderType"="Opaque" }
  ZWrite Off
  //////////////////////////////////
  //                              //
  //      Compiled programs       //
  //                              //
  //////////////////////////////////
//////////////////////////////////////////////////////
No keywords set in this variant.
-- Hardware tier variant: Tier 1
-- Vertex shader for "gles":
// Stats: 7 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp vec4 _ProjectionParams;
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec4 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD3;
varying highp vec3 xlv_TEXCOORD4;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec3 tmpvar_2;
  highp vec4 tmpvar_3;
  highp vec4 tmpvar_4;
  tmpvar_4.w = 1.0;
  tmpvar_4.xyz = _glesVertex.xyz;
  tmpvar_3 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_4));
  highp vec4 o_5;
  highp vec4 tmpvar_6;
  tmpvar_6 = (tmpvar_3 * 0.5);
  highp vec2 tmpvar_7;
  tmpvar_7.x = tmpvar_6.x;
  tmpvar_7.y = (tmpvar_6.y * _ProjectionParams.x);
  o_5.xy = (tmpvar_7 + tmpvar_6.w);
  o_5.zw = tmpvar_3.zw;
  tmpvar_1.zw = vec2(0.0, 0.0);
  tmpvar_1.xy = vec2(0.0, 0.0);
  highp mat3 tmpvar_8;
  tmpvar_8[0] = unity_WorldToObject[0].xyz;
  tmpvar_8[1] = unity_WorldToObject[1].xyz;
  tmpvar_8[2] = unity_WorldToObject[2].xyz;
  highp vec4 tmpvar_9;
  tmpvar_9.w = 1.0;
  tmpvar_9.xyz = normalize((_glesNormal * tmpvar_8));
  mediump vec4 normal_10;
  normal_10 = tmpvar_9;
  mediump vec3 res_11;
  mediump vec3 x_12;
  x_12.x = dot (unity_SHAr, normal_10);
  x_12.y = dot (unity_SHAg, normal_10);
  x_12.z = dot (unity_SHAb, normal_10);
  mediump vec3 x1_13;
  mediump vec4 tmpvar_14;
  tmpvar_14 = (normal_10.xyzz * normal_10.yzzx);
  x1_13.x = dot (unity_SHBr, tmpvar_14);
  x1_13.y = dot (unity_SHBg, tmpvar_14);
  x1_13.z = dot (unity_SHBb, tmpvar_14);
  res_11 = (x_12 + (x1_13 + (unity_SHC.xyz * 
    ((normal_10.x * normal_10.x) - (normal_10.y * normal_10.y))
  )));
  mediump vec3 tmpvar_15;
  tmpvar_15 = max (((1.055 * 
    pow (max (res_11, vec3(0.0, 0.0, 0.0)), vec3(0.4166667, 0.4166667, 0.4166667))
  ) - 0.055), vec3(0.0, 0.0, 0.0));
  res_11 = tmpvar_15;
  tmpvar_2 = tmpvar_15;
  gl_Position = tmpvar_3;
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD2 = o_5;
  xlv_TEXCOORD3 = tmpvar_1;
  xlv_TEXCOORD4 = tmpvar_2;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
uniform sampler2D _LightBuffer;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec4 xlv_TEXCOORD2;
varying highp vec3 xlv_TEXCOORD4;
void main ()
{
  lowp vec4 tmpvar_1;
  mediump vec4 c_2;
  mediump vec4 light_3;
  lowp vec4 tmpvar_4;
  tmpvar_4 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  lowp vec4 tmpvar_5;
  tmpvar_5 = texture2DProj (_LightBuffer, xlv_TEXCOORD2);
  light_3 = tmpvar_5;
  light_3 = -(log2(max (light_3, vec4(0.001, 0.001, 0.001, 0.001))));
  light_3.xyz = (light_3.xyz + xlv_TEXCOORD4);
  lowp vec4 c_6;
  c_6.xyz = (tmpvar_4.xyz * light_3.xyz);
  c_6.w = tmpvar_4.w;
  c_2.xyz = c_6.xyz;
  c_2.w = 1.0;
  tmpvar_1 = c_2;
  gl_FragData[0] = tmpvar_1;
}


#endif


-- Hardware tier variant: Tier 1
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
No keywords set in this variant.
-- Hardware tier variant: Tier 2
-- Vertex shader for "gles":
// Stats: 7 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp vec4 _ProjectionParams;
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec4 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD3;
varying highp vec3 xlv_TEXCOORD4;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec3 tmpvar_2;
  highp vec4 tmpvar_3;
  highp vec4 tmpvar_4;
  tmpvar_4.w = 1.0;
  tmpvar_4.xyz = _glesVertex.xyz;
  tmpvar_3 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_4));
  highp vec4 o_5;
  highp vec4 tmpvar_6;
  tmpvar_6 = (tmpvar_3 * 0.5);
  highp vec2 tmpvar_7;
  tmpvar_7.x = tmpvar_6.x;
  tmpvar_7.y = (tmpvar_6.y * _ProjectionParams.x);
  o_5.xy = (tmpvar_7 + tmpvar_6.w);
  o_5.zw = tmpvar_3.zw;
  tmpvar_1.zw = vec2(0.0, 0.0);
  tmpvar_1.xy = vec2(0.0, 0.0);
  highp mat3 tmpvar_8;
  tmpvar_8[0] = unity_WorldToObject[0].xyz;
  tmpvar_8[1] = unity_WorldToObject[1].xyz;
  tmpvar_8[2] = unity_WorldToObject[2].xyz;
  highp vec4 tmpvar_9;
  tmpvar_9.w = 1.0;
  tmpvar_9.xyz = normalize((_glesNormal * tmpvar_8));
  mediump vec4 normal_10;
  normal_10 = tmpvar_9;
  mediump vec3 res_11;
  mediump vec3 x_12;
  x_12.x = dot (unity_SHAr, normal_10);
  x_12.y = dot (unity_SHAg, normal_10);
  x_12.z = dot (unity_SHAb, normal_10);
  mediump vec3 x1_13;
  mediump vec4 tmpvar_14;
  tmpvar_14 = (normal_10.xyzz * normal_10.yzzx);
  x1_13.x = dot (unity_SHBr, tmpvar_14);
  x1_13.y = dot (unity_SHBg, tmpvar_14);
  x1_13.z = dot (unity_SHBb, tmpvar_14);
  res_11 = (x_12 + (x1_13 + (unity_SHC.xyz * 
    ((normal_10.x * normal_10.x) - (normal_10.y * normal_10.y))
  )));
  mediump vec3 tmpvar_15;
  tmpvar_15 = max (((1.055 * 
    pow (max (res_11, vec3(0.0, 0.0, 0.0)), vec3(0.4166667, 0.4166667, 0.4166667))
  ) - 0.055), vec3(0.0, 0.0, 0.0));
  res_11 = tmpvar_15;
  tmpvar_2 = tmpvar_15;
  gl_Position = tmpvar_3;
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD2 = o_5;
  xlv_TEXCOORD3 = tmpvar_1;
  xlv_TEXCOORD4 = tmpvar_2;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
uniform sampler2D _LightBuffer;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec4 xlv_TEXCOORD2;
varying highp vec3 xlv_TEXCOORD4;
void main ()
{
  lowp vec4 tmpvar_1;
  mediump vec4 c_2;
  mediump vec4 light_3;
  lowp vec4 tmpvar_4;
  tmpvar_4 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  lowp vec4 tmpvar_5;
  tmpvar_5 = texture2DProj (_LightBuffer, xlv_TEXCOORD2);
  light_3 = tmpvar_5;
  light_3 = -(log2(max (light_3, vec4(0.001, 0.001, 0.001, 0.001))));
  light_3.xyz = (light_3.xyz + xlv_TEXCOORD4);
  lowp vec4 c_6;
  c_6.xyz = (tmpvar_4.xyz * light_3.xyz);
  c_6.w = tmpvar_4.w;
  c_2.xyz = c_6.xyz;
  c_2.w = 1.0;
  tmpvar_1 = c_2;
  gl_FragData[0] = tmpvar_1;
}


#endif


-- Hardware tier variant: Tier 2
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
No keywords set in this variant.
-- Hardware tier variant: Tier 3
-- Vertex shader for "gles":
// Stats: 7 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp vec4 _ProjectionParams;
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec4 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD3;
varying highp vec3 xlv_TEXCOORD4;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec3 tmpvar_2;
  highp vec4 tmpvar_3;
  highp vec4 tmpvar_4;
  tmpvar_4.w = 1.0;
  tmpvar_4.xyz = _glesVertex.xyz;
  tmpvar_3 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_4));
  highp vec4 o_5;
  highp vec4 tmpvar_6;
  tmpvar_6 = (tmpvar_3 * 0.5);
  highp vec2 tmpvar_7;
  tmpvar_7.x = tmpvar_6.x;
  tmpvar_7.y = (tmpvar_6.y * _ProjectionParams.x);
  o_5.xy = (tmpvar_7 + tmpvar_6.w);
  o_5.zw = tmpvar_3.zw;
  tmpvar_1.zw = vec2(0.0, 0.0);
  tmpvar_1.xy = vec2(0.0, 0.0);
  highp mat3 tmpvar_8;
  tmpvar_8[0] = unity_WorldToObject[0].xyz;
  tmpvar_8[1] = unity_WorldToObject[1].xyz;
  tmpvar_8[2] = unity_WorldToObject[2].xyz;
  highp vec4 tmpvar_9;
  tmpvar_9.w = 1.0;
  tmpvar_9.xyz = normalize((_glesNormal * tmpvar_8));
  mediump vec4 normal_10;
  normal_10 = tmpvar_9;
  mediump vec3 res_11;
  mediump vec3 x_12;
  x_12.x = dot (unity_SHAr, normal_10);
  x_12.y = dot (unity_SHAg, normal_10);
  x_12.z = dot (unity_SHAb, normal_10);
  mediump vec3 x1_13;
  mediump vec4 tmpvar_14;
  tmpvar_14 = (normal_10.xyzz * normal_10.yzzx);
  x1_13.x = dot (unity_SHBr, tmpvar_14);
  x1_13.y = dot (unity_SHBg, tmpvar_14);
  x1_13.z = dot (unity_SHBb, tmpvar_14);
  res_11 = (x_12 + (x1_13 + (unity_SHC.xyz * 
    ((normal_10.x * normal_10.x) - (normal_10.y * normal_10.y))
  )));
  mediump vec3 tmpvar_15;
  tmpvar_15 = max (((1.055 * 
    pow (max (res_11, vec3(0.0, 0.0, 0.0)), vec3(0.4166667, 0.4166667, 0.4166667))
  ) - 0.055), vec3(0.0, 0.0, 0.0));
  res_11 = tmpvar_15;
  tmpvar_2 = tmpvar_15;
  gl_Position = tmpvar_3;
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD2 = o_5;
  xlv_TEXCOORD3 = tmpvar_1;
  xlv_TEXCOORD4 = tmpvar_2;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
uniform sampler2D _LightBuffer;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec4 xlv_TEXCOORD2;
varying highp vec3 xlv_TEXCOORD4;
void main ()
{
  lowp vec4 tmpvar_1;
  mediump vec4 c_2;
  mediump vec4 light_3;
  lowp vec4 tmpvar_4;
  tmpvar_4 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  lowp vec4 tmpvar_5;
  tmpvar_5 = texture2DProj (_LightBuffer, xlv_TEXCOORD2);
  light_3 = tmpvar_5;
  light_3 = -(log2(max (light_3, vec4(0.001, 0.001, 0.001, 0.001))));
  light_3.xyz = (light_3.xyz + xlv_TEXCOORD4);
  lowp vec4 c_6;
  c_6.xyz = (tmpvar_4.xyz * light_3.xyz);
  c_6.w = tmpvar_4.w;
  c_2.xyz = c_6.xyz;
  c_2.w = 1.0;
  tmpvar_1 = c_2;
  gl_FragData[0] = tmpvar_1;
}


#endif


-- Hardware tier variant: Tier 3
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
No keywords set in this variant.
-- Hardware tier variant: Tier 1
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (288 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 80
  Matrix4x4 unity_WorldToObject at 144
  Matrix4x4 unity_MatrixVP at 208
  Vector4 _ProjectionParams at 0
  VectorHalf4 unity_SHAr at 16
  VectorHalf4 unity_SHAg at 24
  VectorHalf4 unity_SHAb at 32
  VectorHalf4 unity_SHBr at 40
  VectorHalf4 unity_SHBg at 48
  VectorHalf4 unity_SHBb at 56
  VectorHalf4 unity_SHC at 64
  Vector4 _MainTex_ST at 272
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 _ProjectionParams;
    half4 unity_SHAr;
    half4 unity_SHAg;
    half4 unity_SHAb;
    half4 unity_SHBr;
    half4 unity_SHBg;
    half4 unity_SHBb;
    half4 unity_SHC;
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float4 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float3 TEXCOORD4 [[ user(TEXCOORD4) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    half4 u_xlat16_1;
    half3 u_xlat16_2;
    half3 u_xlat16_3;
    float u_xlat12;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD1.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.mtl_Position = u_xlat0;
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.y = u_xlat0.y * VGlobals._ProjectionParams.x;
    u_xlat1.xzw = u_xlat0.xwy * float3(0.5, 0.5, 0.5);
    output.TEXCOORD2.zw = u_xlat0.zw;
    output.TEXCOORD2.xy = u_xlat1.zz + u_xlat1.xw;
    output.TEXCOORD3 = float4(0.0, 0.0, 0.0, 0.0);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat12 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat12 = rsqrt(u_xlat12);
    u_xlat0.xyz = float3(u_xlat12) * u_xlat0.xyz;
    u_xlat16_2.x = half(u_xlat0.y * u_xlat0.y);
    u_xlat16_2.x = half(fma(u_xlat0.x, u_xlat0.x, (-float(u_xlat16_2.x))));
    u_xlat16_1 = half4(u_xlat0.yzzx * u_xlat0.xyzz);
    u_xlat16_3.x = dot(VGlobals.unity_SHBr, u_xlat16_1);
    u_xlat16_3.y = dot(VGlobals.unity_SHBg, u_xlat16_1);
    u_xlat16_3.z = dot(VGlobals.unity_SHBb, u_xlat16_1);
    u_xlat16_2.xyz = fma(VGlobals.unity_SHC.xyz, u_xlat16_2.xxx, u_xlat16_3.xyz);
    u_xlat0.w = 1.0;
    u_xlat16_3.x = half(dot(float4(VGlobals.unity_SHAr), u_xlat0));
    u_xlat16_3.y = half(dot(float4(VGlobals.unity_SHAg), u_xlat0));
    u_xlat16_3.z = half(dot(float4(VGlobals.unity_SHAb), u_xlat0));
    u_xlat16_2.xyz = u_xlat16_2.xyz + u_xlat16_3.xyz;
    u_xlat16_2.xyz = max(u_xlat16_2.xyz, half3(0.0, 0.0, 0.0));
    u_xlat0.xyz = log2(float3(u_xlat16_2.xyz));
    u_xlat0.xyz = u_xlat0.xyz * float3(0.416666657, 0.416666657, 0.416666657);
    u_xlat0.xyz = exp2(u_xlat0.xyz);
    u_xlat0.xyz = fma(u_xlat0.xyz, float3(1.05499995, 1.05499995, 1.05499995), float3(-0.0549999997, -0.0549999997, -0.0549999997));
    output.TEXCOORD4.xyz = max(u_xlat0.xyz, float3(0.0, 0.0, 0.0));
    return output;
}


-- Hardware tier variant: Tier 1
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0
Set 2D Texture "_LightBuffer" to slot 1

Constant Buffer "FGlobals" (8 bytes) on slot 0 {
  VectorHalf4 _Color at 0
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float4 TEXCOORD2 [[ user(TEXCOORD2) ]] ;
    float3 TEXCOORD4 [[ user(TEXCOORD4) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_MainTex [[ sampler (0) ]],
    sampler sampler_LightBuffer [[ sampler (1) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    texture2d<half, access::sample > _LightBuffer [[ texture(1) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float3 u_xlat0;
    half3 u_xlat16_0;
    half3 u_xlat16_1;
    half3 u_xlat16_2;
    u_xlat0.xy = input.TEXCOORD2.xy / input.TEXCOORD2.ww;
    u_xlat16_0.xyz = _LightBuffer.sample(sampler_LightBuffer, u_xlat0.xy).xyz;
    u_xlat16_1.xyz = max(u_xlat16_0.xyz, half3(0.00100000005, 0.00100000005, 0.00100000005));
    u_xlat16_1.xyz = log2(u_xlat16_1.xyz);
    u_xlat0.xyz = (-float3(u_xlat16_1.xyz)) + input.TEXCOORD4.xyz;
    u_xlat16_2.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_2.xyz = u_xlat16_2.xyz * FGlobals._Color.xyz;
    output.SV_Target0.xyz = half3(u_xlat0.xyz * float3(u_xlat16_2.xyz));
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
No keywords set in this variant.
-- Hardware tier variant: Tier 2
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (288 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 80
  Matrix4x4 unity_WorldToObject at 144
  Matrix4x4 unity_MatrixVP at 208
  Vector4 _ProjectionParams at 0
  VectorHalf4 unity_SHAr at 16
  VectorHalf4 unity_SHAg at 24
  VectorHalf4 unity_SHAb at 32
  VectorHalf4 unity_SHBr at 40
  VectorHalf4 unity_SHBg at 48
  VectorHalf4 unity_SHBb at 56
  VectorHalf4 unity_SHC at 64
  Vector4 _MainTex_ST at 272
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 _ProjectionParams;
    half4 unity_SHAr;
    half4 unity_SHAg;
    half4 unity_SHAb;
    half4 unity_SHBr;
    half4 unity_SHBg;
    half4 unity_SHBb;
    half4 unity_SHC;
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float4 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float3 TEXCOORD4 [[ user(TEXCOORD4) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    half4 u_xlat16_1;
    half3 u_xlat16_2;
    half3 u_xlat16_3;
    float u_xlat12;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD1.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.mtl_Position = u_xlat0;
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.y = u_xlat0.y * VGlobals._ProjectionParams.x;
    u_xlat1.xzw = u_xlat0.xwy * float3(0.5, 0.5, 0.5);
    output.TEXCOORD2.zw = u_xlat0.zw;
    output.TEXCOORD2.xy = u_xlat1.zz + u_xlat1.xw;
    output.TEXCOORD3 = float4(0.0, 0.0, 0.0, 0.0);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat12 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat12 = rsqrt(u_xlat12);
    u_xlat0.xyz = float3(u_xlat12) * u_xlat0.xyz;
    u_xlat16_2.x = half(u_xlat0.y * u_xlat0.y);
    u_xlat16_2.x = half(fma(u_xlat0.x, u_xlat0.x, (-float(u_xlat16_2.x))));
    u_xlat16_1 = half4(u_xlat0.yzzx * u_xlat0.xyzz);
    u_xlat16_3.x = dot(VGlobals.unity_SHBr, u_xlat16_1);
    u_xlat16_3.y = dot(VGlobals.unity_SHBg, u_xlat16_1);
    u_xlat16_3.z = dot(VGlobals.unity_SHBb, u_xlat16_1);
    u_xlat16_2.xyz = fma(VGlobals.unity_SHC.xyz, u_xlat16_2.xxx, u_xlat16_3.xyz);
    u_xlat0.w = 1.0;
    u_xlat16_3.x = half(dot(float4(VGlobals.unity_SHAr), u_xlat0));
    u_xlat16_3.y = half(dot(float4(VGlobals.unity_SHAg), u_xlat0));
    u_xlat16_3.z = half(dot(float4(VGlobals.unity_SHAb), u_xlat0));
    u_xlat16_2.xyz = u_xlat16_2.xyz + u_xlat16_3.xyz;
    u_xlat16_2.xyz = max(u_xlat16_2.xyz, half3(0.0, 0.0, 0.0));
    u_xlat0.xyz = log2(float3(u_xlat16_2.xyz));
    u_xlat0.xyz = u_xlat0.xyz * float3(0.416666657, 0.416666657, 0.416666657);
    u_xlat0.xyz = exp2(u_xlat0.xyz);
    u_xlat0.xyz = fma(u_xlat0.xyz, float3(1.05499995, 1.05499995, 1.05499995), float3(-0.0549999997, -0.0549999997, -0.0549999997));
    output.TEXCOORD4.xyz = max(u_xlat0.xyz, float3(0.0, 0.0, 0.0));
    return output;
}


-- Hardware tier variant: Tier 2
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0
Set 2D Texture "_LightBuffer" to slot 1

Constant Buffer "FGlobals" (8 bytes) on slot 0 {
  VectorHalf4 _Color at 0
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float4 TEXCOORD2 [[ user(TEXCOORD2) ]] ;
    float3 TEXCOORD4 [[ user(TEXCOORD4) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_MainTex [[ sampler (0) ]],
    sampler sampler_LightBuffer [[ sampler (1) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    texture2d<half, access::sample > _LightBuffer [[ texture(1) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float3 u_xlat0;
    half3 u_xlat16_0;
    half3 u_xlat16_1;
    half3 u_xlat16_2;
    u_xlat0.xy = input.TEXCOORD2.xy / input.TEXCOORD2.ww;
    u_xlat16_0.xyz = _LightBuffer.sample(sampler_LightBuffer, u_xlat0.xy).xyz;
    u_xlat16_1.xyz = max(u_xlat16_0.xyz, half3(0.00100000005, 0.00100000005, 0.00100000005));
    u_xlat16_1.xyz = log2(u_xlat16_1.xyz);
    u_xlat0.xyz = (-float3(u_xlat16_1.xyz)) + input.TEXCOORD4.xyz;
    u_xlat16_2.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_2.xyz = u_xlat16_2.xyz * FGlobals._Color.xyz;
    output.SV_Target0.xyz = half3(u_xlat0.xyz * float3(u_xlat16_2.xyz));
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
No keywords set in this variant.
-- Hardware tier variant: Tier 3
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (288 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 80
  Matrix4x4 unity_WorldToObject at 144
  Matrix4x4 unity_MatrixVP at 208
  Vector4 _ProjectionParams at 0
  VectorHalf4 unity_SHAr at 16
  VectorHalf4 unity_SHAg at 24
  VectorHalf4 unity_SHAb at 32
  VectorHalf4 unity_SHBr at 40
  VectorHalf4 unity_SHBg at 48
  VectorHalf4 unity_SHBb at 56
  VectorHalf4 unity_SHC at 64
  Vector4 _MainTex_ST at 272
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 _ProjectionParams;
    half4 unity_SHAr;
    half4 unity_SHAg;
    half4 unity_SHAb;
    half4 unity_SHBr;
    half4 unity_SHBg;
    half4 unity_SHBb;
    half4 unity_SHC;
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float4 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float3 TEXCOORD4 [[ user(TEXCOORD4) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    half4 u_xlat16_1;
    half3 u_xlat16_2;
    half3 u_xlat16_3;
    float u_xlat12;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD1.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.mtl_Position = u_xlat0;
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.y = u_xlat0.y * VGlobals._ProjectionParams.x;
    u_xlat1.xzw = u_xlat0.xwy * float3(0.5, 0.5, 0.5);
    output.TEXCOORD2.zw = u_xlat0.zw;
    output.TEXCOORD2.xy = u_xlat1.zz + u_xlat1.xw;
    output.TEXCOORD3 = float4(0.0, 0.0, 0.0, 0.0);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat12 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat12 = rsqrt(u_xlat12);
    u_xlat0.xyz = float3(u_xlat12) * u_xlat0.xyz;
    u_xlat16_2.x = half(u_xlat0.y * u_xlat0.y);
    u_xlat16_2.x = half(fma(u_xlat0.x, u_xlat0.x, (-float(u_xlat16_2.x))));
    u_xlat16_1 = half4(u_xlat0.yzzx * u_xlat0.xyzz);
    u_xlat16_3.x = dot(VGlobals.unity_SHBr, u_xlat16_1);
    u_xlat16_3.y = dot(VGlobals.unity_SHBg, u_xlat16_1);
    u_xlat16_3.z = dot(VGlobals.unity_SHBb, u_xlat16_1);
    u_xlat16_2.xyz = fma(VGlobals.unity_SHC.xyz, u_xlat16_2.xxx, u_xlat16_3.xyz);
    u_xlat0.w = 1.0;
    u_xlat16_3.x = half(dot(float4(VGlobals.unity_SHAr), u_xlat0));
    u_xlat16_3.y = half(dot(float4(VGlobals.unity_SHAg), u_xlat0));
    u_xlat16_3.z = half(dot(float4(VGlobals.unity_SHAb), u_xlat0));
    u_xlat16_2.xyz = u_xlat16_2.xyz + u_xlat16_3.xyz;
    u_xlat16_2.xyz = max(u_xlat16_2.xyz, half3(0.0, 0.0, 0.0));
    u_xlat0.xyz = log2(float3(u_xlat16_2.xyz));
    u_xlat0.xyz = u_xlat0.xyz * float3(0.416666657, 0.416666657, 0.416666657);
    u_xlat0.xyz = exp2(u_xlat0.xyz);
    u_xlat0.xyz = fma(u_xlat0.xyz, float3(1.05499995, 1.05499995, 1.05499995), float3(-0.0549999997, -0.0549999997, -0.0549999997));
    output.TEXCOORD4.xyz = max(u_xlat0.xyz, float3(0.0, 0.0, 0.0));
    return output;
}


-- Hardware tier variant: Tier 3
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0
Set 2D Texture "_LightBuffer" to slot 1

Constant Buffer "FGlobals" (8 bytes) on slot 0 {
  VectorHalf4 _Color at 0
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float4 TEXCOORD2 [[ user(TEXCOORD2) ]] ;
    float3 TEXCOORD4 [[ user(TEXCOORD4) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_MainTex [[ sampler (0) ]],
    sampler sampler_LightBuffer [[ sampler (1) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    texture2d<half, access::sample > _LightBuffer [[ texture(1) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float3 u_xlat0;
    half3 u_xlat16_0;
    half3 u_xlat16_1;
    half3 u_xlat16_2;
    u_xlat0.xy = input.TEXCOORD2.xy / input.TEXCOORD2.ww;
    u_xlat16_0.xyz = _LightBuffer.sample(sampler_LightBuffer, u_xlat0.xy).xyz;
    u_xlat16_1.xyz = max(u_xlat16_0.xyz, half3(0.00100000005, 0.00100000005, 0.00100000005));
    u_xlat16_1.xyz = log2(u_xlat16_1.xyz);
    u_xlat0.xyz = (-float3(u_xlat16_1.xyz)) + input.TEXCOORD4.xyz;
    u_xlat16_2.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_2.xyz = u_xlat16_2.xyz * FGlobals._Color.xyz;
    output.SV_Target0.xyz = half3(u_xlat0.xyz * float3(u_xlat16_2.xyz));
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: LIGHTPROBE_SH 
-- Hardware tier variant: Tier 1
-- Vertex shader for "gles":
// Stats: 7 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp vec4 _ProjectionParams;
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec4 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD3;
varying highp vec3 xlv_TEXCOORD4;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec3 tmpvar_2;
  highp vec4 tmpvar_3;
  highp vec4 tmpvar_4;
  tmpvar_4.w = 1.0;
  tmpvar_4.xyz = _glesVertex.xyz;
  tmpvar_3 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_4));
  highp vec4 o_5;
  highp vec4 tmpvar_6;
  tmpvar_6 = (tmpvar_3 * 0.5);
  highp vec2 tmpvar_7;
  tmpvar_7.x = tmpvar_6.x;
  tmpvar_7.y = (tmpvar_6.y * _ProjectionParams.x);
  o_5.xy = (tmpvar_7 + tmpvar_6.w);
  o_5.zw = tmpvar_3.zw;
  tmpvar_1.zw = vec2(0.0, 0.0);
  tmpvar_1.xy = vec2(0.0, 0.0);
  highp mat3 tmpvar_8;
  tmpvar_8[0] = unity_WorldToObject[0].xyz;
  tmpvar_8[1] = unity_WorldToObject[1].xyz;
  tmpvar_8[2] = unity_WorldToObject[2].xyz;
  highp vec4 tmpvar_9;
  tmpvar_9.w = 1.0;
  tmpvar_9.xyz = normalize((_glesNormal * tmpvar_8));
  mediump vec4 normal_10;
  normal_10 = tmpvar_9;
  mediump vec3 res_11;
  mediump vec3 x_12;
  x_12.x = dot (unity_SHAr, normal_10);
  x_12.y = dot (unity_SHAg, normal_10);
  x_12.z = dot (unity_SHAb, normal_10);
  mediump vec3 x1_13;
  mediump vec4 tmpvar_14;
  tmpvar_14 = (normal_10.xyzz * normal_10.yzzx);
  x1_13.x = dot (unity_SHBr, tmpvar_14);
  x1_13.y = dot (unity_SHBg, tmpvar_14);
  x1_13.z = dot (unity_SHBb, tmpvar_14);
  res_11 = (x_12 + (x1_13 + (unity_SHC.xyz * 
    ((normal_10.x * normal_10.x) - (normal_10.y * normal_10.y))
  )));
  mediump vec3 tmpvar_15;
  tmpvar_15 = max (((1.055 * 
    pow (max (res_11, vec3(0.0, 0.0, 0.0)), vec3(0.4166667, 0.4166667, 0.4166667))
  ) - 0.055), vec3(0.0, 0.0, 0.0));
  res_11 = tmpvar_15;
  tmpvar_2 = tmpvar_15;
  gl_Position = tmpvar_3;
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD2 = o_5;
  xlv_TEXCOORD3 = tmpvar_1;
  xlv_TEXCOORD4 = tmpvar_2;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
uniform sampler2D _LightBuffer;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec4 xlv_TEXCOORD2;
varying highp vec3 xlv_TEXCOORD4;
void main ()
{
  lowp vec4 tmpvar_1;
  mediump vec4 c_2;
  mediump vec4 light_3;
  lowp vec4 tmpvar_4;
  tmpvar_4 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  lowp vec4 tmpvar_5;
  tmpvar_5 = texture2DProj (_LightBuffer, xlv_TEXCOORD2);
  light_3 = tmpvar_5;
  light_3 = -(log2(max (light_3, vec4(0.001, 0.001, 0.001, 0.001))));
  light_3.xyz = (light_3.xyz + xlv_TEXCOORD4);
  lowp vec4 c_6;
  c_6.xyz = (tmpvar_4.xyz * light_3.xyz);
  c_6.w = tmpvar_4.w;
  c_2.xyz = c_6.xyz;
  c_2.w = 1.0;
  tmpvar_1 = c_2;
  gl_FragData[0] = tmpvar_1;
}


#endif


-- Hardware tier variant: Tier 1
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: LIGHTPROBE_SH 
-- Hardware tier variant: Tier 2
-- Vertex shader for "gles":
// Stats: 7 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp vec4 _ProjectionParams;
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec4 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD3;
varying highp vec3 xlv_TEXCOORD4;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec3 tmpvar_2;
  highp vec4 tmpvar_3;
  highp vec4 tmpvar_4;
  tmpvar_4.w = 1.0;
  tmpvar_4.xyz = _glesVertex.xyz;
  tmpvar_3 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_4));
  highp vec4 o_5;
  highp vec4 tmpvar_6;
  tmpvar_6 = (tmpvar_3 * 0.5);
  highp vec2 tmpvar_7;
  tmpvar_7.x = tmpvar_6.x;
  tmpvar_7.y = (tmpvar_6.y * _ProjectionParams.x);
  o_5.xy = (tmpvar_7 + tmpvar_6.w);
  o_5.zw = tmpvar_3.zw;
  tmpvar_1.zw = vec2(0.0, 0.0);
  tmpvar_1.xy = vec2(0.0, 0.0);
  highp mat3 tmpvar_8;
  tmpvar_8[0] = unity_WorldToObject[0].xyz;
  tmpvar_8[1] = unity_WorldToObject[1].xyz;
  tmpvar_8[2] = unity_WorldToObject[2].xyz;
  highp vec4 tmpvar_9;
  tmpvar_9.w = 1.0;
  tmpvar_9.xyz = normalize((_glesNormal * tmpvar_8));
  mediump vec4 normal_10;
  normal_10 = tmpvar_9;
  mediump vec3 res_11;
  mediump vec3 x_12;
  x_12.x = dot (unity_SHAr, normal_10);
  x_12.y = dot (unity_SHAg, normal_10);
  x_12.z = dot (unity_SHAb, normal_10);
  mediump vec3 x1_13;
  mediump vec4 tmpvar_14;
  tmpvar_14 = (normal_10.xyzz * normal_10.yzzx);
  x1_13.x = dot (unity_SHBr, tmpvar_14);
  x1_13.y = dot (unity_SHBg, tmpvar_14);
  x1_13.z = dot (unity_SHBb, tmpvar_14);
  res_11 = (x_12 + (x1_13 + (unity_SHC.xyz * 
    ((normal_10.x * normal_10.x) - (normal_10.y * normal_10.y))
  )));
  mediump vec3 tmpvar_15;
  tmpvar_15 = max (((1.055 * 
    pow (max (res_11, vec3(0.0, 0.0, 0.0)), vec3(0.4166667, 0.4166667, 0.4166667))
  ) - 0.055), vec3(0.0, 0.0, 0.0));
  res_11 = tmpvar_15;
  tmpvar_2 = tmpvar_15;
  gl_Position = tmpvar_3;
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD2 = o_5;
  xlv_TEXCOORD3 = tmpvar_1;
  xlv_TEXCOORD4 = tmpvar_2;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
uniform sampler2D _LightBuffer;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec4 xlv_TEXCOORD2;
varying highp vec3 xlv_TEXCOORD4;
void main ()
{
  lowp vec4 tmpvar_1;
  mediump vec4 c_2;
  mediump vec4 light_3;
  lowp vec4 tmpvar_4;
  tmpvar_4 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  lowp vec4 tmpvar_5;
  tmpvar_5 = texture2DProj (_LightBuffer, xlv_TEXCOORD2);
  light_3 = tmpvar_5;
  light_3 = -(log2(max (light_3, vec4(0.001, 0.001, 0.001, 0.001))));
  light_3.xyz = (light_3.xyz + xlv_TEXCOORD4);
  lowp vec4 c_6;
  c_6.xyz = (tmpvar_4.xyz * light_3.xyz);
  c_6.w = tmpvar_4.w;
  c_2.xyz = c_6.xyz;
  c_2.w = 1.0;
  tmpvar_1 = c_2;
  gl_FragData[0] = tmpvar_1;
}


#endif


-- Hardware tier variant: Tier 2
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: LIGHTPROBE_SH 
-- Hardware tier variant: Tier 3
-- Vertex shader for "gles":
// Stats: 7 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp vec4 _ProjectionParams;
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec4 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD3;
varying highp vec3 xlv_TEXCOORD4;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec3 tmpvar_2;
  highp vec4 tmpvar_3;
  highp vec4 tmpvar_4;
  tmpvar_4.w = 1.0;
  tmpvar_4.xyz = _glesVertex.xyz;
  tmpvar_3 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_4));
  highp vec4 o_5;
  highp vec4 tmpvar_6;
  tmpvar_6 = (tmpvar_3 * 0.5);
  highp vec2 tmpvar_7;
  tmpvar_7.x = tmpvar_6.x;
  tmpvar_7.y = (tmpvar_6.y * _ProjectionParams.x);
  o_5.xy = (tmpvar_7 + tmpvar_6.w);
  o_5.zw = tmpvar_3.zw;
  tmpvar_1.zw = vec2(0.0, 0.0);
  tmpvar_1.xy = vec2(0.0, 0.0);
  highp mat3 tmpvar_8;
  tmpvar_8[0] = unity_WorldToObject[0].xyz;
  tmpvar_8[1] = unity_WorldToObject[1].xyz;
  tmpvar_8[2] = unity_WorldToObject[2].xyz;
  highp vec4 tmpvar_9;
  tmpvar_9.w = 1.0;
  tmpvar_9.xyz = normalize((_glesNormal * tmpvar_8));
  mediump vec4 normal_10;
  normal_10 = tmpvar_9;
  mediump vec3 res_11;
  mediump vec3 x_12;
  x_12.x = dot (unity_SHAr, normal_10);
  x_12.y = dot (unity_SHAg, normal_10);
  x_12.z = dot (unity_SHAb, normal_10);
  mediump vec3 x1_13;
  mediump vec4 tmpvar_14;
  tmpvar_14 = (normal_10.xyzz * normal_10.yzzx);
  x1_13.x = dot (unity_SHBr, tmpvar_14);
  x1_13.y = dot (unity_SHBg, tmpvar_14);
  x1_13.z = dot (unity_SHBb, tmpvar_14);
  res_11 = (x_12 + (x1_13 + (unity_SHC.xyz * 
    ((normal_10.x * normal_10.x) - (normal_10.y * normal_10.y))
  )));
  mediump vec3 tmpvar_15;
  tmpvar_15 = max (((1.055 * 
    pow (max (res_11, vec3(0.0, 0.0, 0.0)), vec3(0.4166667, 0.4166667, 0.4166667))
  ) - 0.055), vec3(0.0, 0.0, 0.0));
  res_11 = tmpvar_15;
  tmpvar_2 = tmpvar_15;
  gl_Position = tmpvar_3;
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD2 = o_5;
  xlv_TEXCOORD3 = tmpvar_1;
  xlv_TEXCOORD4 = tmpvar_2;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
uniform sampler2D _LightBuffer;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec4 xlv_TEXCOORD2;
varying highp vec3 xlv_TEXCOORD4;
void main ()
{
  lowp vec4 tmpvar_1;
  mediump vec4 c_2;
  mediump vec4 light_3;
  lowp vec4 tmpvar_4;
  tmpvar_4 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  lowp vec4 tmpvar_5;
  tmpvar_5 = texture2DProj (_LightBuffer, xlv_TEXCOORD2);
  light_3 = tmpvar_5;
  light_3 = -(log2(max (light_3, vec4(0.001, 0.001, 0.001, 0.001))));
  light_3.xyz = (light_3.xyz + xlv_TEXCOORD4);
  lowp vec4 c_6;
  c_6.xyz = (tmpvar_4.xyz * light_3.xyz);
  c_6.w = tmpvar_4.w;
  c_2.xyz = c_6.xyz;
  c_2.w = 1.0;
  tmpvar_1 = c_2;
  gl_FragData[0] = tmpvar_1;
}


#endif


-- Hardware tier variant: Tier 3
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: LIGHTPROBE_SH 
-- Hardware tier variant: Tier 1
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (288 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 80
  Matrix4x4 unity_WorldToObject at 144
  Matrix4x4 unity_MatrixVP at 208
  Vector4 _ProjectionParams at 0
  VectorHalf4 unity_SHAr at 16
  VectorHalf4 unity_SHAg at 24
  VectorHalf4 unity_SHAb at 32
  VectorHalf4 unity_SHBr at 40
  VectorHalf4 unity_SHBg at 48
  VectorHalf4 unity_SHBb at 56
  VectorHalf4 unity_SHC at 64
  Vector4 _MainTex_ST at 272
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 _ProjectionParams;
    half4 unity_SHAr;
    half4 unity_SHAg;
    half4 unity_SHAb;
    half4 unity_SHBr;
    half4 unity_SHBg;
    half4 unity_SHBb;
    half4 unity_SHC;
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float4 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float3 TEXCOORD4 [[ user(TEXCOORD4) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    half4 u_xlat16_1;
    half3 u_xlat16_2;
    half3 u_xlat16_3;
    float u_xlat12;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD1.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.mtl_Position = u_xlat0;
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.y = u_xlat0.y * VGlobals._ProjectionParams.x;
    u_xlat1.xzw = u_xlat0.xwy * float3(0.5, 0.5, 0.5);
    output.TEXCOORD2.zw = u_xlat0.zw;
    output.TEXCOORD2.xy = u_xlat1.zz + u_xlat1.xw;
    output.TEXCOORD3 = float4(0.0, 0.0, 0.0, 0.0);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat12 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat12 = rsqrt(u_xlat12);
    u_xlat0.xyz = float3(u_xlat12) * u_xlat0.xyz;
    u_xlat16_2.x = half(u_xlat0.y * u_xlat0.y);
    u_xlat16_2.x = half(fma(u_xlat0.x, u_xlat0.x, (-float(u_xlat16_2.x))));
    u_xlat16_1 = half4(u_xlat0.yzzx * u_xlat0.xyzz);
    u_xlat16_3.x = dot(VGlobals.unity_SHBr, u_xlat16_1);
    u_xlat16_3.y = dot(VGlobals.unity_SHBg, u_xlat16_1);
    u_xlat16_3.z = dot(VGlobals.unity_SHBb, u_xlat16_1);
    u_xlat16_2.xyz = fma(VGlobals.unity_SHC.xyz, u_xlat16_2.xxx, u_xlat16_3.xyz);
    u_xlat0.w = 1.0;
    u_xlat16_3.x = half(dot(float4(VGlobals.unity_SHAr), u_xlat0));
    u_xlat16_3.y = half(dot(float4(VGlobals.unity_SHAg), u_xlat0));
    u_xlat16_3.z = half(dot(float4(VGlobals.unity_SHAb), u_xlat0));
    u_xlat16_2.xyz = u_xlat16_2.xyz + u_xlat16_3.xyz;
    u_xlat16_2.xyz = max(u_xlat16_2.xyz, half3(0.0, 0.0, 0.0));
    u_xlat0.xyz = log2(float3(u_xlat16_2.xyz));
    u_xlat0.xyz = u_xlat0.xyz * float3(0.416666657, 0.416666657, 0.416666657);
    u_xlat0.xyz = exp2(u_xlat0.xyz);
    u_xlat0.xyz = fma(u_xlat0.xyz, float3(1.05499995, 1.05499995, 1.05499995), float3(-0.0549999997, -0.0549999997, -0.0549999997));
    output.TEXCOORD4.xyz = max(u_xlat0.xyz, float3(0.0, 0.0, 0.0));
    return output;
}


-- Hardware tier variant: Tier 1
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0
Set 2D Texture "_LightBuffer" to slot 1

Constant Buffer "FGlobals" (8 bytes) on slot 0 {
  VectorHalf4 _Color at 0
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float4 TEXCOORD2 [[ user(TEXCOORD2) ]] ;
    float3 TEXCOORD4 [[ user(TEXCOORD4) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_MainTex [[ sampler (0) ]],
    sampler sampler_LightBuffer [[ sampler (1) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    texture2d<half, access::sample > _LightBuffer [[ texture(1) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float3 u_xlat0;
    half3 u_xlat16_0;
    half3 u_xlat16_1;
    half3 u_xlat16_2;
    u_xlat0.xy = input.TEXCOORD2.xy / input.TEXCOORD2.ww;
    u_xlat16_0.xyz = _LightBuffer.sample(sampler_LightBuffer, u_xlat0.xy).xyz;
    u_xlat16_1.xyz = max(u_xlat16_0.xyz, half3(0.00100000005, 0.00100000005, 0.00100000005));
    u_xlat16_1.xyz = log2(u_xlat16_1.xyz);
    u_xlat0.xyz = (-float3(u_xlat16_1.xyz)) + input.TEXCOORD4.xyz;
    u_xlat16_2.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_2.xyz = u_xlat16_2.xyz * FGlobals._Color.xyz;
    output.SV_Target0.xyz = half3(u_xlat0.xyz * float3(u_xlat16_2.xyz));
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: LIGHTPROBE_SH 
-- Hardware tier variant: Tier 2
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (288 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 80
  Matrix4x4 unity_WorldToObject at 144
  Matrix4x4 unity_MatrixVP at 208
  Vector4 _ProjectionParams at 0
  VectorHalf4 unity_SHAr at 16
  VectorHalf4 unity_SHAg at 24
  VectorHalf4 unity_SHAb at 32
  VectorHalf4 unity_SHBr at 40
  VectorHalf4 unity_SHBg at 48
  VectorHalf4 unity_SHBb at 56
  VectorHalf4 unity_SHC at 64
  Vector4 _MainTex_ST at 272
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 _ProjectionParams;
    half4 unity_SHAr;
    half4 unity_SHAg;
    half4 unity_SHAb;
    half4 unity_SHBr;
    half4 unity_SHBg;
    half4 unity_SHBb;
    half4 unity_SHC;
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float4 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float3 TEXCOORD4 [[ user(TEXCOORD4) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    half4 u_xlat16_1;
    half3 u_xlat16_2;
    half3 u_xlat16_3;
    float u_xlat12;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD1.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.mtl_Position = u_xlat0;
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.y = u_xlat0.y * VGlobals._ProjectionParams.x;
    u_xlat1.xzw = u_xlat0.xwy * float3(0.5, 0.5, 0.5);
    output.TEXCOORD2.zw = u_xlat0.zw;
    output.TEXCOORD2.xy = u_xlat1.zz + u_xlat1.xw;
    output.TEXCOORD3 = float4(0.0, 0.0, 0.0, 0.0);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat12 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat12 = rsqrt(u_xlat12);
    u_xlat0.xyz = float3(u_xlat12) * u_xlat0.xyz;
    u_xlat16_2.x = half(u_xlat0.y * u_xlat0.y);
    u_xlat16_2.x = half(fma(u_xlat0.x, u_xlat0.x, (-float(u_xlat16_2.x))));
    u_xlat16_1 = half4(u_xlat0.yzzx * u_xlat0.xyzz);
    u_xlat16_3.x = dot(VGlobals.unity_SHBr, u_xlat16_1);
    u_xlat16_3.y = dot(VGlobals.unity_SHBg, u_xlat16_1);
    u_xlat16_3.z = dot(VGlobals.unity_SHBb, u_xlat16_1);
    u_xlat16_2.xyz = fma(VGlobals.unity_SHC.xyz, u_xlat16_2.xxx, u_xlat16_3.xyz);
    u_xlat0.w = 1.0;
    u_xlat16_3.x = half(dot(float4(VGlobals.unity_SHAr), u_xlat0));
    u_xlat16_3.y = half(dot(float4(VGlobals.unity_SHAg), u_xlat0));
    u_xlat16_3.z = half(dot(float4(VGlobals.unity_SHAb), u_xlat0));
    u_xlat16_2.xyz = u_xlat16_2.xyz + u_xlat16_3.xyz;
    u_xlat16_2.xyz = max(u_xlat16_2.xyz, half3(0.0, 0.0, 0.0));
    u_xlat0.xyz = log2(float3(u_xlat16_2.xyz));
    u_xlat0.xyz = u_xlat0.xyz * float3(0.416666657, 0.416666657, 0.416666657);
    u_xlat0.xyz = exp2(u_xlat0.xyz);
    u_xlat0.xyz = fma(u_xlat0.xyz, float3(1.05499995, 1.05499995, 1.05499995), float3(-0.0549999997, -0.0549999997, -0.0549999997));
    output.TEXCOORD4.xyz = max(u_xlat0.xyz, float3(0.0, 0.0, 0.0));
    return output;
}


-- Hardware tier variant: Tier 2
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0
Set 2D Texture "_LightBuffer" to slot 1

Constant Buffer "FGlobals" (8 bytes) on slot 0 {
  VectorHalf4 _Color at 0
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float4 TEXCOORD2 [[ user(TEXCOORD2) ]] ;
    float3 TEXCOORD4 [[ user(TEXCOORD4) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_MainTex [[ sampler (0) ]],
    sampler sampler_LightBuffer [[ sampler (1) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    texture2d<half, access::sample > _LightBuffer [[ texture(1) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float3 u_xlat0;
    half3 u_xlat16_0;
    half3 u_xlat16_1;
    half3 u_xlat16_2;
    u_xlat0.xy = input.TEXCOORD2.xy / input.TEXCOORD2.ww;
    u_xlat16_0.xyz = _LightBuffer.sample(sampler_LightBuffer, u_xlat0.xy).xyz;
    u_xlat16_1.xyz = max(u_xlat16_0.xyz, half3(0.00100000005, 0.00100000005, 0.00100000005));
    u_xlat16_1.xyz = log2(u_xlat16_1.xyz);
    u_xlat0.xyz = (-float3(u_xlat16_1.xyz)) + input.TEXCOORD4.xyz;
    u_xlat16_2.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_2.xyz = u_xlat16_2.xyz * FGlobals._Color.xyz;
    output.SV_Target0.xyz = half3(u_xlat0.xyz * float3(u_xlat16_2.xyz));
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: LIGHTPROBE_SH 
-- Hardware tier variant: Tier 3
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (288 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 80
  Matrix4x4 unity_WorldToObject at 144
  Matrix4x4 unity_MatrixVP at 208
  Vector4 _ProjectionParams at 0
  VectorHalf4 unity_SHAr at 16
  VectorHalf4 unity_SHAg at 24
  VectorHalf4 unity_SHAb at 32
  VectorHalf4 unity_SHBr at 40
  VectorHalf4 unity_SHBg at 48
  VectorHalf4 unity_SHBb at 56
  VectorHalf4 unity_SHC at 64
  Vector4 _MainTex_ST at 272
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 _ProjectionParams;
    half4 unity_SHAr;
    half4 unity_SHAg;
    half4 unity_SHAb;
    half4 unity_SHBr;
    half4 unity_SHBg;
    half4 unity_SHBb;
    half4 unity_SHC;
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float4 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float3 TEXCOORD4 [[ user(TEXCOORD4) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    half4 u_xlat16_1;
    half3 u_xlat16_2;
    half3 u_xlat16_3;
    float u_xlat12;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD1.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.mtl_Position = u_xlat0;
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.y = u_xlat0.y * VGlobals._ProjectionParams.x;
    u_xlat1.xzw = u_xlat0.xwy * float3(0.5, 0.5, 0.5);
    output.TEXCOORD2.zw = u_xlat0.zw;
    output.TEXCOORD2.xy = u_xlat1.zz + u_xlat1.xw;
    output.TEXCOORD3 = float4(0.0, 0.0, 0.0, 0.0);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat12 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat12 = rsqrt(u_xlat12);
    u_xlat0.xyz = float3(u_xlat12) * u_xlat0.xyz;
    u_xlat16_2.x = half(u_xlat0.y * u_xlat0.y);
    u_xlat16_2.x = half(fma(u_xlat0.x, u_xlat0.x, (-float(u_xlat16_2.x))));
    u_xlat16_1 = half4(u_xlat0.yzzx * u_xlat0.xyzz);
    u_xlat16_3.x = dot(VGlobals.unity_SHBr, u_xlat16_1);
    u_xlat16_3.y = dot(VGlobals.unity_SHBg, u_xlat16_1);
    u_xlat16_3.z = dot(VGlobals.unity_SHBb, u_xlat16_1);
    u_xlat16_2.xyz = fma(VGlobals.unity_SHC.xyz, u_xlat16_2.xxx, u_xlat16_3.xyz);
    u_xlat0.w = 1.0;
    u_xlat16_3.x = half(dot(float4(VGlobals.unity_SHAr), u_xlat0));
    u_xlat16_3.y = half(dot(float4(VGlobals.unity_SHAg), u_xlat0));
    u_xlat16_3.z = half(dot(float4(VGlobals.unity_SHAb), u_xlat0));
    u_xlat16_2.xyz = u_xlat16_2.xyz + u_xlat16_3.xyz;
    u_xlat16_2.xyz = max(u_xlat16_2.xyz, half3(0.0, 0.0, 0.0));
    u_xlat0.xyz = log2(float3(u_xlat16_2.xyz));
    u_xlat0.xyz = u_xlat0.xyz * float3(0.416666657, 0.416666657, 0.416666657);
    u_xlat0.xyz = exp2(u_xlat0.xyz);
    u_xlat0.xyz = fma(u_xlat0.xyz, float3(1.05499995, 1.05499995, 1.05499995), float3(-0.0549999997, -0.0549999997, -0.0549999997));
    output.TEXCOORD4.xyz = max(u_xlat0.xyz, float3(0.0, 0.0, 0.0));
    return output;
}


-- Hardware tier variant: Tier 3
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0
Set 2D Texture "_LightBuffer" to slot 1

Constant Buffer "FGlobals" (8 bytes) on slot 0 {
  VectorHalf4 _Color at 0
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float4 TEXCOORD2 [[ user(TEXCOORD2) ]] ;
    float3 TEXCOORD4 [[ user(TEXCOORD4) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_MainTex [[ sampler (0) ]],
    sampler sampler_LightBuffer [[ sampler (1) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    texture2d<half, access::sample > _LightBuffer [[ texture(1) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float3 u_xlat0;
    half3 u_xlat16_0;
    half3 u_xlat16_1;
    half3 u_xlat16_2;
    u_xlat0.xy = input.TEXCOORD2.xy / input.TEXCOORD2.ww;
    u_xlat16_0.xyz = _LightBuffer.sample(sampler_LightBuffer, u_xlat0.xy).xyz;
    u_xlat16_1.xyz = max(u_xlat16_0.xyz, half3(0.00100000005, 0.00100000005, 0.00100000005));
    u_xlat16_1.xyz = log2(u_xlat16_1.xyz);
    u_xlat0.xyz = (-float3(u_xlat16_1.xyz)) + input.TEXCOORD4.xyz;
    u_xlat16_2.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_2.xyz = u_xlat16_2.xyz * FGlobals._Color.xyz;
    output.SV_Target0.xyz = half3(u_xlat0.xyz * float3(u_xlat16_2.xyz));
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: LIGHTPROBE_SH UNITY_HDR_ON 
-- Hardware tier variant: Tier 1
-- Vertex shader for "gles":
// Stats: 5 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp vec4 _ProjectionParams;
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec4 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD3;
varying highp vec3 xlv_TEXCOORD4;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec3 tmpvar_2;
  highp vec4 tmpvar_3;
  highp vec4 tmpvar_4;
  tmpvar_4.w = 1.0;
  tmpvar_4.xyz = _glesVertex.xyz;
  tmpvar_3 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_4));
  highp vec4 o_5;
  highp vec4 tmpvar_6;
  tmpvar_6 = (tmpvar_3 * 0.5);
  highp vec2 tmpvar_7;
  tmpvar_7.x = tmpvar_6.x;
  tmpvar_7.y = (tmpvar_6.y * _ProjectionParams.x);
  o_5.xy = (tmpvar_7 + tmpvar_6.w);
  o_5.zw = tmpvar_3.zw;
  tmpvar_1.zw = vec2(0.0, 0.0);
  tmpvar_1.xy = vec2(0.0, 0.0);
  highp mat3 tmpvar_8;
  tmpvar_8[0] = unity_WorldToObject[0].xyz;
  tmpvar_8[1] = unity_WorldToObject[1].xyz;
  tmpvar_8[2] = unity_WorldToObject[2].xyz;
  highp vec4 tmpvar_9;
  tmpvar_9.w = 1.0;
  tmpvar_9.xyz = normalize((_glesNormal * tmpvar_8));
  mediump vec4 normal_10;
  normal_10 = tmpvar_9;
  mediump vec3 res_11;
  mediump vec3 x_12;
  x_12.x = dot (unity_SHAr, normal_10);
  x_12.y = dot (unity_SHAg, normal_10);
  x_12.z = dot (unity_SHAb, normal_10);
  mediump vec3 x1_13;
  mediump vec4 tmpvar_14;
  tmpvar_14 = (normal_10.xyzz * normal_10.yzzx);
  x1_13.x = dot (unity_SHBr, tmpvar_14);
  x1_13.y = dot (unity_SHBg, tmpvar_14);
  x1_13.z = dot (unity_SHBb, tmpvar_14);
  res_11 = (x_12 + (x1_13 + (unity_SHC.xyz * 
    ((normal_10.x * normal_10.x) - (normal_10.y * normal_10.y))
  )));
  mediump vec3 tmpvar_15;
  tmpvar_15 = max (((1.055 * 
    pow (max (res_11, vec3(0.0, 0.0, 0.0)), vec3(0.4166667, 0.4166667, 0.4166667))
  ) - 0.055), vec3(0.0, 0.0, 0.0));
  res_11 = tmpvar_15;
  tmpvar_2 = tmpvar_15;
  gl_Position = tmpvar_3;
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD2 = o_5;
  xlv_TEXCOORD3 = tmpvar_1;
  xlv_TEXCOORD4 = tmpvar_2;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
uniform sampler2D _LightBuffer;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec4 xlv_TEXCOORD2;
varying highp vec3 xlv_TEXCOORD4;
void main ()
{
  lowp vec4 tmpvar_1;
  mediump vec4 c_2;
  mediump vec4 light_3;
  lowp vec4 tmpvar_4;
  tmpvar_4 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  lowp vec4 tmpvar_5;
  tmpvar_5 = texture2DProj (_LightBuffer, xlv_TEXCOORD2);
  light_3 = tmpvar_5;
  mediump vec4 tmpvar_6;
  tmpvar_6 = max (light_3, vec4(0.001, 0.001, 0.001, 0.001));
  light_3.w = tmpvar_6.w;
  light_3.xyz = (tmpvar_6.xyz + xlv_TEXCOORD4);
  lowp vec4 c_7;
  c_7.xyz = (tmpvar_4.xyz * light_3.xyz);
  c_7.w = tmpvar_4.w;
  c_2.xyz = c_7.xyz;
  c_2.w = 1.0;
  tmpvar_1 = c_2;
  gl_FragData[0] = tmpvar_1;
}


#endif


-- Hardware tier variant: Tier 1
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: LIGHTPROBE_SH UNITY_HDR_ON 
-- Hardware tier variant: Tier 2
-- Vertex shader for "gles":
// Stats: 5 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp vec4 _ProjectionParams;
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec4 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD3;
varying highp vec3 xlv_TEXCOORD4;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec3 tmpvar_2;
  highp vec4 tmpvar_3;
  highp vec4 tmpvar_4;
  tmpvar_4.w = 1.0;
  tmpvar_4.xyz = _glesVertex.xyz;
  tmpvar_3 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_4));
  highp vec4 o_5;
  highp vec4 tmpvar_6;
  tmpvar_6 = (tmpvar_3 * 0.5);
  highp vec2 tmpvar_7;
  tmpvar_7.x = tmpvar_6.x;
  tmpvar_7.y = (tmpvar_6.y * _ProjectionParams.x);
  o_5.xy = (tmpvar_7 + tmpvar_6.w);
  o_5.zw = tmpvar_3.zw;
  tmpvar_1.zw = vec2(0.0, 0.0);
  tmpvar_1.xy = vec2(0.0, 0.0);
  highp mat3 tmpvar_8;
  tmpvar_8[0] = unity_WorldToObject[0].xyz;
  tmpvar_8[1] = unity_WorldToObject[1].xyz;
  tmpvar_8[2] = unity_WorldToObject[2].xyz;
  highp vec4 tmpvar_9;
  tmpvar_9.w = 1.0;
  tmpvar_9.xyz = normalize((_glesNormal * tmpvar_8));
  mediump vec4 normal_10;
  normal_10 = tmpvar_9;
  mediump vec3 res_11;
  mediump vec3 x_12;
  x_12.x = dot (unity_SHAr, normal_10);
  x_12.y = dot (unity_SHAg, normal_10);
  x_12.z = dot (unity_SHAb, normal_10);
  mediump vec3 x1_13;
  mediump vec4 tmpvar_14;
  tmpvar_14 = (normal_10.xyzz * normal_10.yzzx);
  x1_13.x = dot (unity_SHBr, tmpvar_14);
  x1_13.y = dot (unity_SHBg, tmpvar_14);
  x1_13.z = dot (unity_SHBb, tmpvar_14);
  res_11 = (x_12 + (x1_13 + (unity_SHC.xyz * 
    ((normal_10.x * normal_10.x) - (normal_10.y * normal_10.y))
  )));
  mediump vec3 tmpvar_15;
  tmpvar_15 = max (((1.055 * 
    pow (max (res_11, vec3(0.0, 0.0, 0.0)), vec3(0.4166667, 0.4166667, 0.4166667))
  ) - 0.055), vec3(0.0, 0.0, 0.0));
  res_11 = tmpvar_15;
  tmpvar_2 = tmpvar_15;
  gl_Position = tmpvar_3;
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD2 = o_5;
  xlv_TEXCOORD3 = tmpvar_1;
  xlv_TEXCOORD4 = tmpvar_2;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
uniform sampler2D _LightBuffer;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec4 xlv_TEXCOORD2;
varying highp vec3 xlv_TEXCOORD4;
void main ()
{
  lowp vec4 tmpvar_1;
  mediump vec4 c_2;
  mediump vec4 light_3;
  lowp vec4 tmpvar_4;
  tmpvar_4 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  lowp vec4 tmpvar_5;
  tmpvar_5 = texture2DProj (_LightBuffer, xlv_TEXCOORD2);
  light_3 = tmpvar_5;
  mediump vec4 tmpvar_6;
  tmpvar_6 = max (light_3, vec4(0.001, 0.001, 0.001, 0.001));
  light_3.w = tmpvar_6.w;
  light_3.xyz = (tmpvar_6.xyz + xlv_TEXCOORD4);
  lowp vec4 c_7;
  c_7.xyz = (tmpvar_4.xyz * light_3.xyz);
  c_7.w = tmpvar_4.w;
  c_2.xyz = c_7.xyz;
  c_2.w = 1.0;
  tmpvar_1 = c_2;
  gl_FragData[0] = tmpvar_1;
}


#endif


-- Hardware tier variant: Tier 2
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: LIGHTPROBE_SH UNITY_HDR_ON 
-- Hardware tier variant: Tier 3
-- Vertex shader for "gles":
// Stats: 5 math, 2 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp vec4 _ProjectionParams;
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec4 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD3;
varying highp vec3 xlv_TEXCOORD4;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec3 tmpvar_2;
  highp vec4 tmpvar_3;
  highp vec4 tmpvar_4;
  tmpvar_4.w = 1.0;
  tmpvar_4.xyz = _glesVertex.xyz;
  tmpvar_3 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_4));
  highp vec4 o_5;
  highp vec4 tmpvar_6;
  tmpvar_6 = (tmpvar_3 * 0.5);
  highp vec2 tmpvar_7;
  tmpvar_7.x = tmpvar_6.x;
  tmpvar_7.y = (tmpvar_6.y * _ProjectionParams.x);
  o_5.xy = (tmpvar_7 + tmpvar_6.w);
  o_5.zw = tmpvar_3.zw;
  tmpvar_1.zw = vec2(0.0, 0.0);
  tmpvar_1.xy = vec2(0.0, 0.0);
  highp mat3 tmpvar_8;
  tmpvar_8[0] = unity_WorldToObject[0].xyz;
  tmpvar_8[1] = unity_WorldToObject[1].xyz;
  tmpvar_8[2] = unity_WorldToObject[2].xyz;
  highp vec4 tmpvar_9;
  tmpvar_9.w = 1.0;
  tmpvar_9.xyz = normalize((_glesNormal * tmpvar_8));
  mediump vec4 normal_10;
  normal_10 = tmpvar_9;
  mediump vec3 res_11;
  mediump vec3 x_12;
  x_12.x = dot (unity_SHAr, normal_10);
  x_12.y = dot (unity_SHAg, normal_10);
  x_12.z = dot (unity_SHAb, normal_10);
  mediump vec3 x1_13;
  mediump vec4 tmpvar_14;
  tmpvar_14 = (normal_10.xyzz * normal_10.yzzx);
  x1_13.x = dot (unity_SHBr, tmpvar_14);
  x1_13.y = dot (unity_SHBg, tmpvar_14);
  x1_13.z = dot (unity_SHBb, tmpvar_14);
  res_11 = (x_12 + (x1_13 + (unity_SHC.xyz * 
    ((normal_10.x * normal_10.x) - (normal_10.y * normal_10.y))
  )));
  mediump vec3 tmpvar_15;
  tmpvar_15 = max (((1.055 * 
    pow (max (res_11, vec3(0.0, 0.0, 0.0)), vec3(0.4166667, 0.4166667, 0.4166667))
  ) - 0.055), vec3(0.0, 0.0, 0.0));
  res_11 = tmpvar_15;
  tmpvar_2 = tmpvar_15;
  gl_Position = tmpvar_3;
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD2 = o_5;
  xlv_TEXCOORD3 = tmpvar_1;
  xlv_TEXCOORD4 = tmpvar_2;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
uniform sampler2D _LightBuffer;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec4 xlv_TEXCOORD2;
varying highp vec3 xlv_TEXCOORD4;
void main ()
{
  lowp vec4 tmpvar_1;
  mediump vec4 c_2;
  mediump vec4 light_3;
  lowp vec4 tmpvar_4;
  tmpvar_4 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  lowp vec4 tmpvar_5;
  tmpvar_5 = texture2DProj (_LightBuffer, xlv_TEXCOORD2);
  light_3 = tmpvar_5;
  mediump vec4 tmpvar_6;
  tmpvar_6 = max (light_3, vec4(0.001, 0.001, 0.001, 0.001));
  light_3.w = tmpvar_6.w;
  light_3.xyz = (tmpvar_6.xyz + xlv_TEXCOORD4);
  lowp vec4 c_7;
  c_7.xyz = (tmpvar_4.xyz * light_3.xyz);
  c_7.w = tmpvar_4.w;
  c_2.xyz = c_7.xyz;
  c_2.w = 1.0;
  tmpvar_1 = c_2;
  gl_FragData[0] = tmpvar_1;
}


#endif


-- Hardware tier variant: Tier 3
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: LIGHTPROBE_SH UNITY_HDR_ON 
-- Hardware tier variant: Tier 1
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (288 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 80
  Matrix4x4 unity_WorldToObject at 144
  Matrix4x4 unity_MatrixVP at 208
  Vector4 _ProjectionParams at 0
  VectorHalf4 unity_SHAr at 16
  VectorHalf4 unity_SHAg at 24
  VectorHalf4 unity_SHAb at 32
  VectorHalf4 unity_SHBr at 40
  VectorHalf4 unity_SHBg at 48
  VectorHalf4 unity_SHBb at 56
  VectorHalf4 unity_SHC at 64
  Vector4 _MainTex_ST at 272
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 _ProjectionParams;
    half4 unity_SHAr;
    half4 unity_SHAg;
    half4 unity_SHAb;
    half4 unity_SHBr;
    half4 unity_SHBg;
    half4 unity_SHBb;
    half4 unity_SHC;
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float4 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float3 TEXCOORD4 [[ user(TEXCOORD4) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    half4 u_xlat16_1;
    half3 u_xlat16_2;
    half3 u_xlat16_3;
    float u_xlat12;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD1.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.mtl_Position = u_xlat0;
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.y = u_xlat0.y * VGlobals._ProjectionParams.x;
    u_xlat1.xzw = u_xlat0.xwy * float3(0.5, 0.5, 0.5);
    output.TEXCOORD2.zw = u_xlat0.zw;
    output.TEXCOORD2.xy = u_xlat1.zz + u_xlat1.xw;
    output.TEXCOORD3 = float4(0.0, 0.0, 0.0, 0.0);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat12 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat12 = rsqrt(u_xlat12);
    u_xlat0.xyz = float3(u_xlat12) * u_xlat0.xyz;
    u_xlat16_2.x = half(u_xlat0.y * u_xlat0.y);
    u_xlat16_2.x = half(fma(u_xlat0.x, u_xlat0.x, (-float(u_xlat16_2.x))));
    u_xlat16_1 = half4(u_xlat0.yzzx * u_xlat0.xyzz);
    u_xlat16_3.x = dot(VGlobals.unity_SHBr, u_xlat16_1);
    u_xlat16_3.y = dot(VGlobals.unity_SHBg, u_xlat16_1);
    u_xlat16_3.z = dot(VGlobals.unity_SHBb, u_xlat16_1);
    u_xlat16_2.xyz = fma(VGlobals.unity_SHC.xyz, u_xlat16_2.xxx, u_xlat16_3.xyz);
    u_xlat0.w = 1.0;
    u_xlat16_3.x = half(dot(float4(VGlobals.unity_SHAr), u_xlat0));
    u_xlat16_3.y = half(dot(float4(VGlobals.unity_SHAg), u_xlat0));
    u_xlat16_3.z = half(dot(float4(VGlobals.unity_SHAb), u_xlat0));
    u_xlat16_2.xyz = u_xlat16_2.xyz + u_xlat16_3.xyz;
    u_xlat16_2.xyz = max(u_xlat16_2.xyz, half3(0.0, 0.0, 0.0));
    u_xlat0.xyz = log2(float3(u_xlat16_2.xyz));
    u_xlat0.xyz = u_xlat0.xyz * float3(0.416666657, 0.416666657, 0.416666657);
    u_xlat0.xyz = exp2(u_xlat0.xyz);
    u_xlat0.xyz = fma(u_xlat0.xyz, float3(1.05499995, 1.05499995, 1.05499995), float3(-0.0549999997, -0.0549999997, -0.0549999997));
    output.TEXCOORD4.xyz = max(u_xlat0.xyz, float3(0.0, 0.0, 0.0));
    return output;
}


-- Hardware tier variant: Tier 1
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0
Set 2D Texture "_LightBuffer" to slot 1

Constant Buffer "FGlobals" (8 bytes) on slot 0 {
  VectorHalf4 _Color at 0
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float4 TEXCOORD2 [[ user(TEXCOORD2) ]] ;
    float3 TEXCOORD4 [[ user(TEXCOORD4) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_MainTex [[ sampler (0) ]],
    sampler sampler_LightBuffer [[ sampler (1) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    texture2d<half, access::sample > _LightBuffer [[ texture(1) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float3 u_xlat0;
    half3 u_xlat16_0;
    half3 u_xlat16_1;
    half3 u_xlat16_2;
    u_xlat0.xy = input.TEXCOORD2.xy / input.TEXCOORD2.ww;
    u_xlat16_0.xyz = _LightBuffer.sample(sampler_LightBuffer, u_xlat0.xy).xyz;
    u_xlat16_1.xyz = max(u_xlat16_0.xyz, half3(0.00100000005, 0.00100000005, 0.00100000005));
    u_xlat0.xyz = float3(u_xlat16_1.xyz) + input.TEXCOORD4.xyz;
    u_xlat16_2.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_2.xyz = u_xlat16_2.xyz * FGlobals._Color.xyz;
    output.SV_Target0.xyz = half3(u_xlat0.xyz * float3(u_xlat16_2.xyz));
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: LIGHTPROBE_SH UNITY_HDR_ON 
-- Hardware tier variant: Tier 2
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (288 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 80
  Matrix4x4 unity_WorldToObject at 144
  Matrix4x4 unity_MatrixVP at 208
  Vector4 _ProjectionParams at 0
  VectorHalf4 unity_SHAr at 16
  VectorHalf4 unity_SHAg at 24
  VectorHalf4 unity_SHAb at 32
  VectorHalf4 unity_SHBr at 40
  VectorHalf4 unity_SHBg at 48
  VectorHalf4 unity_SHBb at 56
  VectorHalf4 unity_SHC at 64
  Vector4 _MainTex_ST at 272
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 _ProjectionParams;
    half4 unity_SHAr;
    half4 unity_SHAg;
    half4 unity_SHAb;
    half4 unity_SHBr;
    half4 unity_SHBg;
    half4 unity_SHBb;
    half4 unity_SHC;
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float4 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float3 TEXCOORD4 [[ user(TEXCOORD4) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    half4 u_xlat16_1;
    half3 u_xlat16_2;
    half3 u_xlat16_3;
    float u_xlat12;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD1.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.mtl_Position = u_xlat0;
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.y = u_xlat0.y * VGlobals._ProjectionParams.x;
    u_xlat1.xzw = u_xlat0.xwy * float3(0.5, 0.5, 0.5);
    output.TEXCOORD2.zw = u_xlat0.zw;
    output.TEXCOORD2.xy = u_xlat1.zz + u_xlat1.xw;
    output.TEXCOORD3 = float4(0.0, 0.0, 0.0, 0.0);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat12 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat12 = rsqrt(u_xlat12);
    u_xlat0.xyz = float3(u_xlat12) * u_xlat0.xyz;
    u_xlat16_2.x = half(u_xlat0.y * u_xlat0.y);
    u_xlat16_2.x = half(fma(u_xlat0.x, u_xlat0.x, (-float(u_xlat16_2.x))));
    u_xlat16_1 = half4(u_xlat0.yzzx * u_xlat0.xyzz);
    u_xlat16_3.x = dot(VGlobals.unity_SHBr, u_xlat16_1);
    u_xlat16_3.y = dot(VGlobals.unity_SHBg, u_xlat16_1);
    u_xlat16_3.z = dot(VGlobals.unity_SHBb, u_xlat16_1);
    u_xlat16_2.xyz = fma(VGlobals.unity_SHC.xyz, u_xlat16_2.xxx, u_xlat16_3.xyz);
    u_xlat0.w = 1.0;
    u_xlat16_3.x = half(dot(float4(VGlobals.unity_SHAr), u_xlat0));
    u_xlat16_3.y = half(dot(float4(VGlobals.unity_SHAg), u_xlat0));
    u_xlat16_3.z = half(dot(float4(VGlobals.unity_SHAb), u_xlat0));
    u_xlat16_2.xyz = u_xlat16_2.xyz + u_xlat16_3.xyz;
    u_xlat16_2.xyz = max(u_xlat16_2.xyz, half3(0.0, 0.0, 0.0));
    u_xlat0.xyz = log2(float3(u_xlat16_2.xyz));
    u_xlat0.xyz = u_xlat0.xyz * float3(0.416666657, 0.416666657, 0.416666657);
    u_xlat0.xyz = exp2(u_xlat0.xyz);
    u_xlat0.xyz = fma(u_xlat0.xyz, float3(1.05499995, 1.05499995, 1.05499995), float3(-0.0549999997, -0.0549999997, -0.0549999997));
    output.TEXCOORD4.xyz = max(u_xlat0.xyz, float3(0.0, 0.0, 0.0));
    return output;
}


-- Hardware tier variant: Tier 2
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0
Set 2D Texture "_LightBuffer" to slot 1

Constant Buffer "FGlobals" (8 bytes) on slot 0 {
  VectorHalf4 _Color at 0
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float4 TEXCOORD2 [[ user(TEXCOORD2) ]] ;
    float3 TEXCOORD4 [[ user(TEXCOORD4) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_MainTex [[ sampler (0) ]],
    sampler sampler_LightBuffer [[ sampler (1) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    texture2d<half, access::sample > _LightBuffer [[ texture(1) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float3 u_xlat0;
    half3 u_xlat16_0;
    half3 u_xlat16_1;
    half3 u_xlat16_2;
    u_xlat0.xy = input.TEXCOORD2.xy / input.TEXCOORD2.ww;
    u_xlat16_0.xyz = _LightBuffer.sample(sampler_LightBuffer, u_xlat0.xy).xyz;
    u_xlat16_1.xyz = max(u_xlat16_0.xyz, half3(0.00100000005, 0.00100000005, 0.00100000005));
    u_xlat0.xyz = float3(u_xlat16_1.xyz) + input.TEXCOORD4.xyz;
    u_xlat16_2.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_2.xyz = u_xlat16_2.xyz * FGlobals._Color.xyz;
    output.SV_Target0.xyz = half3(u_xlat0.xyz * float3(u_xlat16_2.xyz));
    output.SV_Target0.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: LIGHTPROBE_SH UNITY_HDR_ON 
-- Hardware tier variant: Tier 3
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (288 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 80
  Matrix4x4 unity_WorldToObject at 144
  Matrix4x4 unity_MatrixVP at 208
  Vector4 _ProjectionParams at 0
  VectorHalf4 unity_SHAr at 16
  VectorHalf4 unity_SHAg at 24
  VectorHalf4 unity_SHAb at 32
  VectorHalf4 unity_SHBr at 40
  VectorHalf4 unity_SHBg at 48
  VectorHalf4 unity_SHBb at 56
  VectorHalf4 unity_SHC at 64
  Vector4 _MainTex_ST at 272
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 _ProjectionParams;
    half4 unity_SHAr;
    half4 unity_SHAg;
    half4 unity_SHAb;
    half4 unity_SHBr;
    half4 unity_SHBg;
    half4 unity_SHBb;
    half4 unity_SHC;
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float4 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD3 [[ user(TEXCOORD3) ]];
    float3 TEXCOORD4 [[ user(TEXCOORD4) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    half4 u_xlat16_1;
    half3 u_xlat16_2;
    half3 u_xlat16_3;
    float u_xlat12;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD1.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.mtl_Position = u_xlat0;
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.y = u_xlat0.y * VGlobals._ProjectionParams.x;
    u_xlat1.xzw = u_xlat0.xwy * float3(0.5, 0.5, 0.5);
    output.TEXCOORD2.zw = u_xlat0.zw;
    output.TEXCOORD2.xy = u_xlat1.zz + u_xlat1.xw;
    output.TEXCOORD3 = float4(0.0, 0.0, 0.0, 0.0);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat12 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat12 = rsqrt(u_xlat12);
    u_xlat0.xyz = float3(u_xlat12) * u_xlat0.xyz;
    u_xlat16_2.x = half(u_xlat0.y * u_xlat0.y);
    u_xlat16_2.x = half(fma(u_xlat0.x, u_xlat0.x, (-float(u_xlat16_2.x))));
    u_xlat16_1 = half4(u_xlat0.yzzx * u_xlat0.xyzz);
    u_xlat16_3.x = dot(VGlobals.unity_SHBr, u_xlat16_1);
    u_xlat16_3.y = dot(VGlobals.unity_SHBg, u_xlat16_1);
    u_xlat16_3.z = dot(VGlobals.unity_SHBb, u_xlat16_1);
    u_xlat16_2.xyz = fma(VGlobals.unity_SHC.xyz, u_xlat16_2.xxx, u_xlat16_3.xyz);
    u_xlat0.w = 1.0;
    u_xlat16_3.x = half(dot(float4(VGlobals.unity_SHAr), u_xlat0));
    u_xlat16_3.y = half(dot(float4(VGlobals.unity_SHAg), u_xlat0));
    u_xlat16_3.z = half(dot(float4(VGlobals.unity_SHAb), u_xlat0));
    u_xlat16_2.xyz = u_xlat16_2.xyz + u_xlat16_3.xyz;
    u_xlat16_2.xyz = max(u_xlat16_2.xyz, half3(0.0, 0.0, 0.0));
    u_xlat0.xyz = log2(float3(u_xlat16_2.xyz));
    u_xlat0.xyz = u_xlat0.xyz * float3(0.416666657, 0.416666657, 0.416666657);
    u_xlat0.xyz = exp2(u_xlat0.xyz);
    u_xlat0.xyz = fma(u_xlat0.xyz, float3(1.05499995, 1.05499995, 1.05499995), float3(-0.0549999997, -0.0549999997, -0.0549999997));
    output.TEXCOORD4.xyz = max(u_xlat0.xyz, float3(0.0, 0.0, 0.0));
    return output;
}


-- Hardware tier variant: Tier 3
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0
Set 2D Texture "_LightBuffer" to slot 1

Constant Buffer "FGlobals" (8 bytes) on slot 0 {
  VectorHalf4 _Color at 0
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float4 TEXCOORD2 [[ user(TEXCOORD2) ]] ;
    float3 TEXCOORD4 [[ user(TEXCOORD4) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_MainTex [[ sampler (0) ]],
    sampler sampler_LightBuffer [[ sampler (1) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    texture2d<half, access::sample > _LightBuffer [[ texture(1) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float3 u_xlat0;
    half3 u_xlat16_0;
    half3 u_xlat16_1;
    half3 u_xlat16_2;
    u_xlat0.xy = input.TEXCOORD2.xy / input.TEXCOORD2.ww;
    u_xlat16_0.xyz = _LightBuffer.sample(sampler_LightBuffer, u_xlat0.xy).xyz;
    u_xlat16_1.xyz = max(u_xlat16_0.xyz, half3(0.00100000005, 0.00100000005, 0.00100000005));
    u_xlat0.xyz = float3(u_xlat16_1.xyz) + input.TEXCOORD4.xyz;
    u_xlat16_2.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_2.xyz = u_xlat16_2.xyz * FGlobals._Color.xyz;
    output.SV_Target0.xyz = half3(u_xlat0.xyz * float3(u_xlat16_2.xyz));
    output.SV_Target0.w = half(1.0);
    return output;
}


 }


 // Stats for Vertex shader:
 //         gles: 11 avg math (11..13), 1 texture
 Pass {
  Name "DEFERRED"
  Tags { "LIGHTMODE"="DEFERRED" "RenderType"="Opaque" }
  //////////////////////////////////
  //                              //
  //      Compiled programs       //
  //                              //
  //////////////////////////////////
//////////////////////////////////////////////////////
No keywords set in this variant.
-- Hardware tier variant: Tier 1
-- Vertex shader for "gles":
// Stats: 11 math, 1 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD3;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  tmpvar_1.zw = vec2(0.0, 0.0);
  tmpvar_1.xy = vec2(0.0, 0.0);
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = normalize((_glesNormal * tmpvar_3));
  xlv_TEXCOORD2 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD3 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
#extension GL_EXT_draw_buffers : enable
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
void main ()
{
  mediump vec4 outEmission_1;
  lowp vec3 tmpvar_2;
  tmpvar_2 = xlv_TEXCOORD1;
  lowp vec3 tmpvar_3;
  tmpvar_3 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color).xyz;
  mediump vec4 emission_4;
  mediump vec3 tmpvar_5;
  highp vec3 tmpvar_6;
  tmpvar_5 = tmpvar_3;
  tmpvar_6 = tmpvar_2;
  mediump vec4 outGBuffer2_7;
  mediump vec4 tmpvar_8;
  tmpvar_8.xyz = tmpvar_5;
  tmpvar_8.w = 1.0;
  mediump vec4 tmpvar_9;
  tmpvar_9.xyz = vec3(0.0, 0.0, 0.0);
  tmpvar_9.w = 0.0;
  highp vec4 tmpvar_10;
  tmpvar_10.w = 1.0;
  tmpvar_10.xyz = ((tmpvar_6 * 0.5) + 0.5);
  outGBuffer2_7 = tmpvar_10;
  lowp vec4 tmpvar_11;
  tmpvar_11.w = 1.0;
  tmpvar_11.xyz = vec3(0.0, 0.0, 0.0);
  emission_4 = tmpvar_11;
  emission_4.xyz = emission_4.xyz;
  outEmission_1.w = emission_4.w;
  outEmission_1.xyz = exp2(-(emission_4.xyz));
  gl_FragData[0] = tmpvar_8;
  gl_FragData[1] = tmpvar_9;
  gl_FragData[2] = outGBuffer2_7;
  gl_FragData[3] = outEmission_1;
}


#endif


-- Hardware tier variant: Tier 1
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
No keywords set in this variant.
-- Hardware tier variant: Tier 2
-- Vertex shader for "gles":
// Stats: 11 math, 1 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD3;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  tmpvar_1.zw = vec2(0.0, 0.0);
  tmpvar_1.xy = vec2(0.0, 0.0);
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = normalize((_glesNormal * tmpvar_3));
  xlv_TEXCOORD2 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD3 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
#extension GL_EXT_draw_buffers : enable
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
void main ()
{
  mediump vec4 outEmission_1;
  lowp vec3 tmpvar_2;
  tmpvar_2 = xlv_TEXCOORD1;
  lowp vec3 tmpvar_3;
  tmpvar_3 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color).xyz;
  mediump vec4 emission_4;
  mediump vec3 tmpvar_5;
  highp vec3 tmpvar_6;
  tmpvar_5 = tmpvar_3;
  tmpvar_6 = tmpvar_2;
  mediump vec4 outGBuffer2_7;
  mediump vec4 tmpvar_8;
  tmpvar_8.xyz = tmpvar_5;
  tmpvar_8.w = 1.0;
  mediump vec4 tmpvar_9;
  tmpvar_9.xyz = vec3(0.0, 0.0, 0.0);
  tmpvar_9.w = 0.0;
  highp vec4 tmpvar_10;
  tmpvar_10.w = 1.0;
  tmpvar_10.xyz = ((tmpvar_6 * 0.5) + 0.5);
  outGBuffer2_7 = tmpvar_10;
  lowp vec4 tmpvar_11;
  tmpvar_11.w = 1.0;
  tmpvar_11.xyz = vec3(0.0, 0.0, 0.0);
  emission_4 = tmpvar_11;
  emission_4.xyz = emission_4.xyz;
  outEmission_1.w = emission_4.w;
  outEmission_1.xyz = exp2(-(emission_4.xyz));
  gl_FragData[0] = tmpvar_8;
  gl_FragData[1] = tmpvar_9;
  gl_FragData[2] = outGBuffer2_7;
  gl_FragData[3] = outEmission_1;
}


#endif


-- Hardware tier variant: Tier 2
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
No keywords set in this variant.
-- Hardware tier variant: Tier 3
-- Vertex shader for "gles":
// Stats: 11 math, 1 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD3;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  tmpvar_1.zw = vec2(0.0, 0.0);
  tmpvar_1.xy = vec2(0.0, 0.0);
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = normalize((_glesNormal * tmpvar_3));
  xlv_TEXCOORD2 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD3 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
#extension GL_EXT_draw_buffers : enable
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
void main ()
{
  mediump vec4 outEmission_1;
  lowp vec3 tmpvar_2;
  tmpvar_2 = xlv_TEXCOORD1;
  lowp vec3 tmpvar_3;
  tmpvar_3 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color).xyz;
  mediump vec4 emission_4;
  mediump vec3 tmpvar_5;
  highp vec3 tmpvar_6;
  tmpvar_5 = tmpvar_3;
  tmpvar_6 = tmpvar_2;
  mediump vec4 outGBuffer2_7;
  mediump vec4 tmpvar_8;
  tmpvar_8.xyz = tmpvar_5;
  tmpvar_8.w = 1.0;
  mediump vec4 tmpvar_9;
  tmpvar_9.xyz = vec3(0.0, 0.0, 0.0);
  tmpvar_9.w = 0.0;
  highp vec4 tmpvar_10;
  tmpvar_10.w = 1.0;
  tmpvar_10.xyz = ((tmpvar_6 * 0.5) + 0.5);
  outGBuffer2_7 = tmpvar_10;
  lowp vec4 tmpvar_11;
  tmpvar_11.w = 1.0;
  tmpvar_11.xyz = vec3(0.0, 0.0, 0.0);
  emission_4 = tmpvar_11;
  emission_4.xyz = emission_4.xyz;
  outEmission_1.w = emission_4.w;
  outEmission_1.xyz = exp2(-(emission_4.xyz));
  gl_FragData[0] = tmpvar_8;
  gl_FragData[1] = tmpvar_9;
  gl_FragData[2] = outGBuffer2_7;
  gl_FragData[3] = outEmission_1;
}


#endif


-- Hardware tier variant: Tier 3
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
No keywords set in this variant.
-- Hardware tier variant: Tier 1
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (208 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
  Vector4 _MainTex_ST at 192
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD3 [[ user(TEXCOORD3) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float u_xlat6;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = rsqrt(u_xlat6);
    output.TEXCOORD1.xyz = float3(u_xlat6) * u_xlat0.xyz;
    output.TEXCOORD3 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Hardware tier variant: Tier 1
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0

Constant Buffer "FGlobals" (8 bytes) on slot 0 {
  VectorHalf4 _Color at 0
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
    half4 SV_Target1 [[ color(xlt_remap_o[1]) ]];
    half4 SV_Target2 [[ color(xlt_remap_o[2]) ]];
    half4 SV_Target3 [[ color(xlt_remap_o[3]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_MainTex [[ sampler (0) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float4 u_xlat0;
    half3 u_xlat16_0;
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    output.SV_Target0.xyz = u_xlat16_0.xyz;
    output.SV_Target0.w = half(1.0);
    output.SV_Target1 = half4(0.0, 0.0, 0.0, 0.0);
    u_xlat0.xyz = fma(input.TEXCOORD1.xyz, float3(0.5, 0.5, 0.5), float3(0.5, 0.5, 0.5));
    u_xlat0.w = 1.0;
    output.SV_Target2 = half4(u_xlat0);
    output.SV_Target3 = half4(1.0, 1.0, 1.0, 1.0);
    return output;
}


//////////////////////////////////////////////////////
No keywords set in this variant.
-- Hardware tier variant: Tier 2
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (208 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
  Vector4 _MainTex_ST at 192
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD3 [[ user(TEXCOORD3) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float u_xlat6;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = rsqrt(u_xlat6);
    output.TEXCOORD1.xyz = float3(u_xlat6) * u_xlat0.xyz;
    output.TEXCOORD3 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Hardware tier variant: Tier 2
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0

Constant Buffer "FGlobals" (8 bytes) on slot 0 {
  VectorHalf4 _Color at 0
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
    half4 SV_Target1 [[ color(xlt_remap_o[1]) ]];
    half4 SV_Target2 [[ color(xlt_remap_o[2]) ]];
    half4 SV_Target3 [[ color(xlt_remap_o[3]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_MainTex [[ sampler (0) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float4 u_xlat0;
    half3 u_xlat16_0;
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    output.SV_Target0.xyz = u_xlat16_0.xyz;
    output.SV_Target0.w = half(1.0);
    output.SV_Target1 = half4(0.0, 0.0, 0.0, 0.0);
    u_xlat0.xyz = fma(input.TEXCOORD1.xyz, float3(0.5, 0.5, 0.5), float3(0.5, 0.5, 0.5));
    u_xlat0.w = 1.0;
    output.SV_Target2 = half4(u_xlat0);
    output.SV_Target3 = half4(1.0, 1.0, 1.0, 1.0);
    return output;
}


//////////////////////////////////////////////////////
No keywords set in this variant.
-- Hardware tier variant: Tier 3
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (208 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Matrix4x4 unity_MatrixVP at 128
  Vector4 _MainTex_ST at 192
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD3 [[ user(TEXCOORD3) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    float u_xlat6;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = rsqrt(u_xlat6);
    output.TEXCOORD1.xyz = float3(u_xlat6) * u_xlat0.xyz;
    output.TEXCOORD3 = float4(0.0, 0.0, 0.0, 0.0);
    return output;
}


-- Hardware tier variant: Tier 3
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0

Constant Buffer "FGlobals" (8 bytes) on slot 0 {
  VectorHalf4 _Color at 0
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
    half4 SV_Target1 [[ color(xlt_remap_o[1]) ]];
    half4 SV_Target2 [[ color(xlt_remap_o[2]) ]];
    half4 SV_Target3 [[ color(xlt_remap_o[3]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_MainTex [[ sampler (0) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float4 u_xlat0;
    half3 u_xlat16_0;
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    output.SV_Target0.xyz = u_xlat16_0.xyz;
    output.SV_Target0.w = half(1.0);
    output.SV_Target1 = half4(0.0, 0.0, 0.0, 0.0);
    u_xlat0.xyz = fma(input.TEXCOORD1.xyz, float3(0.5, 0.5, 0.5), float3(0.5, 0.5, 0.5));
    u_xlat0.w = 1.0;
    output.SV_Target2 = half4(u_xlat0);
    output.SV_Target3 = half4(1.0, 1.0, 1.0, 1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: LIGHTPROBE_SH 
-- Hardware tier variant: Tier 1
-- Vertex shader for "gles":
// Stats: 13 math, 1 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD3;
varying mediump vec3 xlv_TEXCOORD4;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  highp vec3 tmpvar_4;
  tmpvar_4 = normalize((_glesNormal * tmpvar_3));
  tmpvar_1.zw = vec2(0.0, 0.0);
  tmpvar_1.xy = vec2(0.0, 0.0);
  mediump vec3 normal_5;
  normal_5 = tmpvar_4;
  mediump vec4 tmpvar_6;
  tmpvar_6.w = 1.0;
  tmpvar_6.xyz = normal_5;
  mediump vec3 res_7;
  mediump vec3 x_8;
  x_8.x = dot (unity_SHAr, tmpvar_6);
  x_8.y = dot (unity_SHAg, tmpvar_6);
  x_8.z = dot (unity_SHAb, tmpvar_6);
  mediump vec3 x1_9;
  mediump vec4 tmpvar_10;
  tmpvar_10 = (normal_5.xyzz * normal_5.yzzx);
  x1_9.x = dot (unity_SHBr, tmpvar_10);
  x1_9.y = dot (unity_SHBg, tmpvar_10);
  x1_9.z = dot (unity_SHBb, tmpvar_10);
  res_7 = (x_8 + (x1_9 + (unity_SHC.xyz * 
    ((normal_5.x * normal_5.x) - (normal_5.y * normal_5.y))
  )));
  mediump vec3 tmpvar_11;
  tmpvar_11 = max (((1.055 * 
    pow (max (res_7, vec3(0.0, 0.0, 0.0)), vec3(0.4166667, 0.4166667, 0.4166667))
  ) - 0.055), vec3(0.0, 0.0, 0.0));
  res_7 = tmpvar_11;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = tmpvar_4;
  xlv_TEXCOORD2 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD3 = tmpvar_1;
  xlv_TEXCOORD4 = max (vec3(0.0, 0.0, 0.0), tmpvar_11);
}


#endif
#ifdef FRAGMENT
#extension GL_EXT_draw_buffers : enable
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying mediump vec3 xlv_TEXCOORD4;
void main ()
{
  mediump vec4 outEmission_1;
  lowp vec3 tmpvar_2;
  tmpvar_2 = xlv_TEXCOORD1;
  lowp vec3 tmpvar_3;
  lowp vec4 tmpvar_4;
  tmpvar_4 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  tmpvar_3 = tmpvar_4.xyz;
  mediump vec4 emission_5;
  mediump vec3 tmpvar_6;
  highp vec3 tmpvar_7;
  tmpvar_6 = tmpvar_3;
  tmpvar_7 = tmpvar_2;
  mediump vec4 outGBuffer2_8;
  mediump vec4 tmpvar_9;
  tmpvar_9.xyz = tmpvar_6;
  tmpvar_9.w = 1.0;
  mediump vec4 tmpvar_10;
  tmpvar_10.xyz = vec3(0.0, 0.0, 0.0);
  tmpvar_10.w = 0.0;
  highp vec4 tmpvar_11;
  tmpvar_11.w = 1.0;
  tmpvar_11.xyz = ((tmpvar_7 * 0.5) + 0.5);
  outGBuffer2_8 = tmpvar_11;
  lowp vec4 tmpvar_12;
  tmpvar_12.w = 1.0;
  tmpvar_12.xyz = vec3(0.0, 0.0, 0.0);
  emission_5 = tmpvar_12;
  emission_5.xyz = (emission_5.xyz + (tmpvar_4.xyz * xlv_TEXCOORD4));
  outEmission_1.w = emission_5.w;
  outEmission_1.xyz = exp2(-(emission_5.xyz));
  gl_FragData[0] = tmpvar_9;
  gl_FragData[1] = tmpvar_10;
  gl_FragData[2] = outGBuffer2_8;
  gl_FragData[3] = outEmission_1;
}


#endif


-- Hardware tier variant: Tier 1
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: LIGHTPROBE_SH 
-- Hardware tier variant: Tier 2
-- Vertex shader for "gles":
// Stats: 13 math, 1 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD3;
varying mediump vec3 xlv_TEXCOORD4;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  highp vec3 tmpvar_4;
  tmpvar_4 = normalize((_glesNormal * tmpvar_3));
  tmpvar_1.zw = vec2(0.0, 0.0);
  tmpvar_1.xy = vec2(0.0, 0.0);
  mediump vec3 normal_5;
  normal_5 = tmpvar_4;
  mediump vec4 tmpvar_6;
  tmpvar_6.w = 1.0;
  tmpvar_6.xyz = normal_5;
  mediump vec3 res_7;
  mediump vec3 x_8;
  x_8.x = dot (unity_SHAr, tmpvar_6);
  x_8.y = dot (unity_SHAg, tmpvar_6);
  x_8.z = dot (unity_SHAb, tmpvar_6);
  mediump vec3 x1_9;
  mediump vec4 tmpvar_10;
  tmpvar_10 = (normal_5.xyzz * normal_5.yzzx);
  x1_9.x = dot (unity_SHBr, tmpvar_10);
  x1_9.y = dot (unity_SHBg, tmpvar_10);
  x1_9.z = dot (unity_SHBb, tmpvar_10);
  res_7 = (x_8 + (x1_9 + (unity_SHC.xyz * 
    ((normal_5.x * normal_5.x) - (normal_5.y * normal_5.y))
  )));
  mediump vec3 tmpvar_11;
  tmpvar_11 = max (((1.055 * 
    pow (max (res_7, vec3(0.0, 0.0, 0.0)), vec3(0.4166667, 0.4166667, 0.4166667))
  ) - 0.055), vec3(0.0, 0.0, 0.0));
  res_7 = tmpvar_11;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = tmpvar_4;
  xlv_TEXCOORD2 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD3 = tmpvar_1;
  xlv_TEXCOORD4 = max (vec3(0.0, 0.0, 0.0), tmpvar_11);
}


#endif
#ifdef FRAGMENT
#extension GL_EXT_draw_buffers : enable
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying mediump vec3 xlv_TEXCOORD4;
void main ()
{
  mediump vec4 outEmission_1;
  lowp vec3 tmpvar_2;
  tmpvar_2 = xlv_TEXCOORD1;
  lowp vec3 tmpvar_3;
  lowp vec4 tmpvar_4;
  tmpvar_4 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  tmpvar_3 = tmpvar_4.xyz;
  mediump vec4 emission_5;
  mediump vec3 tmpvar_6;
  highp vec3 tmpvar_7;
  tmpvar_6 = tmpvar_3;
  tmpvar_7 = tmpvar_2;
  mediump vec4 outGBuffer2_8;
  mediump vec4 tmpvar_9;
  tmpvar_9.xyz = tmpvar_6;
  tmpvar_9.w = 1.0;
  mediump vec4 tmpvar_10;
  tmpvar_10.xyz = vec3(0.0, 0.0, 0.0);
  tmpvar_10.w = 0.0;
  highp vec4 tmpvar_11;
  tmpvar_11.w = 1.0;
  tmpvar_11.xyz = ((tmpvar_7 * 0.5) + 0.5);
  outGBuffer2_8 = tmpvar_11;
  lowp vec4 tmpvar_12;
  tmpvar_12.w = 1.0;
  tmpvar_12.xyz = vec3(0.0, 0.0, 0.0);
  emission_5 = tmpvar_12;
  emission_5.xyz = (emission_5.xyz + (tmpvar_4.xyz * xlv_TEXCOORD4));
  outEmission_1.w = emission_5.w;
  outEmission_1.xyz = exp2(-(emission_5.xyz));
  gl_FragData[0] = tmpvar_9;
  gl_FragData[1] = tmpvar_10;
  gl_FragData[2] = outGBuffer2_8;
  gl_FragData[3] = outEmission_1;
}


#endif


-- Hardware tier variant: Tier 2
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: LIGHTPROBE_SH 
-- Hardware tier variant: Tier 3
-- Vertex shader for "gles":
// Stats: 13 math, 1 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD3;
varying mediump vec3 xlv_TEXCOORD4;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  highp vec3 tmpvar_4;
  tmpvar_4 = normalize((_glesNormal * tmpvar_3));
  tmpvar_1.zw = vec2(0.0, 0.0);
  tmpvar_1.xy = vec2(0.0, 0.0);
  mediump vec3 normal_5;
  normal_5 = tmpvar_4;
  mediump vec4 tmpvar_6;
  tmpvar_6.w = 1.0;
  tmpvar_6.xyz = normal_5;
  mediump vec3 res_7;
  mediump vec3 x_8;
  x_8.x = dot (unity_SHAr, tmpvar_6);
  x_8.y = dot (unity_SHAg, tmpvar_6);
  x_8.z = dot (unity_SHAb, tmpvar_6);
  mediump vec3 x1_9;
  mediump vec4 tmpvar_10;
  tmpvar_10 = (normal_5.xyzz * normal_5.yzzx);
  x1_9.x = dot (unity_SHBr, tmpvar_10);
  x1_9.y = dot (unity_SHBg, tmpvar_10);
  x1_9.z = dot (unity_SHBb, tmpvar_10);
  res_7 = (x_8 + (x1_9 + (unity_SHC.xyz * 
    ((normal_5.x * normal_5.x) - (normal_5.y * normal_5.y))
  )));
  mediump vec3 tmpvar_11;
  tmpvar_11 = max (((1.055 * 
    pow (max (res_7, vec3(0.0, 0.0, 0.0)), vec3(0.4166667, 0.4166667, 0.4166667))
  ) - 0.055), vec3(0.0, 0.0, 0.0));
  res_7 = tmpvar_11;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = tmpvar_4;
  xlv_TEXCOORD2 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD3 = tmpvar_1;
  xlv_TEXCOORD4 = max (vec3(0.0, 0.0, 0.0), tmpvar_11);
}


#endif
#ifdef FRAGMENT
#extension GL_EXT_draw_buffers : enable
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying mediump vec3 xlv_TEXCOORD4;
void main ()
{
  mediump vec4 outEmission_1;
  lowp vec3 tmpvar_2;
  tmpvar_2 = xlv_TEXCOORD1;
  lowp vec3 tmpvar_3;
  lowp vec4 tmpvar_4;
  tmpvar_4 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  tmpvar_3 = tmpvar_4.xyz;
  mediump vec4 emission_5;
  mediump vec3 tmpvar_6;
  highp vec3 tmpvar_7;
  tmpvar_6 = tmpvar_3;
  tmpvar_7 = tmpvar_2;
  mediump vec4 outGBuffer2_8;
  mediump vec4 tmpvar_9;
  tmpvar_9.xyz = tmpvar_6;
  tmpvar_9.w = 1.0;
  mediump vec4 tmpvar_10;
  tmpvar_10.xyz = vec3(0.0, 0.0, 0.0);
  tmpvar_10.w = 0.0;
  highp vec4 tmpvar_11;
  tmpvar_11.w = 1.0;
  tmpvar_11.xyz = ((tmpvar_7 * 0.5) + 0.5);
  outGBuffer2_8 = tmpvar_11;
  lowp vec4 tmpvar_12;
  tmpvar_12.w = 1.0;
  tmpvar_12.xyz = vec3(0.0, 0.0, 0.0);
  emission_5 = tmpvar_12;
  emission_5.xyz = (emission_5.xyz + (tmpvar_4.xyz * xlv_TEXCOORD4));
  outEmission_1.w = emission_5.w;
  outEmission_1.xyz = exp2(-(emission_5.xyz));
  gl_FragData[0] = tmpvar_9;
  gl_FragData[1] = tmpvar_10;
  gl_FragData[2] = outGBuffer2_8;
  gl_FragData[3] = outEmission_1;
}


#endif


-- Hardware tier variant: Tier 3
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: LIGHTPROBE_SH 
-- Hardware tier variant: Tier 1
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (272 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 64
  Matrix4x4 unity_WorldToObject at 128
  Matrix4x4 unity_MatrixVP at 192
  VectorHalf4 unity_SHAr at 0
  VectorHalf4 unity_SHAg at 8
  VectorHalf4 unity_SHAb at 16
  VectorHalf4 unity_SHBr at 24
  VectorHalf4 unity_SHBg at 32
  VectorHalf4 unity_SHBb at 40
  VectorHalf4 unity_SHC at 48
  Vector4 _MainTex_ST at 256
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    half4 unity_SHAr;
    half4 unity_SHAg;
    half4 unity_SHAb;
    half4 unity_SHBr;
    half4 unity_SHBg;
    half4 unity_SHBb;
    half4 unity_SHC;
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD3 [[ user(TEXCOORD3) ]];
    half3 TEXCOORD4 [[ user(TEXCOORD4) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    half4 u_xlat16_1;
    half3 u_xlat16_2;
    half3 u_xlat16_3;
    float u_xlat12;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat12 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat12 = rsqrt(u_xlat12);
    u_xlat0.xyz = float3(u_xlat12) * u_xlat0.xyz;
    output.TEXCOORD1.xyz = u_xlat0.xyz;
    output.TEXCOORD3 = float4(0.0, 0.0, 0.0, 0.0);
    u_xlat16_2.x = half(u_xlat0.y * u_xlat0.y);
    u_xlat16_2.x = half(fma(u_xlat0.x, u_xlat0.x, (-float(u_xlat16_2.x))));
    u_xlat16_1 = half4(u_xlat0.yzzx * u_xlat0.xyzz);
    u_xlat16_3.x = dot(VGlobals.unity_SHBr, u_xlat16_1);
    u_xlat16_3.y = dot(VGlobals.unity_SHBg, u_xlat16_1);
    u_xlat16_3.z = dot(VGlobals.unity_SHBb, u_xlat16_1);
    u_xlat16_2.xyz = fma(VGlobals.unity_SHC.xyz, u_xlat16_2.xxx, u_xlat16_3.xyz);
    u_xlat0.w = 1.0;
    u_xlat16_3.x = half(dot(float4(VGlobals.unity_SHAr), u_xlat0));
    u_xlat16_3.y = half(dot(float4(VGlobals.unity_SHAg), u_xlat0));
    u_xlat16_3.z = half(dot(float4(VGlobals.unity_SHAb), u_xlat0));
    u_xlat16_2.xyz = u_xlat16_2.xyz + u_xlat16_3.xyz;
    u_xlat16_2.xyz = max(u_xlat16_2.xyz, half3(0.0, 0.0, 0.0));
    u_xlat0.xyz = log2(float3(u_xlat16_2.xyz));
    u_xlat0.xyz = u_xlat0.xyz * float3(0.416666657, 0.416666657, 0.416666657);
    u_xlat0.xyz = exp2(u_xlat0.xyz);
    u_xlat0.xyz = fma(u_xlat0.xyz, float3(1.05499995, 1.05499995, 1.05499995), float3(-0.0549999997, -0.0549999997, -0.0549999997));
    u_xlat0.xyz = max(u_xlat0.xyz, float3(0.0, 0.0, 0.0));
    output.TEXCOORD4.xyz = half3(u_xlat0.xyz);
    return output;
}


-- Hardware tier variant: Tier 1
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0

Constant Buffer "FGlobals" (8 bytes) on slot 0 {
  VectorHalf4 _Color at 0
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
    half3 TEXCOORD4 [[ user(TEXCOORD4) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
    half4 SV_Target1 [[ color(xlt_remap_o[1]) ]];
    half4 SV_Target2 [[ color(xlt_remap_o[2]) ]];
    half4 SV_Target3 [[ color(xlt_remap_o[3]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_MainTex [[ sampler (0) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float4 u_xlat0;
    half3 u_xlat16_0;
    half3 u_xlat16_1;
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    output.SV_Target0.xyz = u_xlat16_0.xyz;
    u_xlat16_1.xyz = u_xlat16_0.xyz * input.TEXCOORD4.xyz;
    output.SV_Target3.xyz = exp2((-u_xlat16_1.xyz));
    output.SV_Target0.w = half(1.0);
    output.SV_Target1 = half4(0.0, 0.0, 0.0, 0.0);
    u_xlat0.xyz = fma(input.TEXCOORD1.xyz, float3(0.5, 0.5, 0.5), float3(0.5, 0.5, 0.5));
    u_xlat0.w = 1.0;
    output.SV_Target2 = half4(u_xlat0);
    output.SV_Target3.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: LIGHTPROBE_SH 
-- Hardware tier variant: Tier 2
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (272 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 64
  Matrix4x4 unity_WorldToObject at 128
  Matrix4x4 unity_MatrixVP at 192
  VectorHalf4 unity_SHAr at 0
  VectorHalf4 unity_SHAg at 8
  VectorHalf4 unity_SHAb at 16
  VectorHalf4 unity_SHBr at 24
  VectorHalf4 unity_SHBg at 32
  VectorHalf4 unity_SHBb at 40
  VectorHalf4 unity_SHC at 48
  Vector4 _MainTex_ST at 256
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    half4 unity_SHAr;
    half4 unity_SHAg;
    half4 unity_SHAb;
    half4 unity_SHBr;
    half4 unity_SHBg;
    half4 unity_SHBb;
    half4 unity_SHC;
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD3 [[ user(TEXCOORD3) ]];
    half3 TEXCOORD4 [[ user(TEXCOORD4) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    half4 u_xlat16_1;
    half3 u_xlat16_2;
    half3 u_xlat16_3;
    float u_xlat12;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat12 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat12 = rsqrt(u_xlat12);
    u_xlat0.xyz = float3(u_xlat12) * u_xlat0.xyz;
    output.TEXCOORD1.xyz = u_xlat0.xyz;
    output.TEXCOORD3 = float4(0.0, 0.0, 0.0, 0.0);
    u_xlat16_2.x = half(u_xlat0.y * u_xlat0.y);
    u_xlat16_2.x = half(fma(u_xlat0.x, u_xlat0.x, (-float(u_xlat16_2.x))));
    u_xlat16_1 = half4(u_xlat0.yzzx * u_xlat0.xyzz);
    u_xlat16_3.x = dot(VGlobals.unity_SHBr, u_xlat16_1);
    u_xlat16_3.y = dot(VGlobals.unity_SHBg, u_xlat16_1);
    u_xlat16_3.z = dot(VGlobals.unity_SHBb, u_xlat16_1);
    u_xlat16_2.xyz = fma(VGlobals.unity_SHC.xyz, u_xlat16_2.xxx, u_xlat16_3.xyz);
    u_xlat0.w = 1.0;
    u_xlat16_3.x = half(dot(float4(VGlobals.unity_SHAr), u_xlat0));
    u_xlat16_3.y = half(dot(float4(VGlobals.unity_SHAg), u_xlat0));
    u_xlat16_3.z = half(dot(float4(VGlobals.unity_SHAb), u_xlat0));
    u_xlat16_2.xyz = u_xlat16_2.xyz + u_xlat16_3.xyz;
    u_xlat16_2.xyz = max(u_xlat16_2.xyz, half3(0.0, 0.0, 0.0));
    u_xlat0.xyz = log2(float3(u_xlat16_2.xyz));
    u_xlat0.xyz = u_xlat0.xyz * float3(0.416666657, 0.416666657, 0.416666657);
    u_xlat0.xyz = exp2(u_xlat0.xyz);
    u_xlat0.xyz = fma(u_xlat0.xyz, float3(1.05499995, 1.05499995, 1.05499995), float3(-0.0549999997, -0.0549999997, -0.0549999997));
    u_xlat0.xyz = max(u_xlat0.xyz, float3(0.0, 0.0, 0.0));
    output.TEXCOORD4.xyz = half3(u_xlat0.xyz);
    return output;
}


-- Hardware tier variant: Tier 2
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0

Constant Buffer "FGlobals" (8 bytes) on slot 0 {
  VectorHalf4 _Color at 0
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
    half3 TEXCOORD4 [[ user(TEXCOORD4) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
    half4 SV_Target1 [[ color(xlt_remap_o[1]) ]];
    half4 SV_Target2 [[ color(xlt_remap_o[2]) ]];
    half4 SV_Target3 [[ color(xlt_remap_o[3]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_MainTex [[ sampler (0) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float4 u_xlat0;
    half3 u_xlat16_0;
    half3 u_xlat16_1;
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    output.SV_Target0.xyz = u_xlat16_0.xyz;
    u_xlat16_1.xyz = u_xlat16_0.xyz * input.TEXCOORD4.xyz;
    output.SV_Target3.xyz = exp2((-u_xlat16_1.xyz));
    output.SV_Target0.w = half(1.0);
    output.SV_Target1 = half4(0.0, 0.0, 0.0, 0.0);
    u_xlat0.xyz = fma(input.TEXCOORD1.xyz, float3(0.5, 0.5, 0.5), float3(0.5, 0.5, 0.5));
    u_xlat0.w = 1.0;
    output.SV_Target2 = half4(u_xlat0);
    output.SV_Target3.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: LIGHTPROBE_SH 
-- Hardware tier variant: Tier 3
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (272 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 64
  Matrix4x4 unity_WorldToObject at 128
  Matrix4x4 unity_MatrixVP at 192
  VectorHalf4 unity_SHAr at 0
  VectorHalf4 unity_SHAg at 8
  VectorHalf4 unity_SHAb at 16
  VectorHalf4 unity_SHBr at 24
  VectorHalf4 unity_SHBg at 32
  VectorHalf4 unity_SHBb at 40
  VectorHalf4 unity_SHC at 48
  Vector4 _MainTex_ST at 256
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    half4 unity_SHAr;
    half4 unity_SHAg;
    half4 unity_SHAb;
    half4 unity_SHBr;
    half4 unity_SHBg;
    half4 unity_SHBb;
    half4 unity_SHC;
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD3 [[ user(TEXCOORD3) ]];
    half3 TEXCOORD4 [[ user(TEXCOORD4) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    half4 u_xlat16_1;
    half3 u_xlat16_2;
    half3 u_xlat16_3;
    float u_xlat12;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat12 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat12 = rsqrt(u_xlat12);
    u_xlat0.xyz = float3(u_xlat12) * u_xlat0.xyz;
    output.TEXCOORD1.xyz = u_xlat0.xyz;
    output.TEXCOORD3 = float4(0.0, 0.0, 0.0, 0.0);
    u_xlat16_2.x = half(u_xlat0.y * u_xlat0.y);
    u_xlat16_2.x = half(fma(u_xlat0.x, u_xlat0.x, (-float(u_xlat16_2.x))));
    u_xlat16_1 = half4(u_xlat0.yzzx * u_xlat0.xyzz);
    u_xlat16_3.x = dot(VGlobals.unity_SHBr, u_xlat16_1);
    u_xlat16_3.y = dot(VGlobals.unity_SHBg, u_xlat16_1);
    u_xlat16_3.z = dot(VGlobals.unity_SHBb, u_xlat16_1);
    u_xlat16_2.xyz = fma(VGlobals.unity_SHC.xyz, u_xlat16_2.xxx, u_xlat16_3.xyz);
    u_xlat0.w = 1.0;
    u_xlat16_3.x = half(dot(float4(VGlobals.unity_SHAr), u_xlat0));
    u_xlat16_3.y = half(dot(float4(VGlobals.unity_SHAg), u_xlat0));
    u_xlat16_3.z = half(dot(float4(VGlobals.unity_SHAb), u_xlat0));
    u_xlat16_2.xyz = u_xlat16_2.xyz + u_xlat16_3.xyz;
    u_xlat16_2.xyz = max(u_xlat16_2.xyz, half3(0.0, 0.0, 0.0));
    u_xlat0.xyz = log2(float3(u_xlat16_2.xyz));
    u_xlat0.xyz = u_xlat0.xyz * float3(0.416666657, 0.416666657, 0.416666657);
    u_xlat0.xyz = exp2(u_xlat0.xyz);
    u_xlat0.xyz = fma(u_xlat0.xyz, float3(1.05499995, 1.05499995, 1.05499995), float3(-0.0549999997, -0.0549999997, -0.0549999997));
    u_xlat0.xyz = max(u_xlat0.xyz, float3(0.0, 0.0, 0.0));
    output.TEXCOORD4.xyz = half3(u_xlat0.xyz);
    return output;
}


-- Hardware tier variant: Tier 3
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0

Constant Buffer "FGlobals" (8 bytes) on slot 0 {
  VectorHalf4 _Color at 0
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
    half3 TEXCOORD4 [[ user(TEXCOORD4) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
    half4 SV_Target1 [[ color(xlt_remap_o[1]) ]];
    half4 SV_Target2 [[ color(xlt_remap_o[2]) ]];
    half4 SV_Target3 [[ color(xlt_remap_o[3]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_MainTex [[ sampler (0) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float4 u_xlat0;
    half3 u_xlat16_0;
    half3 u_xlat16_1;
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    output.SV_Target0.xyz = u_xlat16_0.xyz;
    u_xlat16_1.xyz = u_xlat16_0.xyz * input.TEXCOORD4.xyz;
    output.SV_Target3.xyz = exp2((-u_xlat16_1.xyz));
    output.SV_Target0.w = half(1.0);
    output.SV_Target1 = half4(0.0, 0.0, 0.0, 0.0);
    u_xlat0.xyz = fma(input.TEXCOORD1.xyz, float3(0.5, 0.5, 0.5), float3(0.5, 0.5, 0.5));
    u_xlat0.w = 1.0;
    output.SV_Target2 = half4(u_xlat0);
    output.SV_Target3.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: LIGHTPROBE_SH UNITY_HDR_ON 
-- Hardware tier variant: Tier 1
-- Vertex shader for "gles":
// Stats: 11 math, 1 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD3;
varying mediump vec3 xlv_TEXCOORD4;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  highp vec3 tmpvar_4;
  tmpvar_4 = normalize((_glesNormal * tmpvar_3));
  tmpvar_1.zw = vec2(0.0, 0.0);
  tmpvar_1.xy = vec2(0.0, 0.0);
  mediump vec3 normal_5;
  normal_5 = tmpvar_4;
  mediump vec4 tmpvar_6;
  tmpvar_6.w = 1.0;
  tmpvar_6.xyz = normal_5;
  mediump vec3 res_7;
  mediump vec3 x_8;
  x_8.x = dot (unity_SHAr, tmpvar_6);
  x_8.y = dot (unity_SHAg, tmpvar_6);
  x_8.z = dot (unity_SHAb, tmpvar_6);
  mediump vec3 x1_9;
  mediump vec4 tmpvar_10;
  tmpvar_10 = (normal_5.xyzz * normal_5.yzzx);
  x1_9.x = dot (unity_SHBr, tmpvar_10);
  x1_9.y = dot (unity_SHBg, tmpvar_10);
  x1_9.z = dot (unity_SHBb, tmpvar_10);
  res_7 = (x_8 + (x1_9 + (unity_SHC.xyz * 
    ((normal_5.x * normal_5.x) - (normal_5.y * normal_5.y))
  )));
  mediump vec3 tmpvar_11;
  tmpvar_11 = max (((1.055 * 
    pow (max (res_7, vec3(0.0, 0.0, 0.0)), vec3(0.4166667, 0.4166667, 0.4166667))
  ) - 0.055), vec3(0.0, 0.0, 0.0));
  res_7 = tmpvar_11;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = tmpvar_4;
  xlv_TEXCOORD2 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD3 = tmpvar_1;
  xlv_TEXCOORD4 = max (vec3(0.0, 0.0, 0.0), tmpvar_11);
}


#endif
#ifdef FRAGMENT
#extension GL_EXT_draw_buffers : enable
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying mediump vec3 xlv_TEXCOORD4;
void main ()
{
  lowp vec3 tmpvar_1;
  tmpvar_1 = xlv_TEXCOORD1;
  lowp vec3 tmpvar_2;
  lowp vec4 tmpvar_3;
  tmpvar_3 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  tmpvar_2 = tmpvar_3.xyz;
  mediump vec4 emission_4;
  mediump vec3 tmpvar_5;
  highp vec3 tmpvar_6;
  tmpvar_5 = tmpvar_2;
  tmpvar_6 = tmpvar_1;
  mediump vec4 outGBuffer2_7;
  mediump vec4 tmpvar_8;
  tmpvar_8.xyz = tmpvar_5;
  tmpvar_8.w = 1.0;
  mediump vec4 tmpvar_9;
  tmpvar_9.xyz = vec3(0.0, 0.0, 0.0);
  tmpvar_9.w = 0.0;
  highp vec4 tmpvar_10;
  tmpvar_10.w = 1.0;
  tmpvar_10.xyz = ((tmpvar_6 * 0.5) + 0.5);
  outGBuffer2_7 = tmpvar_10;
  lowp vec4 tmpvar_11;
  tmpvar_11.w = 1.0;
  tmpvar_11.xyz = vec3(0.0, 0.0, 0.0);
  emission_4 = tmpvar_11;
  emission_4.xyz = (emission_4.xyz + (tmpvar_3.xyz * xlv_TEXCOORD4));
  gl_FragData[0] = tmpvar_8;
  gl_FragData[1] = tmpvar_9;
  gl_FragData[2] = outGBuffer2_7;
  gl_FragData[3] = emission_4;
}


#endif


-- Hardware tier variant: Tier 1
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: LIGHTPROBE_SH UNITY_HDR_ON 
-- Hardware tier variant: Tier 2
-- Vertex shader for "gles":
// Stats: 11 math, 1 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD3;
varying mediump vec3 xlv_TEXCOORD4;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  highp vec3 tmpvar_4;
  tmpvar_4 = normalize((_glesNormal * tmpvar_3));
  tmpvar_1.zw = vec2(0.0, 0.0);
  tmpvar_1.xy = vec2(0.0, 0.0);
  mediump vec3 normal_5;
  normal_5 = tmpvar_4;
  mediump vec4 tmpvar_6;
  tmpvar_6.w = 1.0;
  tmpvar_6.xyz = normal_5;
  mediump vec3 res_7;
  mediump vec3 x_8;
  x_8.x = dot (unity_SHAr, tmpvar_6);
  x_8.y = dot (unity_SHAg, tmpvar_6);
  x_8.z = dot (unity_SHAb, tmpvar_6);
  mediump vec3 x1_9;
  mediump vec4 tmpvar_10;
  tmpvar_10 = (normal_5.xyzz * normal_5.yzzx);
  x1_9.x = dot (unity_SHBr, tmpvar_10);
  x1_9.y = dot (unity_SHBg, tmpvar_10);
  x1_9.z = dot (unity_SHBb, tmpvar_10);
  res_7 = (x_8 + (x1_9 + (unity_SHC.xyz * 
    ((normal_5.x * normal_5.x) - (normal_5.y * normal_5.y))
  )));
  mediump vec3 tmpvar_11;
  tmpvar_11 = max (((1.055 * 
    pow (max (res_7, vec3(0.0, 0.0, 0.0)), vec3(0.4166667, 0.4166667, 0.4166667))
  ) - 0.055), vec3(0.0, 0.0, 0.0));
  res_7 = tmpvar_11;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = tmpvar_4;
  xlv_TEXCOORD2 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD3 = tmpvar_1;
  xlv_TEXCOORD4 = max (vec3(0.0, 0.0, 0.0), tmpvar_11);
}


#endif
#ifdef FRAGMENT
#extension GL_EXT_draw_buffers : enable
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying mediump vec3 xlv_TEXCOORD4;
void main ()
{
  lowp vec3 tmpvar_1;
  tmpvar_1 = xlv_TEXCOORD1;
  lowp vec3 tmpvar_2;
  lowp vec4 tmpvar_3;
  tmpvar_3 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  tmpvar_2 = tmpvar_3.xyz;
  mediump vec4 emission_4;
  mediump vec3 tmpvar_5;
  highp vec3 tmpvar_6;
  tmpvar_5 = tmpvar_2;
  tmpvar_6 = tmpvar_1;
  mediump vec4 outGBuffer2_7;
  mediump vec4 tmpvar_8;
  tmpvar_8.xyz = tmpvar_5;
  tmpvar_8.w = 1.0;
  mediump vec4 tmpvar_9;
  tmpvar_9.xyz = vec3(0.0, 0.0, 0.0);
  tmpvar_9.w = 0.0;
  highp vec4 tmpvar_10;
  tmpvar_10.w = 1.0;
  tmpvar_10.xyz = ((tmpvar_6 * 0.5) + 0.5);
  outGBuffer2_7 = tmpvar_10;
  lowp vec4 tmpvar_11;
  tmpvar_11.w = 1.0;
  tmpvar_11.xyz = vec3(0.0, 0.0, 0.0);
  emission_4 = tmpvar_11;
  emission_4.xyz = (emission_4.xyz + (tmpvar_3.xyz * xlv_TEXCOORD4));
  gl_FragData[0] = tmpvar_8;
  gl_FragData[1] = tmpvar_9;
  gl_FragData[2] = outGBuffer2_7;
  gl_FragData[3] = emission_4;
}


#endif


-- Hardware tier variant: Tier 2
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: LIGHTPROBE_SH UNITY_HDR_ON 
-- Hardware tier variant: Tier 3
-- Vertex shader for "gles":
// Stats: 11 math, 1 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform mediump vec4 unity_SHAr;
uniform mediump vec4 unity_SHAg;
uniform mediump vec4 unity_SHAb;
uniform mediump vec4 unity_SHBr;
uniform mediump vec4 unity_SHBg;
uniform mediump vec4 unity_SHBb;
uniform mediump vec4 unity_SHC;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_WorldToObject;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 _MainTex_ST;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying highp vec3 xlv_TEXCOORD2;
varying highp vec4 xlv_TEXCOORD3;
varying mediump vec3 xlv_TEXCOORD4;
void main ()
{
  highp vec4 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp mat3 tmpvar_3;
  tmpvar_3[0] = unity_WorldToObject[0].xyz;
  tmpvar_3[1] = unity_WorldToObject[1].xyz;
  tmpvar_3[2] = unity_WorldToObject[2].xyz;
  highp vec3 tmpvar_4;
  tmpvar_4 = normalize((_glesNormal * tmpvar_3));
  tmpvar_1.zw = vec2(0.0, 0.0);
  tmpvar_1.xy = vec2(0.0, 0.0);
  mediump vec3 normal_5;
  normal_5 = tmpvar_4;
  mediump vec4 tmpvar_6;
  tmpvar_6.w = 1.0;
  tmpvar_6.xyz = normal_5;
  mediump vec3 res_7;
  mediump vec3 x_8;
  x_8.x = dot (unity_SHAr, tmpvar_6);
  x_8.y = dot (unity_SHAg, tmpvar_6);
  x_8.z = dot (unity_SHAb, tmpvar_6);
  mediump vec3 x1_9;
  mediump vec4 tmpvar_10;
  tmpvar_10 = (normal_5.xyzz * normal_5.yzzx);
  x1_9.x = dot (unity_SHBr, tmpvar_10);
  x1_9.y = dot (unity_SHBg, tmpvar_10);
  x1_9.z = dot (unity_SHBb, tmpvar_10);
  res_7 = (x_8 + (x1_9 + (unity_SHC.xyz * 
    ((normal_5.x * normal_5.x) - (normal_5.y * normal_5.y))
  )));
  mediump vec3 tmpvar_11;
  tmpvar_11 = max (((1.055 * 
    pow (max (res_7, vec3(0.0, 0.0, 0.0)), vec3(0.4166667, 0.4166667, 0.4166667))
  ) - 0.055), vec3(0.0, 0.0, 0.0));
  res_7 = tmpvar_11;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = ((_glesMultiTexCoord0.xy * _MainTex_ST.xy) + _MainTex_ST.zw);
  xlv_TEXCOORD1 = tmpvar_4;
  xlv_TEXCOORD2 = (unity_ObjectToWorld * _glesVertex).xyz;
  xlv_TEXCOORD3 = tmpvar_1;
  xlv_TEXCOORD4 = max (vec3(0.0, 0.0, 0.0), tmpvar_11);
}


#endif
#ifdef FRAGMENT
#extension GL_EXT_draw_buffers : enable
uniform sampler2D _MainTex;
uniform lowp vec4 _Color;
varying highp vec2 xlv_TEXCOORD0;
varying highp vec3 xlv_TEXCOORD1;
varying mediump vec3 xlv_TEXCOORD4;
void main ()
{
  lowp vec3 tmpvar_1;
  tmpvar_1 = xlv_TEXCOORD1;
  lowp vec3 tmpvar_2;
  lowp vec4 tmpvar_3;
  tmpvar_3 = (texture2D (_MainTex, xlv_TEXCOORD0) * _Color);
  tmpvar_2 = tmpvar_3.xyz;
  mediump vec4 emission_4;
  mediump vec3 tmpvar_5;
  highp vec3 tmpvar_6;
  tmpvar_5 = tmpvar_2;
  tmpvar_6 = tmpvar_1;
  mediump vec4 outGBuffer2_7;
  mediump vec4 tmpvar_8;
  tmpvar_8.xyz = tmpvar_5;
  tmpvar_8.w = 1.0;
  mediump vec4 tmpvar_9;
  tmpvar_9.xyz = vec3(0.0, 0.0, 0.0);
  tmpvar_9.w = 0.0;
  highp vec4 tmpvar_10;
  tmpvar_10.w = 1.0;
  tmpvar_10.xyz = ((tmpvar_6 * 0.5) + 0.5);
  outGBuffer2_7 = tmpvar_10;
  lowp vec4 tmpvar_11;
  tmpvar_11.w = 1.0;
  tmpvar_11.xyz = vec3(0.0, 0.0, 0.0);
  emission_4 = tmpvar_11;
  emission_4.xyz = (emission_4.xyz + (tmpvar_3.xyz * xlv_TEXCOORD4));
  gl_FragData[0] = tmpvar_8;
  gl_FragData[1] = tmpvar_9;
  gl_FragData[2] = outGBuffer2_7;
  gl_FragData[3] = emission_4;
}


#endif


-- Hardware tier variant: Tier 3
-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: LIGHTPROBE_SH UNITY_HDR_ON 
-- Hardware tier variant: Tier 1
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (272 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 64
  Matrix4x4 unity_WorldToObject at 128
  Matrix4x4 unity_MatrixVP at 192
  VectorHalf4 unity_SHAr at 0
  VectorHalf4 unity_SHAg at 8
  VectorHalf4 unity_SHAb at 16
  VectorHalf4 unity_SHBr at 24
  VectorHalf4 unity_SHBg at 32
  VectorHalf4 unity_SHBb at 40
  VectorHalf4 unity_SHC at 48
  Vector4 _MainTex_ST at 256
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    half4 unity_SHAr;
    half4 unity_SHAg;
    half4 unity_SHAb;
    half4 unity_SHBr;
    half4 unity_SHBg;
    half4 unity_SHBb;
    half4 unity_SHC;
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD3 [[ user(TEXCOORD3) ]];
    half3 TEXCOORD4 [[ user(TEXCOORD4) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    half4 u_xlat16_1;
    half3 u_xlat16_2;
    half3 u_xlat16_3;
    float u_xlat12;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat12 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat12 = rsqrt(u_xlat12);
    u_xlat0.xyz = float3(u_xlat12) * u_xlat0.xyz;
    output.TEXCOORD1.xyz = u_xlat0.xyz;
    output.TEXCOORD3 = float4(0.0, 0.0, 0.0, 0.0);
    u_xlat16_2.x = half(u_xlat0.y * u_xlat0.y);
    u_xlat16_2.x = half(fma(u_xlat0.x, u_xlat0.x, (-float(u_xlat16_2.x))));
    u_xlat16_1 = half4(u_xlat0.yzzx * u_xlat0.xyzz);
    u_xlat16_3.x = dot(VGlobals.unity_SHBr, u_xlat16_1);
    u_xlat16_3.y = dot(VGlobals.unity_SHBg, u_xlat16_1);
    u_xlat16_3.z = dot(VGlobals.unity_SHBb, u_xlat16_1);
    u_xlat16_2.xyz = fma(VGlobals.unity_SHC.xyz, u_xlat16_2.xxx, u_xlat16_3.xyz);
    u_xlat0.w = 1.0;
    u_xlat16_3.x = half(dot(float4(VGlobals.unity_SHAr), u_xlat0));
    u_xlat16_3.y = half(dot(float4(VGlobals.unity_SHAg), u_xlat0));
    u_xlat16_3.z = half(dot(float4(VGlobals.unity_SHAb), u_xlat0));
    u_xlat16_2.xyz = u_xlat16_2.xyz + u_xlat16_3.xyz;
    u_xlat16_2.xyz = max(u_xlat16_2.xyz, half3(0.0, 0.0, 0.0));
    u_xlat0.xyz = log2(float3(u_xlat16_2.xyz));
    u_xlat0.xyz = u_xlat0.xyz * float3(0.416666657, 0.416666657, 0.416666657);
    u_xlat0.xyz = exp2(u_xlat0.xyz);
    u_xlat0.xyz = fma(u_xlat0.xyz, float3(1.05499995, 1.05499995, 1.05499995), float3(-0.0549999997, -0.0549999997, -0.0549999997));
    u_xlat0.xyz = max(u_xlat0.xyz, float3(0.0, 0.0, 0.0));
    output.TEXCOORD4.xyz = half3(u_xlat0.xyz);
    return output;
}


-- Hardware tier variant: Tier 1
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0

Constant Buffer "FGlobals" (8 bytes) on slot 0 {
  VectorHalf4 _Color at 0
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
    half3 TEXCOORD4 [[ user(TEXCOORD4) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
    half4 SV_Target1 [[ color(xlt_remap_o[1]) ]];
    half4 SV_Target2 [[ color(xlt_remap_o[2]) ]];
    half4 SV_Target3 [[ color(xlt_remap_o[3]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_MainTex [[ sampler (0) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float4 u_xlat0;
    half3 u_xlat16_0;
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    output.SV_Target0.xyz = u_xlat16_0.xyz;
    output.SV_Target3.xyz = u_xlat16_0.xyz * input.TEXCOORD4.xyz;
    output.SV_Target0.w = half(1.0);
    output.SV_Target1 = half4(0.0, 0.0, 0.0, 0.0);
    u_xlat0.xyz = fma(input.TEXCOORD1.xyz, float3(0.5, 0.5, 0.5), float3(0.5, 0.5, 0.5));
    u_xlat0.w = 1.0;
    output.SV_Target2 = half4(u_xlat0);
    output.SV_Target3.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: LIGHTPROBE_SH UNITY_HDR_ON 
-- Hardware tier variant: Tier 2
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (272 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 64
  Matrix4x4 unity_WorldToObject at 128
  Matrix4x4 unity_MatrixVP at 192
  VectorHalf4 unity_SHAr at 0
  VectorHalf4 unity_SHAg at 8
  VectorHalf4 unity_SHAb at 16
  VectorHalf4 unity_SHBr at 24
  VectorHalf4 unity_SHBg at 32
  VectorHalf4 unity_SHBb at 40
  VectorHalf4 unity_SHC at 48
  Vector4 _MainTex_ST at 256
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    half4 unity_SHAr;
    half4 unity_SHAg;
    half4 unity_SHAb;
    half4 unity_SHBr;
    half4 unity_SHBg;
    half4 unity_SHBb;
    half4 unity_SHC;
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD3 [[ user(TEXCOORD3) ]];
    half3 TEXCOORD4 [[ user(TEXCOORD4) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    half4 u_xlat16_1;
    half3 u_xlat16_2;
    half3 u_xlat16_3;
    float u_xlat12;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat12 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat12 = rsqrt(u_xlat12);
    u_xlat0.xyz = float3(u_xlat12) * u_xlat0.xyz;
    output.TEXCOORD1.xyz = u_xlat0.xyz;
    output.TEXCOORD3 = float4(0.0, 0.0, 0.0, 0.0);
    u_xlat16_2.x = half(u_xlat0.y * u_xlat0.y);
    u_xlat16_2.x = half(fma(u_xlat0.x, u_xlat0.x, (-float(u_xlat16_2.x))));
    u_xlat16_1 = half4(u_xlat0.yzzx * u_xlat0.xyzz);
    u_xlat16_3.x = dot(VGlobals.unity_SHBr, u_xlat16_1);
    u_xlat16_3.y = dot(VGlobals.unity_SHBg, u_xlat16_1);
    u_xlat16_3.z = dot(VGlobals.unity_SHBb, u_xlat16_1);
    u_xlat16_2.xyz = fma(VGlobals.unity_SHC.xyz, u_xlat16_2.xxx, u_xlat16_3.xyz);
    u_xlat0.w = 1.0;
    u_xlat16_3.x = half(dot(float4(VGlobals.unity_SHAr), u_xlat0));
    u_xlat16_3.y = half(dot(float4(VGlobals.unity_SHAg), u_xlat0));
    u_xlat16_3.z = half(dot(float4(VGlobals.unity_SHAb), u_xlat0));
    u_xlat16_2.xyz = u_xlat16_2.xyz + u_xlat16_3.xyz;
    u_xlat16_2.xyz = max(u_xlat16_2.xyz, half3(0.0, 0.0, 0.0));
    u_xlat0.xyz = log2(float3(u_xlat16_2.xyz));
    u_xlat0.xyz = u_xlat0.xyz * float3(0.416666657, 0.416666657, 0.416666657);
    u_xlat0.xyz = exp2(u_xlat0.xyz);
    u_xlat0.xyz = fma(u_xlat0.xyz, float3(1.05499995, 1.05499995, 1.05499995), float3(-0.0549999997, -0.0549999997, -0.0549999997));
    u_xlat0.xyz = max(u_xlat0.xyz, float3(0.0, 0.0, 0.0));
    output.TEXCOORD4.xyz = half3(u_xlat0.xyz);
    return output;
}


-- Hardware tier variant: Tier 2
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0

Constant Buffer "FGlobals" (8 bytes) on slot 0 {
  VectorHalf4 _Color at 0
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
    half3 TEXCOORD4 [[ user(TEXCOORD4) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
    half4 SV_Target1 [[ color(xlt_remap_o[1]) ]];
    half4 SV_Target2 [[ color(xlt_remap_o[2]) ]];
    half4 SV_Target3 [[ color(xlt_remap_o[3]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_MainTex [[ sampler (0) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float4 u_xlat0;
    half3 u_xlat16_0;
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    output.SV_Target0.xyz = u_xlat16_0.xyz;
    output.SV_Target3.xyz = u_xlat16_0.xyz * input.TEXCOORD4.xyz;
    output.SV_Target0.w = half(1.0);
    output.SV_Target1 = half4(0.0, 0.0, 0.0, 0.0);
    u_xlat0.xyz = fma(input.TEXCOORD1.xyz, float3(0.5, 0.5, 0.5), float3(0.5, 0.5, 0.5));
    u_xlat0.w = 1.0;
    output.SV_Target2 = half4(u_xlat0);
    output.SV_Target3.w = half(1.0);
    return output;
}


//////////////////////////////////////////////////////
Keywords set in this variant: LIGHTPROBE_SH UNITY_HDR_ON 
-- Hardware tier variant: Tier 3
-- Vertex shader for "metal":
Uses vertex data channel "Vertex"
Uses vertex data channel "Color"
Uses vertex data channel "TexCoord"

Constant Buffer "VGlobals" (272 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 64
  Matrix4x4 unity_WorldToObject at 128
  Matrix4x4 unity_MatrixVP at 192
  VectorHalf4 unity_SHAr at 0
  VectorHalf4 unity_SHAg at 8
  VectorHalf4 unity_SHAb at 16
  VectorHalf4 unity_SHBr at 24
  VectorHalf4 unity_SHBg at 32
  VectorHalf4 unity_SHBb at 40
  VectorHalf4 unity_SHC at 48
  Vector4 _MainTex_ST at 256
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

struct VGlobals_Type
{
    half4 unity_SHAr;
    half4 unity_SHAg;
    half4 unity_SHAb;
    half4 unity_SHBr;
    half4 unity_SHBg;
    half4 unity_SHBb;
    half4 unity_SHC;
    float4 hlslcc_mtx4x4unity_ObjectToWorld[4];
    float4 hlslcc_mtx4x4unity_WorldToObject[4];
    float4 hlslcc_mtx4x4unity_MatrixVP[4];
    float4 _MainTex_ST;
};

struct Mtl_VertexIn
{
    float4 POSITION0 [[ attribute(0) ]] ;
    float3 NORMAL0 [[ attribute(1) ]] ;
    float4 TEXCOORD0 [[ attribute(2) ]] ;
};

struct Mtl_VertexOut
{
    float4 mtl_Position [[ position ]];
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]];
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]];
    float3 TEXCOORD2 [[ user(TEXCOORD2) ]];
    float4 TEXCOORD3 [[ user(TEXCOORD3) ]];
    half3 TEXCOORD4 [[ user(TEXCOORD4) ]];
};

vertex Mtl_VertexOut xlatMtlMain(
    constant VGlobals_Type& VGlobals [[ buffer(0) ]],
    Mtl_VertexIn input [[ stage_in ]])
{
    Mtl_VertexOut output;
    float4 u_xlat0;
    float4 u_xlat1;
    half4 u_xlat16_1;
    half3 u_xlat16_2;
    half3 u_xlat16_3;
    float u_xlat12;
    u_xlat0 = input.POSITION0.yyyy * VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[0], input.POSITION0.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[2], input.POSITION0.zzzz, u_xlat0);
    u_xlat1 = u_xlat0 + VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3];
    output.TEXCOORD2.xyz = fma(VGlobals.hlslcc_mtx4x4unity_ObjectToWorld[3].xyz, input.POSITION0.www, u_xlat0.xyz);
    u_xlat0 = u_xlat1.yyyy * VGlobals.hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[0], u_xlat1.xxxx, u_xlat0);
    u_xlat0 = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[2], u_xlat1.zzzz, u_xlat0);
    output.mtl_Position = fma(VGlobals.hlslcc_mtx4x4unity_MatrixVP[3], u_xlat1.wwww, u_xlat0);
    output.TEXCOORD0.xy = fma(input.TEXCOORD0.xy, VGlobals._MainTex_ST.xy, VGlobals._MainTex_ST.zw);
    u_xlat0.x = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(input.NORMAL0.xyz, VGlobals.hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat12 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat12 = rsqrt(u_xlat12);
    u_xlat0.xyz = float3(u_xlat12) * u_xlat0.xyz;
    output.TEXCOORD1.xyz = u_xlat0.xyz;
    output.TEXCOORD3 = float4(0.0, 0.0, 0.0, 0.0);
    u_xlat16_2.x = half(u_xlat0.y * u_xlat0.y);
    u_xlat16_2.x = half(fma(u_xlat0.x, u_xlat0.x, (-float(u_xlat16_2.x))));
    u_xlat16_1 = half4(u_xlat0.yzzx * u_xlat0.xyzz);
    u_xlat16_3.x = dot(VGlobals.unity_SHBr, u_xlat16_1);
    u_xlat16_3.y = dot(VGlobals.unity_SHBg, u_xlat16_1);
    u_xlat16_3.z = dot(VGlobals.unity_SHBb, u_xlat16_1);
    u_xlat16_2.xyz = fma(VGlobals.unity_SHC.xyz, u_xlat16_2.xxx, u_xlat16_3.xyz);
    u_xlat0.w = 1.0;
    u_xlat16_3.x = half(dot(float4(VGlobals.unity_SHAr), u_xlat0));
    u_xlat16_3.y = half(dot(float4(VGlobals.unity_SHAg), u_xlat0));
    u_xlat16_3.z = half(dot(float4(VGlobals.unity_SHAb), u_xlat0));
    u_xlat16_2.xyz = u_xlat16_2.xyz + u_xlat16_3.xyz;
    u_xlat16_2.xyz = max(u_xlat16_2.xyz, half3(0.0, 0.0, 0.0));
    u_xlat0.xyz = log2(float3(u_xlat16_2.xyz));
    u_xlat0.xyz = u_xlat0.xyz * float3(0.416666657, 0.416666657, 0.416666657);
    u_xlat0.xyz = exp2(u_xlat0.xyz);
    u_xlat0.xyz = fma(u_xlat0.xyz, float3(1.05499995, 1.05499995, 1.05499995), float3(-0.0549999997, -0.0549999997, -0.0549999997));
    u_xlat0.xyz = max(u_xlat0.xyz, float3(0.0, 0.0, 0.0));
    output.TEXCOORD4.xyz = half3(u_xlat0.xyz);
    return output;
}


-- Hardware tier variant: Tier 3
-- Fragment shader for "metal":
Set 2D Texture "_MainTex" to slot 0

Constant Buffer "FGlobals" (8 bytes) on slot 0 {
  VectorHalf4 _Color at 0
}

Shader Disassembly:
#include <metal_stdlib>
#include <metal_texture>
using namespace metal;

#if !(__HAVE_FMA__)
#define fma(a,b,c) ((a) * (b) + (c))
#endif

#ifndef XLT_REMAP_O
	#define XLT_REMAP_O {0, 1, 2, 3, 4, 5, 6, 7}
#endif
constexpr constant uint xlt_remap_o[] = XLT_REMAP_O;
struct FGlobals_Type
{
    half4 _Color;
};

struct Mtl_FragmentIn
{
    float2 TEXCOORD0 [[ user(TEXCOORD0) ]] ;
    float3 TEXCOORD1 [[ user(TEXCOORD1) ]] ;
    half3 TEXCOORD4 [[ user(TEXCOORD4) ]] ;
};

struct Mtl_FragmentOut
{
    half4 SV_Target0 [[ color(xlt_remap_o[0]) ]];
    half4 SV_Target1 [[ color(xlt_remap_o[1]) ]];
    half4 SV_Target2 [[ color(xlt_remap_o[2]) ]];
    half4 SV_Target3 [[ color(xlt_remap_o[3]) ]];
};

fragment Mtl_FragmentOut xlatMtlMain(
    constant FGlobals_Type& FGlobals [[ buffer(0) ]],
    sampler sampler_MainTex [[ sampler (0) ]],
    texture2d<half, access::sample > _MainTex [[ texture(0) ]] ,
    Mtl_FragmentIn input [[ stage_in ]])
{
    Mtl_FragmentOut output;
    float4 u_xlat0;
    half3 u_xlat16_0;
    u_xlat16_0.xyz = _MainTex.sample(sampler_MainTex, input.TEXCOORD0.xy).xyz;
    u_xlat16_0.xyz = u_xlat16_0.xyz * FGlobals._Color.xyz;
    output.SV_Target0.xyz = u_xlat16_0.xyz;
    output.SV_Target3.xyz = u_xlat16_0.xyz * input.TEXCOORD4.xyz;
    output.SV_Target0.w = half(1.0);
    output.SV_Target1 = half4(0.0, 0.0, 0.0, 0.0);
    u_xlat0.xyz = fma(input.TEXCOORD1.xyz, float3(0.5, 0.5, 0.5), float3(0.5, 0.5, 0.5));
    u_xlat0.w = 1.0;
    output.SV_Target2 = half4(u_xlat0);
    output.SV_Target3.w = half(1.0);
    return output;
}


 }
}
Fallback "Legacy Shaders/VertexLit"
}