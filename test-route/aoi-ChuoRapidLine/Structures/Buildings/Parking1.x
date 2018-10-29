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
 49;
 -30.21116;14.99586;-5.64791;,
 19.73850;14.99586;-5.64791;,
 19.73850;0.17669;-5.64791;,
 -30.21116;0.17669;-5.64791;,
 19.73850;14.99586;-5.64791;,
 19.73850;14.99586;5.64791;,
 19.73850;0.17669;5.64791;,
 19.73850;0.17669;-5.64791;,
 -30.21116;14.99586;5.64791;,
 -30.21116;14.99586;-5.64791;,
 -30.21116;0.17669;-5.64791;,
 -30.21116;0.17669;5.64791;,
 -28.10327;17.92012;-2.16870;,
 -24.33407;17.92012;-2.16870;,
 -24.33407;15.01483;-2.16870;,
 -28.10327;15.01483;-2.16870;,
 -24.33407;17.92012;-2.16870;,
 -24.33407;17.92012;0.76080;,
 -24.33407;15.01483;0.76080;,
 -24.33407;15.01483;-2.16870;,
 -24.33407;17.92012;0.76080;,
 -28.10327;17.92012;0.76080;,
 -28.10327;15.01483;0.76080;,
 -24.33407;15.01483;0.76080;,
 -28.10327;17.92012;0.76080;,
 -24.33407;17.92012;-2.16870;,
 -28.10327;17.92012;-2.16870;,
 -30.21116;14.99586;-5.64791;,
 -30.21116;14.99586;5.64791;,
 19.73850;14.99586;5.64791;,
 19.73850;14.99586;-5.64791;,
 -30.80549;1.00000;-6.45813;,
 20.87215;1.00000;-6.45813;,
 20.87215;-1.00000;-6.45813;,
 -30.80549;-1.00000;-6.45813;,
 20.87215;1.00000;-6.45813;,
 20.87215;1.00000;6.45813;,
 20.87215;-1.00000;6.45813;,
 20.87215;-1.00000;-6.45813;,
 -30.80549;1.00000;6.45813;,
 -30.80549;1.00000;-6.45813;,
 -30.80549;-1.00000;-6.45813;,
 -30.80549;-1.00000;6.45813;,
 20.87215;1.00000;-6.45813;,
 -30.80549;1.00000;-6.45813;,
 -28.10327;17.92012;0.76080;,
 -28.10327;17.92012;-2.16870;,
 -28.10327;15.01483;-2.16870;,
 -28.10327;15.01483;0.76080;;
 
 13;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,9,10,11;,
 4;12,13,14,15;,
 4;16,17,18,19;,
 4;20,21,22,23;,
 4;24,17,25,26;,
 4;27,28,29,30;,
 4;31,32,33,34;,
 4;35,36,37,38;,
 4;39,40,41,42;,
 4;39,36,43,44;,
 4;45,46,47,48;;
 
 MeshMaterialList {
  6;
  13;
  0,
  1,
  1,
  4,
  2,
  3,
  2,
  2,
  5,
  5,
  5,
  5,
  2;;
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "Parking.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "Parking.png";
   }
  }
  Material {
   0.620800;0.599200;0.589600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
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
    "parkingMark.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "konkuriKabe1.png";
   }
  }
 }
 MeshTextureCoords {
  49;
  0.006011;-0.026718;,
  0.957645;-0.026718;,
  0.957645;0.981763;,
  0.006011;0.981763;,
  0.378714;-0.011190;,
  0.621286;-0.011190;,
  0.621286;0.967561;,
  0.378714;0.967561;,
  0.621286;-0.011190;,
  0.378714;-0.011190;,
  0.378714;0.967561;,
  0.621286;0.967561;,
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
  1.000000;1.000000;,
  0.000000;1.000000;,
  -0.382880;-0.026720;,
  0.621290;-0.011190;,
  0.621290;-0.011190;,
  1.382880;-0.026720;,
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
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;;
 }
}