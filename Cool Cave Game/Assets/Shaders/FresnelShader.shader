// Shader created with Shader Forge v1.34 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.34;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:33119,y:32965,varname:node_4013,prsc:2|diff-4188-OUT;n:type:ShaderForge.SFN_Fresnel,id:4592,x:31829,y:32705,varname:node_4592,prsc:2|NRM-4100-OUT,EXP-1614-OUT;n:type:ShaderForge.SFN_NormalVector,id:4100,x:31003,y:32610,prsc:2,pt:True;n:type:ShaderForge.SFN_ValueProperty,id:1614,x:31596,y:32808,ptovrint:False,ptlb:Fresnel Power,ptin:_FresnelPower,varname:node_1614,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2.5;n:type:ShaderForge.SFN_Add,id:1643,x:32603,y:33056,varname:node_1643,prsc:2|A-9889-RGB,B-4927-OUT;n:type:ShaderForge.SFN_Multiply,id:9107,x:32253,y:33074,varname:node_9107,prsc:2|A-5629-OUT,B-1056-OUT;n:type:ShaderForge.SFN_Slider,id:1056,x:31846,y:33203,ptovrint:False,ptlb:Fresnel Toggle,ptin:_FresnelToggle,varname:node_1056,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Tex2d,id:9233,x:31172,y:32142,ptovrint:False,ptlb:Fresnel Texture,ptin:_FresnelTexture,varname:node_9233,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:96155cf5bf9a2fa45beadb3161591707,ntxv:0,isnm:False|UVIN-6913-UVOUT;n:type:ShaderForge.SFN_Add,id:2852,x:31365,y:32142,varname:node_2852,prsc:2|A-9233-R,B-9233-G,C-9233-B;n:type:ShaderForge.SFN_Multiply,id:8056,x:31562,y:32142,varname:node_8056,prsc:2|A-702-OUT,B-2852-OUT;n:type:ShaderForge.SFN_Vector1,id:702,x:31365,y:32069,varname:node_702,prsc:2,v1:0.3333333;n:type:ShaderForge.SFN_Multiply,id:5629,x:32253,y:32926,varname:node_5629,prsc:2|A-829-OUT,B-6342-OUT;n:type:ShaderForge.SFN_TexCoord,id:6913,x:30982,y:32142,varname:node_6913,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:4927,x:32253,y:33240,varname:node_4927,prsc:2|A-9107-OUT,B-3945-OUT,C-7772-RGB;n:type:ShaderForge.SFN_Color,id:7772,x:32003,y:33405,ptovrint:False,ptlb:Fresnel Colour,ptin:_FresnelColour,varname:node_7772,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:9889,x:32253,y:32744,ptovrint:False,ptlb:Main Tex,ptin:_MainTex,varname:node_9889,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:4188,x:32844,y:32979,varname:node_4188,prsc:2|A-1212-RGB,B-1643-OUT;n:type:ShaderForge.SFN_Color,id:1212,x:32603,y:32880,ptovrint:False,ptlb:MainColor,ptin:_MainColor,varname:node_1212,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:3945,x:32003,y:33316,ptovrint:False,ptlb:Fresnel Strength,ptin:_FresnelStrength,varname:node_3945,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_ValueProperty,id:8916,x:31361,y:32470,ptovrint:False,ptlb:Min Noise,ptin:_MinNoise,varname:node_8916,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:9954,x:31361,y:32564,ptovrint:False,ptlb:Max Noise,ptin:_MaxNoise,varname:node_9954,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:829,x:31829,y:32546,varname:node_829,prsc:2|IN-8056-OUT,IMIN-2843-OUT,IMAX-7453-OUT,OMIN-8916-OUT,OMAX-9954-OUT;n:type:ShaderForge.SFN_Vector1,id:2843,x:31361,y:32300,varname:node_2843,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:7453,x:31361,y:32374,varname:node_7453,prsc:2,v1:1;n:type:ShaderForge.SFN_Tex2d,id:3561,x:31682,y:33014,ptovrint:False,ptlb:Glow Map,ptin:_GlowMap,varname:node_3561,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:34ddf2bf69a1b6742bd460df28b751b7,ntxv:0,isnm:False|UVIN-2919-OUT;n:type:ShaderForge.SFN_Append,id:2919,x:31507,y:33014,varname:node_2919,prsc:2|A-8249-OUT,B-3696-OUT;n:type:ShaderForge.SFN_Vector1,id:3696,x:31322,y:33119,varname:node_3696,prsc:2,v1:0;n:type:ShaderForge.SFN_ConstantClamp,id:8249,x:31322,y:32953,varname:node_8249,prsc:2,min:0.01,max:0.99|IN-2074-OUT;n:type:ShaderForge.SFN_Multiply,id:6342,x:32003,y:32956,varname:node_6342,prsc:2|A-4592-OUT,B-3561-RGB;n:type:ShaderForge.SFN_Fresnel,id:2074,x:31241,y:32675,varname:node_2074,prsc:2|NRM-4100-OUT;proporder:1614-1056-9233-7772-9889-1212-3945-8916-9954-3561;pass:END;sub:END;*/

