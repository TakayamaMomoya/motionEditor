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
 56;
 -12.97064;-11.04009;-18.71523;,
 -12.97064;-11.04009;18.71525;,
 -29.09391;-11.07731;18.71525;,
 -29.09391;-11.07731;-18.71523;,
 -47.22271;-9.66696;-11.26596;,
 -47.22271;-9.66696;11.26601;,
 -52.31982;-5.70054;6.49200;,
 -52.31982;-5.70054;-6.49196;,
 1.26992;0.00013;18.71525;,
 1.26992;0.00013;-18.71523;,
 1.20932;14.90576;-10.79088;,
 1.20932;14.90576;10.79090;,
 1.20932;-19.58465;18.71525;,
 1.20932;-19.58465;-18.71523;,
 1.20932;-19.58465;-18.71523;,
 -12.97064;-11.04009;-18.71523;,
 -22.15946;0.00013;-18.71523;,
 1.26992;0.00013;-18.71523;,
 -43.93913;-8.33966;-18.71523;,
 -29.09391;-11.07731;-18.71523;,
 -43.93913;-8.33966;18.71525;,
 -43.93913;-8.33966;-18.71523;,
 -12.97064;-11.04009;18.71525;,
 -22.15946;0.00013;18.71525;,
 -43.93913;-8.33966;18.71525;,
 -29.09391;-11.07731;18.71525;,
 1.26992;0.00013;18.71525;,
 1.20932;-19.58465;18.71525;,
 1.20932;-19.58465;18.71525;,
 1.20932;-19.58465;-18.71523;,
 -43.93913;-8.33966;-18.71523;,
 -43.93913;-8.33966;18.71525;,
 -44.32482;-8.90928;18.69018;,
 -44.32482;-8.90928;-18.69014;,
 -44.32482;-8.90928;-18.69014;,
 -44.32482;-8.90928;18.69018;,
 -22.15946;20.15868;-10.79088;,
 -36.42586;18.76830;-10.79088;,
 -22.15946;20.15868;10.79090;,
 -22.15946;20.15868;-10.79088;,
 -36.42586;18.76830;-10.79088;,
 -36.42586;18.76830;10.79090;,
 -22.15946;20.15868;10.79090;,
 -36.42586;18.76830;10.79090;,
 1.20932;14.90576;10.79090;,
 1.20932;14.90576;-10.79088;,
 1.20932;14.90576;10.79090;,
 1.20932;14.90576;-10.79088;,
 -52.78088;-2.32885;10.77014;,
 -44.32482;-8.90928;18.69018;,
 -52.78088;-2.32885;-10.77012;,
 -52.78088;-2.32885;10.77014;,
 -44.32482;-8.90928;-18.69014;,
 -52.78088;-2.32885;-10.77012;,
 -52.78088;-2.32885;10.77014;,
 -52.78088;-2.32885;-10.77012;;
 
 24;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,9,10,11;,
 4;12,1,0,13;,
 4;14,15,16,17;,
 4;18,16,15,19;,
 4;3,2,20,21;,
 4;22,23,24,25;,
 4;26,23,22,27;,
 4;28,29,9,8;,
 4;30,31,32,33;,
 4;34,35,5,4;,
 4;36,16,18,37;,
 4;38,39,40,41;,
 4;24,23,42,43;,
 4;44,42,23,26;,
 4;45,39,38,46;,
 4;17,16,36,47;,
 4;24,43,48,49;,
 4;41,40,50,51;,
 4;37,18,52,53;,
 4;35,54,6,5;,
 4;54,55,7,6;,
 4;55,34,4,7;;
 
 MeshMaterialList {
  1;
  24;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "data\\TEXTURE\\MATERIAL\\arms_02.png";
   }
  }
 }
 MeshNormals {
  36;
  -0.516120;-0.856516;0.000000;,
  -0.089906;-0.995950;0.000000;,
  -0.266734;-0.963770;0.000000;,
  1.000000;0.000486;0.000000;,
  -0.009167;0.192792;-0.981197;,
  -0.197440;0.234587;-0.951833;,
  -0.181355;-0.983418;0.000000;,
  -0.009167;0.192792;0.981197;,
  0.577505;-0.816387;-0.000000;,
  -0.432309;-0.891417;-0.135955;,
  -0.432310;-0.891417;0.135956;,
  0.999992;0.004066;0.000000;,
  -0.018012;0.378822;-0.925294;,
  0.061939;0.998080;0.000000;,
  -0.483150;0.875538;0.000000;,
  -0.291271;0.346071;-0.891850;,
  -0.893220;0.320374;0.315464;,
  -0.931368;0.081499;-0.354841;,
  -0.841606;-0.525349;0.125330;,
  -0.841606;-0.525349;-0.125330;,
  0.000000;0.000000;-1.000000;,
  0.021033;0.214033;-0.976600;,
  0.000000;0.000000;1.000000;,
  -0.197438;0.234590;0.951833;,
  0.021033;0.214033;0.976600;,
  0.999995;-0.003094;-0.000000;,
  0.828041;-0.560668;-0.000000;,
  -0.018012;0.378822;0.925294;,
  -0.291267;0.346076;0.891849;,
  0.041081;0.418049;0.907495;,
  0.219311;0.975655;0.000000;,
  0.041081;0.418049;-0.907495;,
  -0.491509;0.337928;0.802635;,
  -0.491515;0.337919;-0.802635;,
  -0.757476;-0.549969;0.351801;,
  -0.757475;-0.549970;-0.351801;;
  24;
  4;2,2,1,1;,
  4;9,10,18,19;,
  4;3,3,11,11;,
  4;0,2,2,0;,
  4;20,20,4,21;,
  4;5,4,20,20;,
  4;1,1,6,6;,
  4;22,7,23,22;,
  4;24,7,22,22;,
  4;25,25,3,3;,
  4;26,26,8,8;,
  4;8,8,10,9;,
  4;12,4,5,15;,
  4;13,13,14,14;,
  4;23,7,27,28;,
  4;29,27,7,24;,
  4;30,13,13,30;,
  4;21,4,12,31;,
  4;23,28,16,32;,
  4;14,14,17,16;,
  4;15,5,33,17;,
  4;34,34,18,10;,
  4;16,17,19,18;,
  4;17,35,9,19;;
 }
 MeshTextureCoords {
  56;
  0.582224;0.307027;,
  0.582224;0.268758;,
  0.608678;0.268758;,
  0.608678;0.307027;,
  0.726779;0.183078;,
  0.728467;0.223575;,
  0.741132;0.214442;,
  0.740160;0.191106;,
  0.509898;0.238951;,
  0.461887;0.238951;,
  0.472051;0.218202;,
  0.499733;0.218202;,
  0.558960;0.268758;,
  0.558960;0.307027;,
  0.530495;0.275450;,
  0.562838;0.259006;,
  0.583797;0.237761;,
  0.530356;0.237761;,
  0.633474;0.253810;,
  0.599614;0.259078;,
  0.633034;0.268758;,
  0.633034;0.307027;,
  0.562838;0.259006;,
  0.583797;0.237761;,
  0.633474;0.253810;,
  0.599614;0.259078;,
  0.530356;0.237761;,
  0.530495;0.275450;,
  0.509898;0.266213;,
  0.461887;0.266213;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  0.722420;0.169886;,
  0.725220;0.237071;,
  0.583797;0.198967;,
  0.616337;0.201643;,
  0.677158;0.185231;,
  0.677158;0.217206;,
  0.696591;0.217206;,
  0.696591;0.185231;,
  0.583797;0.198967;,
  0.616337;0.201643;,
  0.530495;0.209076;,
  0.645326;0.217206;,
  0.645326;0.185231;,
  0.530495;0.209076;,
  0.653642;0.242242;,
  0.634354;0.254906;,
  0.718870;0.217176;,
  0.718870;0.185262;,
  0.634354;0.254906;,
  0.653642;0.242242;,
  0.746231;0.221920;,
  0.744618;0.183205;;
 }
}