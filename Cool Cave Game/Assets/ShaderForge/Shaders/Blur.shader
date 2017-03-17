// Shader created with Shader Forge v1.34 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.34;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:1,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:1873,x:33229,y:32719,varname:node_1873,prsc:2|emission-8369-OUT;n:type:ShaderForge.SFN_SceneColor,id:9967,x:32312,y:32588,varname:node_9967,prsc:2|UVIN-2213-OUT;n:type:ShaderForge.SFN_ScreenPos,id:9199,x:30896,y:32532,varname:node_9199,prsc:2,sctp:2;n:type:ShaderForge.SFN_ScreenParameters,id:157,x:30144,y:33608,varname:node_157,prsc:2;n:type:ShaderForge.SFN_Divide,id:2846,x:30382,y:33527,varname:node_2846,prsc:2|A-6709-OUT,B-157-PXW;n:type:ShaderForge.SFN_Divide,id:9468,x:30382,y:33676,varname:node_9468,prsc:2|A-6709-OUT,B-157-PXH;n:type:ShaderForge.SFN_Vector1,id:6709,x:30144,y:33527,varname:node_6709,prsc:2,v1:1;n:type:ShaderForge.SFN_SceneColor,id:6714,x:32483,y:32588,varname:node_6714,prsc:2|UVIN-472-OUT;n:type:ShaderForge.SFN_SceneColor,id:3466,x:32483,y:32726,varname:node_3466,prsc:2|UVIN-9596-OUT;n:type:ShaderForge.SFN_SceneColor,id:7771,x:32656,y:32588,varname:node_7771,prsc:2|UVIN-688-OUT;n:type:ShaderForge.SFN_SceneColor,id:6105,x:32656,y:32726,varname:node_6105,prsc:2|UVIN-4799-OUT;n:type:ShaderForge.SFN_SceneColor,id:5433,x:32312,y:32726,varname:node_5433,prsc:2|UVIN-5754-OUT;n:type:ShaderForge.SFN_SceneColor,id:2402,x:32312,y:32868,varname:node_2402,prsc:2|UVIN-5862-OUT;n:type:ShaderForge.SFN_SceneColor,id:9834,x:32483,y:32868,varname:node_9834,prsc:2|UVIN-5677-OUT;n:type:ShaderForge.SFN_SceneColor,id:5230,x:32656,y:32868,varname:node_5230,prsc:2|UVIN-3224-OUT;n:type:ShaderForge.SFN_Vector3,id:7236,x:31894,y:33375,varname:node_7236,prsc:2,v1:0.1111111,v2:0.1111111,v3:0.1111111;n:type:ShaderForge.SFN_Vector3,id:909,x:31894,y:33472,varname:node_909,prsc:2,v1:0.1111111,v2:0.1111111,v3:0.1111111;n:type:ShaderForge.SFN_Vector3,id:5886,x:31894,y:33575,varname:node_5886,prsc:2,v1:0.1111111,v2:0.1111111,v3:0.1111111;n:type:ShaderForge.SFN_ComponentMask,id:4834,x:32098,y:33375,varname:node_4834,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-7236-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6331,x:32098,y:33526,varname:node_6331,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-909-OUT;n:type:ShaderForge.SFN_ComponentMask,id:4098,x:32098,y:33680,varname:node_4098,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-5886-OUT;n:type:ShaderForge.SFN_Add,id:2213,x:31654,y:32831,varname:node_2213,prsc:2|A-6113-OUT,B-3104-OUT;n:type:ShaderForge.SFN_Add,id:472,x:31821,y:32831,varname:node_472,prsc:2|A-6113-OUT,B-6635-OUT;n:type:ShaderForge.SFN_Add,id:688,x:31987,y:32831,varname:node_688,prsc:2|A-6113-OUT,B-8231-OUT;n:type:ShaderForge.SFN_Add,id:5754,x:31654,y:32964,varname:node_5754,prsc:2|A-6113-OUT,B-3823-OUT;n:type:ShaderForge.SFN_Add,id:9596,x:31821,y:32964,varname:node_9596,prsc:2|A-6113-OUT,B-6421-OUT;n:type:ShaderForge.SFN_Add,id:4799,x:31987,y:32964,varname:node_4799,prsc:2|A-6113-OUT,B-8010-OUT;n:type:ShaderForge.SFN_Add,id:5862,x:31654,y:33099,varname:node_5862,prsc:2|A-6113-OUT,B-2432-OUT;n:type:ShaderForge.SFN_Add,id:5677,x:31821,y:33099,varname:node_5677,prsc:2|A-6113-OUT,B-9607-OUT;n:type:ShaderForge.SFN_Add,id:3224,x:31987,y:33099,varname:node_3224,prsc:2|A-6113-OUT,B-789-OUT;n:type:ShaderForge.SFN_Multiply,id:5243,x:32531,y:33300,varname:node_5243,prsc:2|A-9967-RGB,B-4834-R;n:type:ShaderForge.SFN_Multiply,id:6664,x:32699,y:33300,varname:node_6664,prsc:2|A-6714-RGB,B-4834-G;n:type:ShaderForge.SFN_Multiply,id:7441,x:32866,y:33300,varname:node_7441,prsc:2|A-7771-RGB,B-4834-B;n:type:ShaderForge.SFN_Multiply,id:2592,x:32866,y:33437,varname:node_2592,prsc:2|A-6105-RGB,B-6331-B;n:type:ShaderForge.SFN_Multiply,id:8336,x:32699,y:33437,varname:node_8336,prsc:2|A-3466-RGB,B-6331-G;n:type:ShaderForge.SFN_Multiply,id:1725,x:32531,y:33437,varname:node_1725,prsc:2|A-5433-RGB,B-6331-R;n:type:ShaderForge.SFN_Multiply,id:8400,x:32866,y:33573,varname:node_8400,prsc:2|A-5230-RGB,B-4098-B;n:type:ShaderForge.SFN_Multiply,id:6893,x:32699,y:33573,varname:node_6893,prsc:2|A-9834-RGB,B-4098-G;n:type:ShaderForge.SFN_Multiply,id:5083,x:32531,y:33573,varname:node_5083,prsc:2|A-2402-RGB,B-4098-R;n:type:ShaderForge.SFN_Vector2,id:7364,x:30312,y:33204,varname:node_7364,prsc:2,v1:-1,v2:1;n:type:ShaderForge.SFN_Vector2,id:4796,x:30452,y:33204,varname:node_4796,prsc:2,v1:0,v2:1;n:type:ShaderForge.SFN_Vector2,id:7322,x:30592,y:33204,varname:node_7322,prsc:2,v1:1,v2:1;n:type:ShaderForge.SFN_Vector2,id:1370,x:30313,y:33297,varname:node_1370,prsc:2,v1:-1,v2:0;n:type:ShaderForge.SFN_Vector2,id:5298,x:30453,y:33297,varname:node_5298,prsc:2,v1:0,v2:0;n:type:ShaderForge.SFN_Vector2,id:2580,x:30592,y:33297,varname:node_2580,prsc:2,v1:1,v2:0;n:type:ShaderForge.SFN_Vector2,id:6207,x:30313,y:33387,varname:node_6207,prsc:2,v1:-1,v2:-1;n:type:ShaderForge.SFN_Vector2,id:4178,x:30453,y:33387,varname:node_4178,prsc:2,v1:0,v2:-1;n:type:ShaderForge.SFN_Vector2,id:2178,x:30592,y:33387,varname:node_2178,prsc:2,v1:1,v2:-1;n:type:ShaderForge.SFN_Multiply,id:3104,x:31001,y:32960,varname:node_3104,prsc:2|A-7364-OUT,B-3334-OUT;n:type:ShaderForge.SFN_Multiply,id:6635,x:31169,y:32960,varname:node_6635,prsc:2|A-4796-OUT,B-3334-OUT;n:type:ShaderForge.SFN_Multiply,id:8231,x:31336,y:32960,varname:node_8231,prsc:2|A-7322-OUT,B-3334-OUT;n:type:ShaderForge.SFN_Multiply,id:8010,x:31336,y:33096,varname:node_8010,prsc:2|A-2580-OUT,B-3334-OUT;n:type:ShaderForge.SFN_Multiply,id:6421,x:31169,y:33096,varname:node_6421,prsc:2|A-5298-OUT,B-3334-OUT;n:type:ShaderForge.SFN_Multiply,id:3823,x:31001,y:33096,varname:node_3823,prsc:2|A-1370-OUT,B-3334-OUT;n:type:ShaderForge.SFN_Multiply,id:789,x:31336,y:33232,varname:node_789,prsc:2|A-2178-OUT,B-3334-OUT;n:type:ShaderForge.SFN_Multiply,id:9607,x:31169,y:33232,varname:node_9607,prsc:2|A-4178-OUT,B-3334-OUT;n:type:ShaderForge.SFN_Multiply,id:2432,x:31001,y:33232,varname:node_2432,prsc:2|A-6207-OUT,B-3334-OUT;n:type:ShaderForge.SFN_Append,id:3334,x:30753,y:33527,varname:node_3334,prsc:2|A-1999-OUT,B-7884-OUT;n:type:ShaderForge.SFN_Add,id:3502,x:33122,y:33300,varname:node_3502,prsc:2|A-5243-OUT,B-6664-OUT,C-7441-OUT;n:type:ShaderForge.SFN_Add,id:7167,x:33122,y:33437,varname:node_7167,prsc:2|A-1725-OUT,B-8336-OUT,C-2592-OUT;n:type:ShaderForge.SFN_Add,id:5036,x:33122,y:33576,varname:node_5036,prsc:2|A-5083-OUT,B-6893-OUT,C-8400-OUT;n:type:ShaderForge.SFN_Add,id:8369,x:33369,y:33300,varname:node_8369,prsc:2|A-3502-OUT,B-7167-OUT,C-5036-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9155,x:30144,y:33829,ptovrint:False,ptlb:Blur Sample Distance,ptin:_BlurSampleDistance,varname:node_9155,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Relay,id:6113,x:31290,y:32569,varname:node_6113,prsc:2|IN-9199-UVOUT;n:type:ShaderForge.SFN_Multiply,id:1999,x:30566,y:33527,varname:node_1999,prsc:2|A-2846-OUT,B-2631-OUT;n:type:ShaderForge.SFN_SceneColor,id:6848,x:32611,y:32854,varname:node_6848,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7884,x:30566,y:33676,varname:node_7884,prsc:2|A-9468-OUT,B-2631-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7209,x:29969,y:34059,ptovrint:False,ptlb:Blur Distance Scalar,ptin:_BlurDistanceScalar,varname:_BlurDistance_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Add,id:2631,x:30382,y:33818,varname:node_2631,prsc:2|A-9155-OUT,B-6187-OUT;n:type:ShaderForge.SFN_Multiply,id:6187,x:30144,y:33901,varname:node_6187,prsc:2|A-4027-OUT,B-7209-OUT;n:type:ShaderForge.SFN_DepthBlend,id:4027,x:29969,y:33901,varname:node_4027,prsc:2|DIST-1940-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1940,x:29797,y:33901,ptovrint:False,ptlb:Max Distance,ptin:_MaxDistance,varname:node_1940,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:100;proporder:9155-7209-1940;pass:END;sub:END;*/