Shader "Shader Forge/FresnelShader" {
    Properties {
        _FresnelPower ("Fresnel Power", Float ) = 2.5
        _FresnelToggle ("Fresnel Toggle", Range(0, 1)) = 1
        _FresnelTexture ("Fresnel Texture", 2D) = "white" {}
        _FresnelColour ("Fresnel Colour", Color) = (1,1,1,1)
        _MainTex ("Main Tex", 2D) = "white" {}
        _MainColor ("MainColor", Color) = (1,1,1,1)
        _FresnelStrength ("Fresnel Strength", Float ) = 3
        _MinNoise ("Min Noise", Float ) = 0
        _MaxNoise ("Max Noise", Float ) = 1
        _GlowMap ("Glow Map", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float _FresnelPower;
            uniform float _FresnelToggle;
            uniform sampler2D _FresnelTexture; uniform float4 _FresnelTexture_ST;
            uniform float4 _FresnelColour;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _MainColor;
            uniform float _FresnelStrength;
            uniform float _MinNoise;
            uniform float _MaxNoise;
            uniform sampler2D _GlowMap; uniform float4 _GlowMap_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 _FresnelTexture_var = tex2D(_FresnelTexture,TRANSFORM_TEX(i.uv0, _FresnelTexture));
                float node_2843 = 0.0;
                float2 node_2919 = float2(clamp((1.0-max(0,dot(normalDirection, viewDirection))),0.01,0.99),0.0);
                float4 _GlowMap_var = tex2D(_GlowMap,TRANSFORM_TEX(node_2919, _GlowMap));
                float3 diffuseColor = (_MainColor.rgb*(_MainTex_var.rgb+((((_MinNoise + ( ((0.3333333*(_FresnelTexture_var.r+_FresnelTexture_var.g+_FresnelTexture_var.b)) - node_2843) * (_MaxNoise - _MinNoise) ) / (1.0 - node_2843))*(pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelPower)*_GlowMap_var.rgb))*_FresnelToggle)*_FresnelStrength*_FresnelColour.rgb)));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float _FresnelPower;
            uniform float _FresnelToggle;
            uniform sampler2D _FresnelTexture; uniform float4 _FresnelTexture_ST;
            uniform float4 _FresnelColour;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _MainColor;
            uniform float _FresnelStrength;
            uniform float _MinNoise;
            uniform float _MaxNoise;
            uniform sampler2D _GlowMap; uniform float4 _GlowMap_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 _FresnelTexture_var = tex2D(_FresnelTexture,TRANSFORM_TEX(i.uv0, _FresnelTexture));
                float node_2843 = 0.0;
                float2 node_2919 = float2(clamp((1.0-max(0,dot(normalDirection, viewDirection))),0.01,0.99),0.0);
                float4 _GlowMap_var = tex2D(_GlowMap,TRANSFORM_TEX(node_2919, _GlowMap));
                float3 diffuseColor = (_MainColor.rgb*(_MainTex_var.rgb+((((_MinNoise + ( ((0.3333333*(_FresnelTexture_var.r+_FresnelTexture_var.g+_FresnelTexture_var.b)) - node_2843) * (_MaxNoise - _MinNoise) ) / (1.0 - node_2843))*(pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelPower)*_GlowMap_var.rgb))*_FresnelToggle)*_FresnelStrength*_FresnelColour.rgb)));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
