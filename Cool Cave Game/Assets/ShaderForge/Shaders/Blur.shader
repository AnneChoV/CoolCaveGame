// Shader created with Shader Forge v1.34 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.34;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:1,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:1873,x:33229,y:32719,varname:node_1873,prsc:2|emission-2086-OUT;n:type:ShaderForge.SFN_ScreenPos,id:9199,x:31440,y:33092,varname:node_9199,prsc:2,sctp:2;n:type:ShaderForge.SFN_ScreenParameters,id:157,x:31018,y:32853,varname:node_157,prsc:2;n:type:ShaderForge.SFN_Divide,id:2846,x:31256,y:32772,varname:node_2846,prsc:2|A-6709-OUT,B-157-PXW;n:type:ShaderForge.SFN_Divide,id:9468,x:31256,y:32921,varname:node_9468,prsc:2|A-6709-OUT,B-157-PXH;n:type:ShaderForge.SFN_Vector1,id:6709,x:31018,y:32772,varname:node_6709,prsc:2,v1:1;n:type:ShaderForge.SFN_Append,id:3334,x:31627,y:32772,varname:node_3334,prsc:2|A-1999-OUT,B-7884-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9155,x:31018,y:33063,ptovrint:False,ptlb:Blur Sample Distance,ptin:_BlurSampleDistance,varname:node_9155,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:1999,x:31440,y:32772,varname:node_1999,prsc:2|A-2846-OUT,B-2631-OUT;n:type:ShaderForge.SFN_Multiply,id:7884,x:31440,y:32921,varname:node_7884,prsc:2|A-9468-OUT,B-2631-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7209,x:30843,y:33304,ptovrint:False,ptlb:Blur Distance Scalar,ptin:_BlurDistanceScalar,varname:_BlurDistance_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Add,id:2631,x:31256,y:33063,varname:node_2631,prsc:2|A-9155-OUT,B-6187-OUT;n:type:ShaderForge.SFN_Multiply,id:6187,x:31018,y:33146,varname:node_6187,prsc:2|A-4027-OUT,B-7209-OUT;n:type:ShaderForge.SFN_DepthBlend,id:4027,x:30843,y:33146,varname:node_4027,prsc:2|DIST-1940-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1940,x:30671,y:33146,ptovrint:False,ptlb:Max Distance,ptin:_MaxDistance,varname:node_1940,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:100;n:type:ShaderForge.SFN_Code,id:2086,x:32168,y:32819,varname:node_2086,prsc:2,code:ZgBsAG8AYQB0ACAAdABvAHQAYQBsAFMAYQBtAHAAbABlAHMAIAA9ACAAKABfAHMAYQBtAHAAbABlAHMAIAAqACAAMgAuADAAIAArACAAMQAuADAAKQA7AAoAdABvAHQAYQBsAFMAYQBtAHAAbABlAHMAIAAqAD0AIAB0AG8AdABhAGwAUwBhAG0AcABsAGUAcwA7AAoAZgBsAG8AYQB0ACAAdwBlAGkAZwBoAHQAIAA9ACAAMQAuADAAIAAvACAAdABvAHQAYQBsAFMAYQBtAHAAbABlAHMAOwAKAGYAbABvAGEAdAAzACAAZgBpAG4AYQBsACAAPQAgAGYAbABvAGEAdAAzACgAMAAuADAALAAgADAALgAwACwAIAAwAC4AMAApADsACgAKAGYAbwByACAAKABpAG4AdAAgAHgAIAA9ACAALQBfAHMAYQBtAHAAbABlAHMAOwAgAHgAIAA8ACAAXwBzAGEAbQBwAGwAZQBzACAAKwAgADEAOwAgAHgAKwArACkACgB7AAoACQBmAG8AcgAgACgAaQBuAHQAIAB5ACAAPQAgAC0AXwBzAGEAbQBwAGwAZQBzADsAIAB5ACAAPAAgAF8AcwBhAG0AcABsAGUAcwAgACsAIAAxADsAIAB5ACsAKwApAAoACQB7AAoACQAJAGYAbABvAGEAdAAyACAAcABvAHMAIAA9ACAAYwBsAGEAbQBwACgAZgBsAG8AYQB0ADIAKAB4ACwAIAB5ACkAIAAqACAAXwBkAGkAcwB0AGEAbgBjAGUAIAArACAAXwB1AHYALAAgADAALgAwACwAIAAxAC4AMAApADsACgAJAAkAZgBpAG4AYQBsACAAKwA9ACAAdABlAHgAMgBEACgAXwBHAHIAYQBiAFQAZQB4AHQAdQByAGUALAAgAHAAbwBzACkAIAAqACAAdwBlAGkAZwBoAHQAOwAKAAkAfQAKAH0ACgAKAHIAZQB0AHUAcgBuACAAZgBpAG4AYQBsADsA,output:2,fname:CalculateFinalPixel,width:853,height:608,input:0,input:1,input:1,input:2,input_1_label:_samples,input_2_label:_distance,input_3_label:_uv,input_4_label:_rgb|A-9862-OUT,B-3334-OUT,C-9199-UVOUT,D-3081-RGB;n:type:ShaderForge.SFN_SceneColor,id:3081,x:31768,y:33180,varname:node_3081,prsc:2|UVIN-9199-UVOUT;n:type:ShaderForge.SFN_Floor,id:5802,x:31440,y:32564,varname:node_5802,prsc:2|IN-6966-OUT;n:type:ShaderForge.SFN_Slider,id:6966,x:31362,y:32435,ptovrint:False,ptlb:Blur Samples,ptin:_BlurSamples,varname:node_6966,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_ConstantClamp,id:9862,x:31627,y:32564,varname:node_9862,prsc:2,min:0,max:10|IN-5802-OUT;proporder:9155-7209-1940-6966;pass:END;sub:END;*/

Shader "Shader Forge/Blur" {
    Properties {
        _BlurSampleDistance ("Blur Sample Distance", Float ) = 1
        _BlurDistanceScalar ("Blur Distance Scalar", Float ) = 0.5
        _MaxDistance ("Max Distance", Float ) = 100
        _BlurSamples ("Blur Samples", Range(0, 10)) = 1
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
            float3 CalculateFinalPixel( float _samples , float2 _distance , float2 _uv , float3 _rgb ){
            float totalSamples = (_samples * 2.0 + 1.0);
            totalSamples *= totalSamples;
            float weight = 1.0 / totalSamples;
            float3 final = float3(0.0, 0.0, 0.0);
            
            for (int x = -_samples; x < _samples + 1; x++)
            {
            	for (int y = -_samples; y < _samples + 1; y++)
            	{
            		float2 pos = clamp(float2(x, y) * _distance + _uv, 0.0, 1.0);
            		final += tex2D(_GrabTexture, pos) * weight;
            	}
            }
            
            return final;
            }
            
            uniform float _BlurSamples;
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
                float node_6709 = 1.0;
                float node_2631 = (_BlurSampleDistance+(saturate((sceneZ-partZ)/_MaxDistance)*_BlurDistanceScalar));
                float3 emissive = CalculateFinalPixel( clamp(floor(_BlurSamples),0,10) , float2(((node_6709/_ScreenParams.r)*node_2631),((node_6709/_ScreenParams.g)*node_2631)) , sceneUVs.rg , tex2D( _GrabTexture, sceneUVs.rg).rgb );
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
