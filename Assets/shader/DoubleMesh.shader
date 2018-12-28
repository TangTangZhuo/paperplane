Shader "TZ/DoubleMesh" 
{
    Properties
    {
        _Color("Color",Color)               = (1,1,1,1)
        _MainTex("MainTex",2D)              = "white"{}
        _AlphaScale("AlphaScale",Range(0,1))=1
    }
    SubShader
    {
        Tags{"Queue"="Transparent" "IgnoreProjector" = "True"  "RenderType" = "Transparent"}

        Pass
        {
            Tags{"LightMode" = "ForwardBase"}
            // 先渲染背面
            Cull   Front
            ZWrite Off
            Blend  srcAlpha     OneMinusSrcAlpha

            CGPROGRAM
            #pragma vertex      vert 
            #pragma fragment    frag

            #include "Lighting.cginc"

            fixed4      _Color;
            sampler2D   _MainTex;
            float4      _MainTex_ST;
            float       _AlphaScale;

            struct a2v
            {
                float4 vertex   : POSITION;
                float3 normal   : NORMAL;
                float4 texcoord : TEXCOORD0;
            };
            struct v2f
            {
                float4 pos      : SV_POSITION;
                float3 wN       : TEXCOORD0;
                float3 wP       : TEXCOORD1;
                float2 uv       : TEXCOORD2;
            };

            v2f vert (a2v v )
            {
                v2f o;
                o.pos = UnityObjectToClipPos(v.vertex);
                o.wN  = UnityObjectToWorldNormal(v.normal);
                o.wP  = mul(unity_ObjectToWorld,v.vertex);
                o.uv  = v.texcoord.xy * _MainTex_ST.xy + _MainTex_ST.zw;
                return o;
            }

            fixed4 frag (v2f i):SV_TARGET
            {
                fixed3 wN = normalize(i.wN);
                fixed3 wL = normalize(UnityWorldSpaceLightDir(i.wP));

                fixed4 texColor = tex2D(_MainTex,i.uv);
                fixed3 albedo = texColor.rgb * _Color.rgb;

                fixed3 ambient = UNITY_LIGHTMODEL_AMBIENT.xyz* albedo;
                fixed3 diffuse = _LightColor0.rgb * albedo * saturate(dot(wN,wL));

                return fixed4 (ambient + diffuse, texColor.a * _AlphaScale);
            }
            ENDCG
        }

        Pass
        {
            Tags{"LightMode" = "ForwardBase"}
            // 再渲染正面
            Cull   Back
            ZWrite off
            Blend  srcAlpha     OneMinusSrcAlpha

            CGPROGRAM
            #pragma vertex      vert 
            #pragma fragment    frag

            #include "Lighting.cginc"

            fixed4      _Color;
            sampler2D   _MainTex;
            float4      _MainTex_ST;
            float       _AlphaScale;

            struct a2v
            {
                float4 vertex   : POSITION;
                float3 normal   : NORMAL;
                float4 texcoord : TEXCOORD0;
            };
            struct v2f
            {
                float4 pos      : SV_POSITION;
                float3 wN       : TEXCOORD0;
                float3 wP       : TEXCOORD1;
                float2 uv       : TEXCOORD2;
            };

            v2f vert (a2v v )
            {
                v2f o;
                o.pos = UnityObjectToClipPos(v.vertex);
                o.wN  = UnityObjectToWorldNormal(v.normal);
                o.wP  = mul(unity_ObjectToWorld,v.vertex);
                o.uv  = v.texcoord.xy * _MainTex_ST.xy + _MainTex_ST.zw;
                return o;
            }

            fixed4 frag (v2f i):SV_TARGET
            {
                fixed3 wN = normalize(i.wN);
                fixed3 wL = normalize(UnityWorldSpaceLightDir(i.wP));

                fixed4 texColor = tex2D(_MainTex,i.uv);
                fixed3 albedo = texColor.rgb * _Color.rgb;

                fixed3 ambient = UNITY_LIGHTMODEL_AMBIENT.xyz* albedo;
                fixed3 diffuse = _LightColor0.rgb * albedo * saturate(dot(wN,wL));

                return fixed4 (ambient + diffuse, texColor.a * _AlphaScale);
            }
            ENDCG
        }
    }
    Fallback "Transparent/VertextLit"
}