Shader "Shader Forge/Blur" {
    Properties {
        _BlurSampleDistance ("Blur Sample Distance", Float ) = 1
        _BlurDistanceScalar ("Blur Distance Scalar", Float ) = 0.5
        _MaxDistance ("Max Distance", Float ) = 100
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
            "DisableBatching"="True"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _CameraDepthTexture;
            uniform float _BlurSampleDistance;
            uniform float _BlurDistanceScalar;
            uniform float _MaxDistance;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 screenPos : TEXCOORD0;
                float4 projPos : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
////// Emissive:
                float2 node_6113 = sceneUVs.rg;
                float node_6709 = 1.0;
                float node_2631 = (_BlurSampleDistance+(saturate((sceneZ-partZ)/_MaxDistance)*_BlurDistanceScalar));
                float2 node_3334 = float2(((node_6709/_ScreenParams.r)*node_2631),((node_6709/_ScreenParams.g)*node_2631));
                float3 node_4834 = float3(0.1111111,0.1111111,0.1111111).rgb;
                float3 node_6331 = float3(0.1111111,0.1111111,0.1111111).rgb;
                float3 node_4098 = float3(0.1111111,0.1111111,0.1111111).rgb;
                float3 emissive = (((tex2D( _GrabTexture, (node_6113+(float2(-1,1)*node_3334))).rgb*node_4834.r)+(tex2D( _GrabTexture, (node_6113+(float2(0,1)*node_3334))).rgb*node_4834.g)+(tex2D( _GrabTexture, (node_6113+(float2(1,1)*node_3334))).rgb*node_4834.b))+((tex2D( _GrabTexture, (node_6113+(float2(-1,0)*node_3334))).rgb*node_6331.r)+(tex2D( _GrabTexture, (node_6113+(float2(0,0)*node_3334))).rgb*node_6331.g)+(tex2D( _GrabTexture, (node_6113+(float2(1,0)*node_3334))).rgb*node_6331.b))+((tex2D( _GrabTexture, (node_6113+(float2(-1,-1)*node_3334))).rgb*node_4098.r)+(tex2D( _GrabTexture, (node_6113+(float2(0,-1)*node_3334))).rgb*node_4098.g)+(tex2D( _GrabTexture, (node_6113+(float2(1,-1)*node_3334))).rgb*node_4098.b)));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
