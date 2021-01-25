//https://blog.csdn.net/ak47007tiger/article/details/97306842

Shader "Unlit/appdata测试"
{
    Properties
    {

	}
    SubShader
    {
        Tags { "RenderType"="Opaque" }
        LOD 100
		Cull Off
        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag

            #include "UnityCG.cginc"

            struct appdata
            {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
				float3 tangent : Tangent;
            };

            struct v2f
            {
                float4 vertex : SV_POSITION;
				float3 normal : NORMAL;
            };


            v2f vert (appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
				o.normal = v.normal;
                return o;
            }

            fixed4 frag (v2f i) : SV_Target
            {
				float3 normal = i.normal;
				fixed4 col = fixed4(normal.x, normal.y, normal.z, 1);
                return col;
            }
            ENDCG
        }
    }
}
