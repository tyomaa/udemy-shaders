Shader "Udemy/HelloShader" {

	Properties {
		_AlbedoColor ("Albedo Color", Color) = (1,1,1,1)
		_EmissionColor ("Emission Color", Color) = (1,1,1,1)
		_MyNormal ("Normal", Color) = (1,1,1,1)
	}

	SubShader {

		CGPROGRAM
    		#pragma surface surf Lambert

            struct Input {
                float2 uvMainTex;
            };

            fixed4 _AlbedoColor;
            fixed4 _EmissionColor;
            fixed4 _MyNormal;

            void surf (Input IN, inout SurfaceOutput o) {
                o.Albedo = _AlbedoColor.rgb;
                o.Emission = _EmissionColor.rgb;
                o.Normal = _MyNormal.rgb;
            }
		ENDCG
	}

	FallBack "Diffuse"
}
