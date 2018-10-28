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
 88;
 -2.80401;1.93916;-2.07131;,
 -2.37999;1.93916;-2.07131;,
 -2.37999;0.58373;-2.07131;,
 -2.80401;0.58373;-2.07131;,
 -2.37999;1.93916;-2.07131;,
 -2.37999;1.93916;2.07131;,
 -2.37999;0.58373;2.07131;,
 -2.37999;0.58373;-2.07131;,
 -2.80401;1.93916;2.07131;,
 -2.37999;1.93916;2.07131;,
 -2.69035;0.60177;-1.77723;,
 -2.49365;0.60177;-1.77723;,
 -2.49365;-0.75366;-1.77723;,
 -2.69035;-0.75366;-1.77723;,
 -2.49365;0.60177;-1.59288;,
 -2.49365;-0.75366;-1.59288;,
 -2.69035;0.60177;1.77647;,
 -2.49365;0.60177;1.77647;,
 -2.49365;-0.75366;1.77647;,
 -2.69035;-0.75366;1.77647;,
 -2.49365;0.60177;1.96083;,
 -2.49365;-0.75366;1.96083;,
 -2.80401;1.93916;4.24276;,
 -2.37999;1.93916;4.24276;,
 -2.37999;0.58373;4.24276;,
 -2.80401;0.58373;4.24276;,
 -2.37999;1.93916;4.24276;,
 -2.37999;1.93916;8.38538;,
 -2.37999;0.58373;8.38538;,
 -2.37999;0.58373;4.24276;,
 -2.80401;1.93916;8.38538;,
 -2.37999;1.93916;8.38538;,
 -2.69035;0.60177;4.53684;,
 -2.49365;0.60177;4.53684;,
 -2.49365;-0.75366;4.53684;,
 -2.69035;-0.75366;4.53684;,
 -2.49365;0.60177;4.72119;,
 -2.49365;-0.75366;4.72119;,
 -2.69035;0.60177;8.09055;,
 -2.49365;0.60177;8.09055;,
 -2.49365;-0.75366;8.09055;,
 -2.69035;-0.75366;8.09055;,
 -2.49365;0.60177;8.27490;,
 -2.49365;-0.75366;8.27490;,
 -2.80401;1.93916;10.69614;,
 -2.37999;1.93916;10.69614;,
 -2.37999;0.58373;10.69614;,
 -2.80401;0.58373;10.69614;,
 -2.37999;1.93916;10.69614;,
 -2.37999;1.93916;14.83875;,
 -2.37999;0.58373;14.83875;,
 -2.37999;0.58373;10.69614;,
 -2.80401;1.93916;14.83875;,
 -2.37999;1.93916;14.83875;,
 -2.69035;0.60177;10.99021;,
 -2.49365;0.60177;10.99021;,
 -2.49365;-0.75366;10.99021;,
 -2.69035;-0.75366;10.99021;,
 -2.49365;0.60177;11.17457;,
 -2.49365;-0.75366;11.17457;,
 -2.69035;0.60177;14.54391;,
 -2.49365;0.60177;14.54391;,
 -2.49365;-0.75366;14.54391;,
 -2.69035;-0.75366;14.54391;,
 -2.49365;0.60177;14.72827;,
 -2.49365;-0.75366;14.72827;,
 -2.80401;1.93916;17.21507;,
 -2.37999;1.93916;17.21507;,
 -2.37999;0.58373;17.21507;,
 -2.80401;0.58373;17.21507;,
 -2.37999;1.93916;17.21507;,
 -2.37999;1.93916;21.35769;,
 -2.37999;0.58373;21.35769;,
 -2.37999;0.58373;17.21507;,
 -2.80401;1.93916;21.35769;,
 -2.37999;1.93916;21.35769;,
 -2.69035;0.60177;17.50914;,
 -2.49365;0.60177;17.50914;,
 -2.49365;-0.75366;17.50914;,
 -2.69035;-0.75366;17.50914;,
 -2.49365;0.60177;17.69350;,
 -2.49365;-0.75366;17.69350;,
 -2.69035;0.60177;21.06285;,
 -2.49365;0.60177;21.06285;,
 -2.49365;-0.75366;21.06285;,
 -2.69035;-0.75366;21.06285;,
 -2.49365;0.60177;21.24721;,
 -2.49365;-0.75366;21.24721;;
 
 28;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,9,1,0;,
 4;10,11,12,13;,
 4;11,14,15,12;,
 4;16,17,18,19;,
 4;17,20,21,18;,
 4;22,23,24,25;,
 4;26,27,28,29;,
 4;30,31,23,22;,
 4;32,33,34,35;,
 4;33,36,37,34;,
 4;38,39,40,41;,
 4;39,42,43,40;,
 4;44,45,46,47;,
 4;48,49,50,51;,
 4;52,53,45,44;,
 4;54,55,56,57;,
 4;55,58,59,56;,
 4;60,61,62,63;,
 4;61,64,65,62;,
 4;66,67,68,69;,
 4;70,71,72,73;,
 4;74,75,67,66;,
 4;76,77,78,79;,
 4;77,80,81,78;,
 4;82,83,84,85;,
 4;83,86,87,84;;
 
 MeshMaterialList {
  4;
  28;
  0,
  1,
  0,
  0,
  0,
  0,
  0,
  0,
  2,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  0,
  0,
  2,
  0,
  0,
  0,
  0,
  0;;
  Material {
   0.614902;0.614902;0.614902;1.000000;;
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
    "Hino_Ad1.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "Hino_Ad2.png";
   }
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshTextureCoords {
  88;
  0.000000;-1.655880;,
  0.000000;2.655880;,
  0.000000;2.655880;,
  0.000000;-1.655880;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;-1.655880;,
  1.000000;2.655880;,
  0.000000;-1.655880;,
  0.000000;2.655880;,
  0.000000;2.655880;,
  0.000000;-1.655880;,
  1.000000;2.655880;,
  1.000000;2.655880;,
  0.000000;-1.655880;,
  0.000000;2.655880;,
  0.000000;2.655880;,
  0.000000;-1.655880;,
  1.000000;2.655880;,
  1.000000;2.655880;,
  0.000000;-1.655880;,
  0.000000;2.655880;,
  0.000000;2.655880;,
  0.000000;-1.655880;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;-1.655880;,
  1.000000;2.655880;,
  0.000000;-1.655880;,
  0.000000;2.655880;,
  0.000000;2.655880;,
  0.000000;-1.655880;,
  1.000000;2.655880;,
  1.000000;2.655880;,
  0.000000;-1.655880;,
  0.000000;2.655880;,
  0.000000;2.655880;,
  0.000000;-1.655880;,
  1.000000;2.655880;,
  1.000000;2.655880;,
  0.000000;-1.655880;,
  0.000000;2.655880;,
  0.000000;2.655880;,
  0.000000;-1.655880;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;-1.655880;,
  1.000000;2.655880;,
  0.000000;-1.655880;,
  0.000000;2.655880;,
  0.000000;2.655880;,
  0.000000;-1.655880;,
  1.000000;2.655880;,
  1.000000;2.655880;,
  0.000000;-1.655880;,
  0.000000;2.655880;,
  0.000000;2.655880;,
  0.000000;-1.655880;,
  1.000000;2.655880;,
  1.000000;2.655880;,
  0.000000;-1.655880;,
  0.000000;2.655880;,
  0.000000;2.655880;,
  0.000000;-1.655880;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;-1.655880;,
  1.000000;2.655880;,
  0.000000;-1.655880;,
  0.000000;2.655880;,
  0.000000;2.655880;,
  0.000000;-1.655880;,
  1.000000;2.655880;,
  1.000000;2.655880;,
  0.000000;-1.655880;,
  0.000000;2.655880;,
  0.000000;2.655880;,
  0.000000;-1.655880;,
  1.000000;2.655880;,
  1.000000;2.655880;;
 }
}
