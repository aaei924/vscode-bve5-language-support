xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 516;
 3.78693;1.28330;10.00000;,
 3.84006;1.04884;9.94607;,
 3.30879;1.04884;9.94607;,
 3.36192;1.28330;10.00000;,
 3.30879;1.04884;10.48534;,
 3.36192;1.28330;10.43142;,
 3.78693;1.28330;10.43142;,
 3.84006;1.04884;10.48534;,
 3.74689;2.43872;10.20940;,
 3.42790;2.43872;10.20940;,
 3.42790;4.66766;10.20940;,
 3.74689;4.66766;10.20940;,
 3.74689;2.43872;10.20940;,
 3.74689;1.05748;10.20940;,
 3.42790;1.05748;10.20940;,
 3.42790;2.43872;10.20940;,
 3.76484;2.43872;10.05611;,
 3.76484;1.05748;10.05611;,
 3.76484;4.66766;10.05611;,
 3.76484;2.43872;10.05611;,
 3.41302;2.43872;10.05611;,
 3.41302;4.66766;10.05611;,
 3.41302;1.05748;10.05611;,
 3.41302;2.43872;10.05611;,
 3.76484;2.43872;10.38258;,
 3.76484;1.05748;10.38258;,
 3.76484;4.66766;10.38258;,
 3.76484;2.43872;10.38258;,
 3.41302;2.43872;10.38258;,
 3.41302;4.66766;10.38258;,
 3.41302;1.05748;10.38258;,
 3.41302;2.43872;10.38258;,
 3.74689;2.43872;10.22929;,
 3.74689;1.05748;10.22929;,
 3.76484;4.66766;10.38258;,
 3.74689;4.66766;10.22929;,
 3.42790;2.43872;10.22929;,
 3.42790;4.66766;10.22929;,
 3.42790;1.05748;10.22929;,
 3.42790;2.43872;10.22929;,
 3.73617;4.62120;0.00000;,
 3.73617;4.62120;20.00000;,
 3.45166;4.62120;20.00000;,
 3.45166;4.62120;0.00000;,
 3.62001;5.00212;0.00000;,
 3.56782;5.00212;0.00000;,
 3.45166;5.06468;0.00000;,
 3.73617;5.06468;0.00000;,
 3.62001;5.00212;0.00000;,
 3.73617;5.06468;0.00000;,
 3.73617;5.06468;20.00000;,
 3.62001;5.00212;20.00000;,
 3.56782;5.00212;0.00000;,
 3.56782;5.00212;20.00000;,
 3.45166;5.06468;20.00000;,
 3.45166;5.06468;0.00000;,
 3.62001;4.67968;0.00000;,
 3.56782;4.67968;0.00000;,
 3.73617;4.62120;0.00000;,
 3.45166;4.62120;0.00000;,
 3.62001;4.67968;0.00000;,
 3.62001;4.67968;20.00000;,
 3.56782;4.67968;0.00000;,
 3.56782;4.67968;20.00000;,
 1.02684;5.40756;10.19521;,
 1.02684;5.40756;10.24741;,
 1.02684;5.47012;10.36356;,
 1.02684;5.47012;10.07905;,
 1.02684;5.08512;10.19521;,
 1.02684;5.08512;10.24741;,
 1.02684;5.02664;10.07905;,
 1.02684;5.02664;10.36356;,
 3.44339;4.61283;10.36356;,
 1.02684;5.02664;10.36356;,
 1.02684;5.02664;10.07905;,
 3.44335;4.61283;10.07905;,
 3.44335;5.05631;10.07905;,
 3.44339;4.99375;10.19521;,
 1.02684;5.40756;10.19521;,
 1.02684;5.47012;10.07905;,
 3.44335;4.61283;10.07905;,
 1.02684;5.02664;10.07905;,
 1.02684;5.08512;10.19521;,
 3.44339;4.67131;10.19521;,
 1.01730;5.67977;20.14392;,
 1.01730;5.67977;-0.00481;,
 1.01730;5.47403;-0.00481;,
 1.01730;5.47403;20.14392;,
 3.44848;5.06674;-0.00481;,
 3.44848;5.27248;-0.00481;,
 3.44848;5.06674;-0.00481;,
 3.44848;5.06674;20.14392;,
 1.01730;5.47403;20.14392;,
 1.01730;5.47403;-0.00481;,
 3.44848;5.27248;-0.00481;,
 1.01730;5.67977;-0.00481;,
 1.01730;5.67977;20.14392;,
 3.44848;5.27248;20.14392;,
 1.31925;4.74804;0.00064;,
 1.36556;4.74804;0.00064;,
 1.36556;4.65212;0.00064;,
 1.31925;4.65212;0.00064;,
 1.36556;4.74804;0.00064;,
 1.36556;4.74804;20.14603;,
 1.36556;4.65212;20.14603;,
 1.36556;4.65212;0.00064;,
 1.31925;4.74804;20.14603;,
 1.31925;4.74804;0.00064;,
 1.31925;4.65212;0.00064;,
 1.31925;4.65212;20.14603;,
 1.36556;4.74804;0.00064;,
 1.31925;4.74804;0.00064;,
 1.31925;4.65212;0.00064;,
 1.36556;4.65212;0.00064;,
 1.58176;4.74804;0.00064;,
 1.62806;4.74804;0.00064;,
 1.62806;4.65212;0.00064;,
 1.58176;4.65212;0.00064;,
 1.62806;4.74804;0.00064;,
 1.62806;4.74804;20.14603;,
 1.62806;4.65212;20.14603;,
 1.62806;4.65212;0.00064;,
 1.58176;4.74804;20.14603;,
 1.58176;4.74804;0.00064;,
 1.58176;4.65212;0.00064;,
 1.58176;4.65212;20.14603;,
 1.62806;4.74804;0.00064;,
 1.58176;4.74804;0.00064;,
 1.58176;4.65212;0.00064;,
 1.62806;4.65212;0.00064;,
 1.34792;4.72297;0.32194;,
 1.61591;4.72297;0.32194;,
 1.61591;4.67206;0.32194;,
 1.34792;4.67206;0.32194;,
 1.34792;4.72297;0.38048;,
 1.61591;4.72297;0.38048;,
 1.61591;4.72297;0.32194;,
 1.34792;4.72297;0.32194;,
 1.34792;4.67206;0.32194;,
 1.61591;4.67206;0.32194;,
 1.61591;4.67206;0.38048;,
 1.34792;4.67206;0.38048;,
 1.34792;4.72297;1.32194;,
 1.61591;4.72297;1.32194;,
 1.61591;4.67206;1.32194;,
 1.34792;4.67206;1.32194;,
 1.34792;4.72297;1.38048;,
 1.61591;4.72297;1.38048;,
 1.61591;4.72297;1.32194;,
 1.34792;4.72297;1.32194;,
 1.34792;4.67206;1.32194;,
 1.61591;4.67206;1.32194;,
 1.61591;4.67206;1.38048;,
 1.34792;4.67206;1.38048;,
 1.34792;4.72297;2.32194;,
 1.61591;4.72297;2.32194;,
 1.61591;4.67206;2.32194;,
 1.34792;4.67206;2.32194;,
 1.34792;4.72297;2.38048;,
 1.61591;4.72297;2.38048;,
 1.61591;4.72297;2.32194;,
 1.34792;4.72297;2.32194;,
 1.34792;4.67206;2.32194;,
 1.61591;4.67206;2.32194;,
 1.61591;4.67206;2.38048;,
 1.34792;4.67206;2.38048;,
 1.34792;4.72297;3.32194;,
 1.61591;4.72297;3.32194;,
 1.61591;4.67206;3.32194;,
 1.34792;4.67206;3.32194;,
 1.34792;4.72297;3.38048;,
 1.61591;4.72297;3.38048;,
 1.61591;4.72297;3.32194;,
 1.34792;4.72297;3.32194;,
 1.34792;4.67206;3.32194;,
 1.61591;4.67206;3.32194;,
 1.61591;4.67206;3.38048;,
 1.34792;4.67206;3.38048;,
 1.34792;4.72297;4.32194;,
 1.61591;4.72297;4.32194;,
 1.61591;4.67206;4.32194;,
 1.34792;4.67206;4.32194;,
 1.34792;4.72297;4.38048;,
 1.61591;4.72297;4.38048;,
 1.61591;4.72297;4.32194;,
 1.34792;4.72297;4.32194;,
 1.34792;4.67206;4.32194;,
 1.61591;4.67206;4.32194;,
 1.61591;4.67206;4.38048;,
 1.34792;4.67206;4.38048;,
 1.34792;4.72297;5.32194;,
 1.61591;4.72297;5.32194;,
 1.61591;4.67206;5.32194;,
 1.34792;4.67206;5.32194;,
 1.34792;4.72297;5.38048;,
 1.61591;4.72297;5.38048;,
 1.61591;4.72297;5.32194;,
 1.34792;4.72297;5.32194;,
 1.34792;4.67206;5.32194;,
 1.61591;4.67206;5.32194;,
 1.61591;4.67206;5.38048;,
 1.34792;4.67206;5.38048;,
 1.34792;4.72297;6.32194;,
 1.61591;4.72297;6.32194;,
 1.61591;4.67206;6.32194;,
 1.34792;4.67206;6.32194;,
 1.34792;4.72297;6.38048;,
 1.61591;4.72297;6.38048;,
 1.61591;4.72297;6.32194;,
 1.34792;4.72297;6.32194;,
 1.34792;4.67206;6.32194;,
 1.61591;4.67206;6.32194;,
 1.61591;4.67206;6.38048;,
 1.34792;4.67206;6.38048;,
 1.34792;4.72297;7.32194;,
 1.61591;4.72297;7.32194;,
 1.61591;4.67206;7.32194;,
 1.34792;4.67206;7.32194;,
 1.34792;4.72297;7.38048;,
 1.61591;4.72297;7.38048;,
 1.61591;4.72297;7.32194;,
 1.34792;4.72297;7.32194;,
 1.34792;4.67206;7.32194;,
 1.61591;4.67206;7.32194;,
 1.61591;4.67206;7.38048;,
 1.34792;4.67206;7.38048;,
 1.34792;4.72297;8.32194;,
 1.61591;4.72297;8.32194;,
 1.61591;4.67206;8.32194;,
 1.34792;4.67206;8.32194;,
 1.34792;4.72297;8.38048;,
 1.61591;4.72297;8.38048;,
 1.61591;4.72297;8.32194;,
 1.34792;4.72297;8.32194;,
 1.34792;4.67206;8.32194;,
 1.61591;4.67206;8.32194;,
 1.61591;4.67206;8.38048;,
 1.34792;4.67206;8.38048;,
 1.34792;4.72297;9.32194;,
 1.61591;4.72297;9.32194;,
 1.61591;4.67206;9.32194;,
 1.34792;4.67206;9.32194;,
 1.34792;4.72297;9.38048;,
 1.61591;4.72297;9.38048;,
 1.61591;4.72297;9.32194;,
 1.34792;4.72297;9.32194;,
 1.34792;4.67206;9.32194;,
 1.61591;4.67206;9.32194;,
 1.61591;4.67206;9.38048;,
 1.34792;4.67206;9.38048;,
 1.34792;4.72297;10.32194;,
 1.61591;4.72297;10.32194;,
 1.61591;4.67206;10.32194;,
 1.34792;4.67206;10.32194;,
 1.34792;4.72297;10.38048;,
 1.61591;4.72297;10.38048;,
 1.61591;4.72297;10.32194;,
 1.34792;4.72297;10.32194;,
 1.34792;4.67206;10.32194;,
 1.61591;4.67206;10.32194;,
 1.61591;4.67206;10.38048;,
 1.34792;4.67206;10.38048;,
 1.34792;4.72297;11.32194;,
 1.61591;4.72297;11.32194;,
 1.61591;4.67206;11.32194;,
 1.34792;4.67206;11.32194;,
 1.34792;4.72297;11.38048;,
 1.61591;4.72297;11.38048;,
 1.61591;4.72297;11.32194;,
 1.34792;4.72297;11.32194;,
 1.34792;4.67206;11.32194;,
 1.61591;4.67206;11.32194;,
 1.61591;4.67206;11.38048;,
 1.34792;4.67206;11.38048;,
 1.34792;4.72297;12.32194;,
 1.61591;4.72297;12.32194;,
 1.61591;4.67206;12.32194;,
 1.34792;4.67206;12.32194;,
 1.61591;4.72297;12.38048;,
 1.34792;4.72297;12.38048;,
 1.34792;4.67206;12.38048;,
 1.61591;4.67206;12.38048;,
 1.34792;4.72297;12.38048;,
 1.61591;4.72297;12.38048;,
 1.61591;4.72297;12.32194;,
 1.34792;4.72297;12.32194;,
 1.34792;4.67206;12.32194;,
 1.61591;4.67206;12.32194;,
 1.61591;4.67206;12.38048;,
 1.34792;4.67206;12.38048;,
 1.34792;4.72297;13.32194;,
 1.61591;4.72297;13.32194;,
 1.61591;4.67206;13.32194;,
 1.34792;4.67206;13.32194;,
 1.61591;4.72297;13.38048;,
 1.34792;4.72297;13.38048;,
 1.34792;4.67206;13.38048;,
 1.61591;4.67206;13.38048;,
 1.34792;4.72297;13.38048;,
 1.61591;4.72297;13.38048;,
 1.61591;4.72297;13.32194;,
 1.34792;4.72297;13.32194;,
 1.34792;4.67206;13.32194;,
 1.61591;4.67206;13.32194;,
 1.61591;4.67206;13.38048;,
 1.34792;4.67206;13.38048;,
 1.34792;4.72297;14.32194;,
 1.61591;4.72297;14.32194;,
 1.61591;4.67206;14.32194;,
 1.34792;4.67206;14.32194;,
 1.61591;4.72297;14.38048;,
 1.34792;4.72297;14.38048;,
 1.34792;4.67206;14.38048;,
 1.61591;4.67206;14.38048;,
 1.34792;4.72297;14.38048;,
 1.61591;4.72297;14.38048;,
 1.61591;4.72297;14.32194;,
 1.34792;4.72297;14.32194;,
 1.34792;4.67206;14.32194;,
 1.61591;4.67206;14.32194;,
 1.61591;4.67206;14.38048;,
 1.34792;4.67206;14.38048;,
 1.34792;4.72297;15.32194;,
 1.61591;4.72297;15.32194;,
 1.61591;4.67206;15.32194;,
 1.34792;4.67206;15.32194;,
 1.61591;4.72297;15.38048;,
 1.34792;4.72297;15.38048;,
 1.34792;4.67206;15.38048;,
 1.61591;4.67206;15.38048;,
 1.34792;4.72297;15.38048;,
 1.61591;4.72297;15.38048;,
 1.61591;4.72297;15.32194;,
 1.34792;4.72297;15.32194;,
 1.34792;4.67206;15.32194;,
 1.61591;4.67206;15.32194;,
 1.61591;4.67206;15.38048;,
 1.34792;4.67206;15.38048;,
 1.34792;4.72297;16.32194;,
 1.61591;4.72297;16.32194;,
 1.61591;4.67206;16.32194;,
 1.34792;4.67206;16.32194;,
 1.61591;4.72297;16.38048;,
 1.34792;4.72297;16.38048;,
 1.34792;4.67206;16.38048;,
 1.61591;4.67206;16.38048;,
 1.34792;4.72297;16.38048;,
 1.61591;4.72297;16.38048;,
 1.61591;4.72297;16.32194;,
 1.34792;4.72297;16.32194;,
 1.34792;4.67206;16.32194;,
 1.61591;4.67206;16.32194;,
 1.61591;4.67206;16.38048;,
 1.34792;4.67206;16.38048;,
 1.34792;4.72297;17.32194;,
 1.61591;4.72297;17.32194;,
 1.61591;4.67206;17.32194;,
 1.34792;4.67206;17.32194;,
 1.61591;4.72297;17.38048;,
 1.34792;4.72297;17.38048;,
 1.34792;4.67206;17.38048;,
 1.61591;4.67206;17.38048;,
 1.34792;4.72297;17.38048;,
 1.61591;4.72297;17.38048;,
 1.61591;4.72297;17.32194;,
 1.34792;4.72297;17.32194;,
 1.34792;4.67206;17.32194;,
 1.61591;4.67206;17.32194;,
 1.61591;4.67206;17.38048;,
 1.34792;4.67206;17.38048;,
 1.34792;4.72297;18.32194;,
 1.61591;4.72297;18.32194;,
 1.61591;4.67206;18.32194;,
 1.34792;4.67206;18.32194;,
 1.61591;4.72297;18.38048;,
 1.34792;4.72297;18.38048;,
 1.34792;4.67206;18.38048;,
 1.61591;4.67206;18.38048;,
 1.34792;4.72297;18.38048;,
 1.61591;4.72297;18.38048;,
 1.61591;4.72297;18.32194;,
 1.34792;4.72297;18.32194;,
 1.34792;4.67206;18.32194;,
 1.61591;4.67206;18.32194;,
 1.61591;4.67206;18.38048;,
 1.34792;4.67206;18.38048;,
 1.34792;4.72297;19.32194;,
 1.61591;4.72297;19.32194;,
 1.61591;4.67206;19.32194;,
 1.34792;4.67206;19.32194;,
 1.61591;4.72297;19.38048;,
 1.34792;4.72297;19.38048;,
 1.34792;4.67206;19.38048;,
 1.61591;4.67206;19.38048;,
 1.34792;4.72297;19.38048;,
 1.61591;4.72297;19.38048;,
 1.61591;4.72297;19.32194;,
 1.34792;4.72297;19.32194;,
 1.34792;4.67206;19.32194;,
 1.61591;4.67206;19.32194;,
 1.61591;4.67206;19.38048;,
 1.34792;4.67206;19.38048;,
 1.43706;4.67137;3.41601;,
 1.53539;4.67137;3.41601;,
 1.53539;4.59316;3.41601;,
 1.43706;4.59316;3.41601;,
 1.53539;4.67137;3.41601;,
 1.53539;4.67137;5.41601;,
 1.53539;4.59316;5.41601;,
 1.53539;4.59316;3.41601;,
 1.53539;4.67137;5.41601;,
 1.43706;4.67137;5.41601;,
 1.43706;4.59316;5.41601;,
 1.53539;4.59316;5.41601;,
 1.43706;4.67137;5.41601;,
 1.43706;4.67137;3.41601;,
 1.43706;4.59316;3.41601;,
 1.43706;4.59316;5.41601;,
 1.53539;4.67137;3.41601;,
 1.43706;4.67137;3.41601;,
 1.43706;4.59316;3.41601;,
 1.53539;4.59316;3.41601;,
 1.52177;4.59358;5.41827;,
 1.51140;4.56016;5.41827;,
 1.51140;4.56016;3.41827;,
 1.52177;4.59358;3.41827;,
 1.48638;4.54632;5.41827;,
 1.48638;4.54632;3.41827;,
 1.46135;4.56016;5.41827;,
 1.46135;4.56016;3.41827;,
 1.45098;4.59358;5.41827;,
 1.45098;4.59358;3.41827;,
 1.48638;4.59358;3.41827;,
 1.48638;4.59358;3.41827;,
 1.48638;4.59358;3.41827;,
 1.48638;4.59358;3.41827;,
 1.43706;4.67137;9.19302;,
 1.53539;4.67137;9.19302;,
 1.53539;4.59316;9.19302;,
 1.43706;4.59316;9.19302;,
 1.53539;4.67137;9.19302;,
 1.53539;4.67137;11.19301;,
 1.53539;4.59316;11.19301;,
 1.53539;4.59316;9.19302;,
 1.53539;4.67137;11.19301;,
 1.43706;4.67137;11.19301;,
 1.43706;4.59316;11.19301;,
 1.53539;4.59316;11.19301;,
 1.43706;4.67137;11.19301;,
 1.43706;4.67137;9.19302;,
 1.43706;4.59316;9.19302;,
 1.43706;4.59316;11.19301;,
 1.53539;4.67137;9.19302;,
 1.43706;4.67137;9.19302;,
 1.43706;4.59316;9.19302;,
 1.53539;4.59316;9.19302;,
 1.52177;4.59358;11.19527;,
 1.51140;4.56016;11.19527;,
 1.51140;4.56016;9.19528;,
 1.52177;4.59358;9.19528;,
 1.48638;4.54632;11.19527;,
 1.48638;4.54632;9.19528;,
 1.46135;4.56016;11.19527;,
 1.46135;4.56016;9.19528;,
 1.45098;4.59358;11.19527;,
 1.45098;4.59358;9.19528;,
 1.48638;4.59358;9.19528;,
 1.48638;4.59358;9.19528;,
 1.48638;4.59358;9.19528;,
 1.48638;4.59358;9.19528;,
 1.43706;4.67137;15.16100;,
 1.53539;4.67137;15.16100;,
 1.53539;4.59316;15.16100;,
 1.43706;4.59316;15.16100;,
 1.53539;4.67137;15.16100;,
 1.53539;4.67137;17.16100;,
 1.53539;4.59316;17.16100;,
 1.53539;4.59316;15.16100;,
 1.53539;4.67137;17.16100;,
 1.43706;4.67137;17.16100;,
 1.43706;4.59316;17.16100;,
 1.53539;4.59316;17.16100;,
 1.43706;4.67137;17.16100;,
 1.43706;4.67137;15.16100;,
 1.43706;4.59316;15.16100;,
 1.43706;4.59316;17.16100;,
 1.53539;4.67137;15.16100;,
 1.43706;4.67137;15.16100;,
 1.43706;4.59316;15.16100;,
 1.53539;4.59316;15.16100;,
 1.52177;4.59358;17.16325;,
 1.51140;4.56016;17.16325;,
 1.51140;4.56016;15.16325;,
 1.52177;4.59358;15.16325;,
 1.48638;4.54632;17.16325;,
 1.48638;4.54632;15.16325;,
 1.46135;4.56016;17.16325;,
 1.46135;4.56016;15.16325;,
 1.45098;4.59358;17.16325;,
 1.45098;4.59358;15.16325;,
 1.48638;4.59358;15.16325;,
 1.48638;4.59358;15.16325;,
 1.48638;4.59358;15.16325;,
 1.48638;4.59358;15.16325;,
 1.44653;4.97915;10.17795;,
 1.51351;4.97915;10.17795;,
 1.51351;4.67101;10.17795;,
 1.44653;4.67101;10.17795;,
 1.51351;4.97915;10.17795;,
 1.51351;4.97915;10.23979;,
 1.51351;4.67101;10.23979;,
 1.51351;4.67101;10.17795;,
 1.44653;4.97915;10.23979;,
 1.44653;4.97915;10.17795;,
 1.44653;4.67101;10.17795;,
 1.44653;4.67101;10.23979;;
 
 162;
 4;0,1,2,3;,
 4;3,2,4,5;,
 4;6,7,1,0;,
 4;6,0,3,5;,
 4;8,9,10,11;,
 4;12,13,14,15;,
 4;12,16,17,13;,
 4;8,11,18,19;,
 4;9,20,21,10;,
 4;15,14,22,23;,
 4;16,24,25,17;,
 4;19,18,26,27;,
 4;20,28,29,21;,
 4;23,22,30,31;,
 4;24,32,33,25;,
 4;24,34,35,32;,
 4;28,36,37,29;,
 4;31,30,38,39;,
 4;40,41,42,43;,
 4;44,45,46,47;,
 4;48,49,50,51;,
 4;52,53,54,55;,
 4;56,57,45,44;,
 4;56,58,59,57;,
 4;60,61,41,40;,
 4;60,48,51,61;,
 4;62,63,53,52;,
 4;62,43,42,63;,
 4;64,65,66,67;,
 4;68,69,65,64;,
 4;68,70,71,69;,
 4;72,73,74,75;,
 4;76,77,78,79;,
 4;80,81,82,83;,
 4;77,83,82,78;,
 4;84,85,86,87;,
 4;88,86,85,89;,
 4;90,91,92,93;,
 4;94,95,96,97;,
 4;98,99,100,101;,
 4;102,103,104,105;,
 4;106,107,108,109;,
 4;106,103,110,111;,
 4;112,113,104,109;,
 4;114,115,116,117;,
 4;118,119,120,121;,
 4;122,123,124,125;,
 4;122,119,126,127;,
 4;128,129,120,125;,
 4;130,131,132,133;,
 4;134,135,136,137;,
 4;138,139,140,141;,
 4;142,143,144,145;,
 4;146,147,148,149;,
 4;150,151,152,153;,
 4;154,155,156,157;,
 4;158,159,160,161;,
 4;162,163,164,165;,
 4;166,167,168,169;,
 4;170,171,172,173;,
 4;174,175,176,177;,
 4;178,179,180,181;,
 4;182,183,184,185;,
 4;186,187,188,189;,
 4;190,191,192,193;,
 4;194,195,196,197;,
 4;198,199,200,201;,
 4;202,203,204,205;,
 4;206,207,208,209;,
 4;210,211,212,213;,
 4;214,215,216,217;,
 4;218,219,220,221;,
 4;222,223,224,225;,
 4;226,227,228,229;,
 4;230,231,232,233;,
 4;234,235,236,237;,
 4;238,239,240,241;,
 4;242,243,244,245;,
 4;246,247,248,249;,
 4;250,251,252,253;,
 4;254,255,256,257;,
 4;258,259,260,261;,
 4;262,263,264,265;,
 4;266,267,268,269;,
 4;270,271,272,273;,
 4;274,275,276,277;,
 4;278,279,280,281;,
 4;282,283,284,285;,
 4;286,287,288,289;,
 4;290,291,292,293;,
 4;294,295,296,297;,
 4;298,299,300,301;,
 4;302,303,304,305;,
 4;306,307,308,309;,
 4;310,311,312,313;,
 4;314,315,316,317;,
 4;318,319,320,321;,
 4;322,323,324,325;,
 4;326,327,328,329;,
 4;330,331,332,333;,
 4;334,335,336,337;,
 4;338,339,340,341;,
 4;342,343,344,345;,
 4;346,347,348,349;,
 4;350,351,352,353;,
 4;354,355,356,357;,
 4;358,359,360,361;,
 4;362,363,364,365;,
 4;366,367,368,369;,
 4;370,371,372,373;,
 4;374,375,376,377;,
 4;378,379,380,381;,
 4;382,383,384,385;,
 4;386,387,388,389;,
 4;390,391,392,393;,
 4;394,395,396,397;,
 4;398,399,400,401;,
 4;402,403,404,405;,
 4;406,407,408,409;,
 4;410,411,412,413;,
 4;414,415,416,417;,
 4;414,407,418,419;,
 4;420,421,408,417;,
 4;422,423,424,425;,
 4;423,426,427,424;,
 4;426,428,429,427;,
 4;428,430,431,429;,
 3;432,425,424;,
 3;433,424,427;,
 3;434,427,429;,
 3;435,429,431;,
 4;436,437,438,439;,
 4;440,441,442,443;,
 4;444,445,446,447;,
 4;448,449,450,451;,
 4;448,441,452,453;,
 4;454,455,442,451;,
 4;456,457,458,459;,
 4;457,460,461,458;,
 4;460,462,463,461;,
 4;462,464,465,463;,
 3;466,459,458;,
 3;467,458,461;,
 3;468,461,463;,
 3;469,463,465;,
 4;470,471,472,473;,
 4;474,475,476,477;,
 4;478,479,480,481;,
 4;482,483,484,485;,
 4;482,475,486,487;,
 4;488,489,476,485;,
 4;490,491,492,493;,
 4;491,494,495,492;,
 4;494,496,497,495;,
 4;496,498,499,497;,
 3;500,493,492;,
 3;501,492,495;,
 3;502,495,497;,
 3;503,497,499;,
 4;504,505,506,507;,
 4;508,509,510,511;,
 4;512,513,514,515;;
 
 MeshMaterialList {
  11;
  162;
  1,
  1,
  1,
  1,
  2,
  0,
  0,
  2,
  2,
  0,
  0,
  2,
  2,
  0,
  10,
  10,
  2,
  0,
  3,
  1,
  3,
  3,
  1,
  1,
  3,
  3,
  3,
  3,
  1,
  1,
  1,
  3,
  4,
  4,
  4,
  1,
  1,
  6,
  6,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  8,
  8,
  8,
  8,
  8,
  8,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  8,
  8,
  8,
  8,
  8,
  8,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  8,
  8,
  8,
  8,
  8,
  8,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  1,
  1,
  1;;
  Material {
   0.633600;0.276000;0.100000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.138400;0.138400;0.138400;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "sta_postC.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "sta_post.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "sta_post.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "sta_post.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "roof.png";
   }
  }
  Material {
   0.420000;0.420000;0.420000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.674400;0.674400;0.674400;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   100.000000;
   1.000000;1.000000;1.000000;;
   1.000000;1.000000;1.000000;;
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshTextureCoords {
  516;
  11.200100;-4.738450;,
  11.304280;-3.781360;,
  10.262480;-3.781360;,
  10.366660;-4.738450;,
  10.262480;-3.781360;,
  10.366660;-4.738450;,
  11.200100;-4.738450;,
  11.304280;-3.781360;,
  -1.979622;0.615474;,
  -2.935432;0.615474;,
  -2.935432;-0.498997;,
  -1.979622;-0.498997;,
  1.754120;2.209790;,
  1.754120;4.582090;,
  -0.789990;4.582090;,
  -0.789990;2.209790;,
  2.460980;2.209790;,
  2.460980;4.582090;,
  -1.925831;-0.498997;,
  -1.925831;0.615474;,
  -2.980021;0.615474;,
  -2.980021;-0.498997;,
  -1.460970;4.582090;,
  -1.460970;2.209790;,
  2.460970;2.209790;,
  2.460970;4.582090;,
  -1.925831;-0.498997;,
  -1.925831;0.615474;,
  -2.980021;0.615474;,
  -2.980021;-0.498997;,
  -1.460980;4.582090;,
  -1.460980;2.209790;,
  1.754120;2.209790;,
  1.754120;4.582090;,
  2.460970;-3.582090;,
  1.754120;-3.582090;,
  -2.935432;0.615474;,
  -2.935432;-0.498997;,
  -0.789990;4.582090;,
  -0.789990;2.209790;,
  -0.009083;-4.855711;,
  5.570091;-4.855711;,
  5.570091;-4.855711;,
  -0.009083;-4.855711;,
  -0.009080;-6.085610;,
  -0.009080;-6.085610;,
  -0.009080;-6.287620;,
  -0.009080;-6.287620;,
  -0.009083;-6.085763;,
  -0.009083;-6.287780;,
  5.570091;-6.287780;,
  5.570091;-6.085763;,
  -0.009083;-6.085763;,
  5.570091;-6.085763;,
  5.570091;-6.287780;,
  -0.009083;-6.287780;,
  -0.009080;-5.044430;,
  -0.009080;-5.044430;,
  -0.009080;-4.855590;,
  -0.009080;-4.855590;,
  -0.009083;-5.044561;,
  5.570091;-5.044561;,
  -0.009083;-5.044561;,
  5.570091;-5.044561;,
  0.000000;0.221300;,
  1.000000;0.221300;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.787890;,
  1.000000;0.787890;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  2.881922;-4.828697;,
  2.881924;-6.164928;,
  2.802557;-6.164928;,
  2.802555;-4.828697;,
  0.976790;-7.298340;,
  0.980230;-7.086860;,
  -0.005060;-7.066020;,
  -0.008500;-7.277500;,
  1.001150;-5.799140;,
  0.015860;-5.778300;,
  0.012650;-5.976000;,
  0.997940;-5.996850;,
  5.610250;-9.833610;,
  -0.010420;-9.833610;,
  -0.010420;-9.169280;,
  5.610250;-9.169280;,
  -0.010420;-6.294290;,
  -0.010420;-6.958620;,
  2.224238;0.492765;,
  2.224238;30.826260;,
  1.008649;30.826260;,
  1.008649;0.492765;,
  2.224238;0.492765;,
  1.008649;0.492765;,
  1.008649;30.826260;,
  2.224238;30.826260;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.250000;0.000000;,
  0.375000;0.000000;,
  0.375000;1.000000;,
  0.250000;1.000000;,
  0.500000;0.000000;,
  0.500000;1.000000;,
  0.625000;0.000000;,
  0.625000;1.000000;,
  0.750000;0.000000;,
  0.750000;1.000000;,
  0.312500;1.000000;,
  0.437500;1.000000;,
  0.562500;1.000000;,
  0.687500;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.250000;0.000000;,
  0.375000;0.000000;,
  0.375000;1.000000;,
  0.250000;1.000000;,
  0.500000;0.000000;,
  0.500000;1.000000;,
  0.625000;0.000000;,
  0.625000;1.000000;,
  0.750000;0.000000;,
  0.750000;1.000000;,
  0.312500;1.000000;,
  0.437500;1.000000;,
  0.562500;1.000000;,
  0.687500;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.250000;0.000000;,
  0.375000;0.000000;,
  0.375000;1.000000;,
  0.250000;1.000000;,
  0.500000;0.000000;,
  0.500000;1.000000;,
  0.625000;0.000000;,
  0.625000;1.000000;,
  0.750000;0.000000;,
  0.750000;1.000000;,
  0.312500;1.000000;,
  0.437500;1.000000;,
  0.562500;1.000000;,
  0.687500;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;;
 }
}