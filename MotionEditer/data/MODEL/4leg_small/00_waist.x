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
 256;
 12.50571;-9.10873;-26.28852;,
 13.87080;-7.81879;-24.92343;,
 10.89548;-7.81879;-23.69102;,
 10.89548;-9.10873;-25.62154;,
 7.92017;-7.81879;-24.92343;,
 9.28525;-9.10873;-26.28852;,
 6.68775;-7.81879;-27.89874;,
 8.61827;-9.10873;-27.89874;,
 7.92017;-7.81879;-30.87405;,
 9.28525;-9.10873;-29.50896;,
 10.89548;-7.81879;-32.10647;,
 10.89548;-9.10873;-30.17594;,
 13.87080;-7.81879;-30.87405;,
 12.50571;-9.10873;-29.50896;,
 15.10322;-7.81879;-27.89874;,
 13.17269;-9.10873;-27.89874;,
 14.78292;-5.88826;-24.01130;,
 10.89548;-5.88826;-22.40108;,
 7.00804;-5.88826;-24.01130;,
 5.39781;-5.88826;-27.89874;,
 7.00804;-5.88826;-31.78619;,
 10.89548;-5.88826;-33.39641;,
 14.78292;-5.88826;-31.78619;,
 16.39315;-5.88826;-27.89874;,
 15.10322;-3.61105;-23.69102;,
 10.89548;-3.61105;-21.94810;,
 6.68775;-3.61105;-23.69102;,
 4.94485;-3.61105;-27.89874;,
 6.68775;-3.61105;-32.10647;,
 10.89548;-3.61105;-33.84938;,
 15.10322;-3.61105;-32.10649;,
 16.84612;-3.61105;-27.89874;,
 14.78292;-1.33384;-24.01130;,
 10.89548;-1.33384;-22.40108;,
 7.00804;-1.33384;-24.01130;,
 5.39781;-1.33384;-27.89874;,
 7.00804;-1.33384;-31.78619;,
 10.89548;-1.33384;-33.39641;,
 14.78292;-1.33384;-31.78619;,
 16.39315;-1.33384;-27.89874;,
 13.87080;0.59668;-24.92343;,
 10.89548;0.59668;-23.69102;,
 7.92017;0.59668;-24.92343;,
 6.68775;0.59668;-27.89874;,
 7.92017;0.59668;-30.87405;,
 10.89548;0.59668;-32.10647;,
 13.87080;0.59668;-30.87405;,
 15.10322;0.59668;-27.89874;,
 12.50571;1.88662;-26.28852;,
 10.89548;1.88662;-25.62154;,
 9.28525;1.88662;-26.28852;,
 8.61827;1.88662;-27.89874;,
 9.28525;1.88662;-29.50896;,
 10.89548;1.88662;-30.17594;,
 12.50571;1.88662;-29.50896;,
 13.17269;1.88662;-27.89874;,
 10.89548;-9.56168;-27.89874;,
 10.89548;2.33958;-27.89874;,
 -8.06462;-9.10873;-26.28852;,
 -6.69953;-7.81879;-24.92343;,
 -9.67485;-7.81879;-23.69102;,
 -9.67485;-9.10873;-25.62154;,
 -12.65017;-7.81879;-24.92343;,
 -11.28508;-9.10873;-26.28852;,
 -13.88259;-7.81879;-27.89874;,
 -11.95206;-9.10873;-27.89874;,
 -12.65017;-7.81879;-30.87405;,
 -11.28508;-9.10873;-29.50896;,
 -9.67485;-7.81879;-32.10647;,
 -9.67485;-9.10873;-30.17594;,
 -6.69953;-7.81879;-30.87405;,
 -8.06462;-9.10873;-29.50896;,
 -5.46712;-7.81879;-27.89874;,
 -7.39764;-9.10873;-27.89874;,
 -5.78741;-5.88826;-24.01130;,
 -9.67485;-5.88826;-22.40108;,
 -13.56229;-5.88826;-24.01130;,
 -15.17252;-5.88826;-27.89874;,
 -13.56229;-5.88826;-31.78619;,
 -9.67485;-5.88826;-33.39641;,
 -5.78741;-5.88826;-31.78619;,
 -4.17718;-5.88826;-27.89874;,
 -5.46712;-3.61105;-23.69102;,
 -9.67485;-3.61105;-21.94810;,
 -13.88259;-3.61105;-23.69102;,
 -15.62549;-3.61105;-27.89874;,
 -13.88259;-3.61105;-32.10647;,
 -9.67485;-3.61105;-33.84938;,
 -5.46712;-3.61105;-32.10649;,
 -3.72422;-3.61105;-27.89874;,
 -5.78741;-1.33384;-24.01130;,
 -9.67485;-1.33384;-22.40108;,
 -13.56229;-1.33384;-24.01130;,
 -15.17252;-1.33384;-27.89874;,
 -13.56229;-1.33384;-31.78619;,
 -9.67485;-1.33384;-33.39641;,
 -5.78741;-1.33384;-31.78619;,
 -4.17718;-1.33384;-27.89874;,
 -6.69953;0.59668;-24.92343;,
 -9.67485;0.59668;-23.69102;,
 -12.65017;0.59668;-24.92343;,
 -13.88259;0.59668;-27.89874;,
 -12.65017;0.59668;-30.87405;,
 -9.67485;0.59668;-32.10647;,
 -6.69953;0.59668;-30.87405;,
 -5.46712;0.59668;-27.89874;,
 -8.06462;1.88662;-26.28852;,
 -9.67485;1.88662;-25.62154;,
 -11.28508;1.88662;-26.28852;,
 -11.95206;1.88662;-27.89874;,
 -11.28508;1.88662;-29.50896;,
 -9.67485;1.88662;-30.17594;,
 -8.06462;1.88662;-29.50896;,
 -7.39764;1.88662;-27.89874;,
 -9.67485;-9.56168;-27.89874;,
 -9.67485;2.33958;-27.89874;,
 -17.11047;-1.63382;-35.51885;,
 -17.11047;9.56169;-35.51885;,
 17.11047;9.56169;-35.51885;,
 17.11047;-1.63382;-35.51885;,
 -17.11047;9.56169;-35.51885;,
 -17.11047;9.56169;35.51886;,
 17.11047;9.56169;35.51886;,
 17.11047;9.56169;-35.51885;,
 -17.11047;9.56169;35.51886;,
 -17.11047;-1.63382;35.51886;,
 17.11047;-1.63382;35.51886;,
 17.11047;9.56169;35.51886;,
 -17.11047;-1.63382;35.51886;,
 -17.11047;-1.63382;-35.51885;,
 17.11047;-1.63382;-35.51885;,
 17.11047;-1.63382;35.51886;,
 17.11047;-1.63382;-35.51885;,
 17.11047;9.56169;-35.51885;,
 17.11047;9.56169;35.51886;,
 17.11047;-1.63382;35.51886;,
 -17.11047;-1.63382;35.51886;,
 -17.11047;9.56169;35.51886;,
 -17.11047;9.56169;-35.51885;,
 -17.11047;-1.63382;-35.51885;,
 -8.06462;-9.10873;30.01140;,
 -6.69953;-7.81879;31.37648;,
 -9.67485;-7.81879;32.60890;,
 -9.67485;-9.10873;30.67838;,
 -12.65017;-7.81879;31.37648;,
 -11.28508;-9.10873;30.01140;,
 -13.88259;-7.81879;28.40117;,
 -11.95206;-9.10873;28.40117;,
 -12.65017;-7.81879;25.42586;,
 -11.28508;-9.10873;26.79095;,
 -9.67485;-7.81879;24.19345;,
 -9.67485;-9.10873;26.12397;,
 -6.69953;-7.81879;25.42586;,
 -8.06462;-9.10873;26.79095;,
 -5.46712;-7.81879;28.40117;,
 -7.39764;-9.10873;28.40117;,
 -5.78741;-5.88826;32.28862;,
 -9.67485;-5.88826;33.89884;,
 -13.56229;-5.88826;32.28862;,
 -15.17252;-5.88826;28.40117;,
 -13.56229;-5.88826;24.51373;,
 -9.67485;-5.88826;22.90351;,
 -5.78741;-5.88826;24.51373;,
 -4.17718;-5.88826;28.40117;,
 -5.46712;-3.61105;32.60890;,
 -9.67485;-3.61105;34.35181;,
 -13.88259;-3.61105;32.60890;,
 -15.62549;-3.61105;28.40117;,
 -13.88259;-3.61105;24.19345;,
 -9.67485;-3.61105;22.45053;,
 -5.46712;-3.61105;24.19345;,
 -3.72422;-3.61105;28.40117;,
 -5.78741;-1.33384;32.28862;,
 -9.67485;-1.33384;33.89884;,
 -13.56229;-1.33384;32.28862;,
 -15.17252;-1.33384;28.40117;,
 -13.56229;-1.33384;24.51373;,
 -9.67485;-1.33384;22.90351;,
 -5.78741;-1.33384;24.51373;,
 -4.17718;-1.33384;28.40117;,
 -6.69953;0.59668;31.37648;,
 -9.67485;0.59668;32.60890;,
 -12.65017;0.59668;31.37648;,
 -13.88259;0.59668;28.40117;,
 -12.65017;0.59668;25.42586;,
 -9.67485;0.59668;24.19345;,
 -6.69953;0.59668;25.42586;,
 -5.46712;0.59668;28.40117;,
 -8.06462;1.88662;30.01140;,
 -9.67485;1.88662;30.67838;,
 -11.28508;1.88662;30.01140;,
 -11.95206;1.88662;28.40117;,
 -11.28508;1.88662;26.79095;,
 -9.67485;1.88662;26.12397;,
 -8.06462;1.88662;26.79095;,
 -7.39764;1.88662;28.40117;,
 -9.67485;-9.56168;28.40117;,
 -9.67485;2.33958;28.40117;,
 12.50571;-9.10873;30.01140;,
 13.87080;-7.81879;31.37648;,
 10.89548;-7.81879;32.60890;,
 10.89548;-9.10873;30.67838;,
 7.92017;-7.81879;31.37648;,
 9.28525;-9.10873;30.01140;,
 6.68775;-7.81879;28.40117;,
 8.61827;-9.10873;28.40117;,
 7.92017;-7.81879;25.42586;,
 9.28525;-9.10873;26.79095;,
 10.89548;-7.81879;24.19345;,
 10.89548;-9.10873;26.12397;,
 13.87080;-7.81879;25.42586;,
 12.50571;-9.10873;26.79095;,
 15.10322;-7.81879;28.40117;,
 13.17269;-9.10873;28.40117;,
 14.78292;-5.88826;32.28862;,
 10.89548;-5.88826;33.89884;,
 7.00804;-5.88826;32.28862;,
 5.39781;-5.88826;28.40117;,
 7.00804;-5.88826;24.51373;,
 10.89548;-5.88826;22.90351;,
 14.78292;-5.88826;24.51373;,
 16.39315;-5.88826;28.40117;,
 15.10322;-3.61105;32.60890;,
 10.89548;-3.61105;34.35181;,
 6.68775;-3.61105;32.60890;,
 4.94485;-3.61105;28.40117;,
 6.68775;-3.61105;24.19345;,
 10.89548;-3.61105;22.45053;,
 15.10322;-3.61105;24.19345;,
 16.84612;-3.61105;28.40117;,
 14.78292;-1.33384;32.28862;,
 10.89548;-1.33384;33.89884;,
 7.00804;-1.33384;32.28862;,
 5.39781;-1.33384;28.40117;,
 7.00804;-1.33384;24.51373;,
 10.89548;-1.33384;22.90351;,
 14.78292;-1.33384;24.51373;,
 16.39315;-1.33384;28.40117;,
 13.87080;0.59668;31.37648;,
 10.89548;0.59668;32.60890;,
 7.92017;0.59668;31.37648;,
 6.68775;0.59668;28.40117;,
 7.92017;0.59668;25.42586;,
 10.89548;0.59668;24.19345;,
 13.87080;0.59668;25.42586;,
 15.10322;0.59668;28.40117;,
 12.50571;1.88662;30.01140;,
 10.89548;1.88662;30.67838;,
 9.28525;1.88662;30.01140;,
 8.61827;1.88662;28.40117;,
 9.28525;1.88662;26.79095;,
 10.89548;1.88662;26.12397;,
 12.50571;1.88662;26.79095;,
 13.17269;1.88662;28.40117;,
 10.89548;-9.56168;28.40117;,
 10.89548;2.33958;28.40117;;
 
 262;
 4;0,1,2,3;,
 4;3,2,4,5;,
 4;5,4,6,7;,
 4;7,6,8,9;,
 4;9,8,10,11;,
 4;11,10,12,13;,
 4;13,12,14,15;,
 4;15,14,1,0;,
 4;1,16,17,2;,
 4;2,17,18,4;,
 4;4,18,19,6;,
 4;6,19,20,8;,
 4;8,20,21,10;,
 4;10,21,22,12;,
 4;12,22,23,14;,
 4;14,23,16,1;,
 4;16,24,25,17;,
 4;17,25,26,18;,
 4;18,26,27,19;,
 4;19,27,28,20;,
 4;20,28,29,21;,
 4;21,29,30,22;,
 4;22,30,31,23;,
 4;23,31,24,16;,
 4;24,32,33,25;,
 4;25,33,34,26;,
 4;26,34,35,27;,
 4;27,35,36,28;,
 4;28,36,37,29;,
 4;29,37,38,30;,
 4;30,38,39,31;,
 4;31,39,32,24;,
 4;32,40,41,33;,
 4;33,41,42,34;,
 4;34,42,43,35;,
 4;35,43,44,36;,
 4;36,44,45,37;,
 4;37,45,46,38;,
 4;38,46,47,39;,
 4;39,47,40,32;,
 4;40,48,49,41;,
 4;41,49,50,42;,
 4;42,50,51,43;,
 4;43,51,52,44;,
 4;44,52,53,45;,
 4;45,53,54,46;,
 4;46,54,55,47;,
 4;47,55,48,40;,
 3;3,56,0;,
 3;5,56,3;,
 3;7,56,5;,
 3;9,56,7;,
 3;11,56,9;,
 3;13,56,11;,
 3;15,56,13;,
 3;0,56,15;,
 3;48,57,49;,
 3;49,57,50;,
 3;50,57,51;,
 3;51,57,52;,
 3;52,57,53;,
 3;53,57,54;,
 3;54,57,55;,
 3;55,57,48;,
 4;58,59,60,61;,
 4;61,60,62,63;,
 4;63,62,64,65;,
 4;65,64,66,67;,
 4;67,66,68,69;,
 4;69,68,70,71;,
 4;71,70,72,73;,
 4;73,72,59,58;,
 4;59,74,75,60;,
 4;60,75,76,62;,
 4;62,76,77,64;,
 4;64,77,78,66;,
 4;66,78,79,68;,
 4;68,79,80,70;,
 4;70,80,81,72;,
 4;72,81,74,59;,
 4;74,82,83,75;,
 4;75,83,84,76;,
 4;76,84,85,77;,
 4;77,85,86,78;,
 4;78,86,87,79;,
 4;79,87,88,80;,
 4;80,88,89,81;,
 4;81,89,82,74;,
 4;82,90,91,83;,
 4;83,91,92,84;,
 4;84,92,93,85;,
 4;85,93,94,86;,
 4;86,94,95,87;,
 4;87,95,96,88;,
 4;88,96,97,89;,
 4;89,97,90,82;,
 4;90,98,99,91;,
 4;91,99,100,92;,
 4;92,100,101,93;,
 4;93,101,102,94;,
 4;94,102,103,95;,
 4;95,103,104,96;,
 4;96,104,105,97;,
 4;97,105,98,90;,
 4;98,106,107,99;,
 4;99,107,108,100;,
 4;100,108,109,101;,
 4;101,109,110,102;,
 4;102,110,111,103;,
 4;103,111,112,104;,
 4;104,112,113,105;,
 4;105,113,106,98;,
 3;61,114,58;,
 3;63,114,61;,
 3;65,114,63;,
 3;67,114,65;,
 3;69,114,67;,
 3;71,114,69;,
 3;73,114,71;,
 3;58,114,73;,
 3;106,115,107;,
 3;107,115,108;,
 3;108,115,109;,
 3;109,115,110;,
 3;110,115,111;,
 3;111,115,112;,
 3;112,115,113;,
 3;113,115,106;,
 4;116,117,118,119;,
 4;120,121,122,123;,
 4;124,125,126,127;,
 4;128,129,130,131;,
 4;132,133,134,135;,
 4;136,137,138,139;,
 4;140,141,142,143;,
 4;143,142,144,145;,
 4;145,144,146,147;,
 4;147,146,148,149;,
 4;149,148,150,151;,
 4;151,150,152,153;,
 4;153,152,154,155;,
 4;155,154,141,140;,
 4;141,156,157,142;,
 4;142,157,158,144;,
 4;144,158,159,146;,
 4;146,159,160,148;,
 4;148,160,161,150;,
 4;150,161,162,152;,
 4;152,162,163,154;,
 4;154,163,156,141;,
 4;156,164,165,157;,
 4;157,165,166,158;,
 4;158,166,167,159;,
 4;159,167,168,160;,
 4;160,168,169,161;,
 4;161,169,170,162;,
 4;162,170,171,163;,
 4;163,171,164,156;,
 4;164,172,173,165;,
 4;165,173,174,166;,
 4;166,174,175,167;,
 4;167,175,176,168;,
 4;168,176,177,169;,
 4;169,177,178,170;,
 4;170,178,179,171;,
 4;171,179,172,164;,
 4;172,180,181,173;,
 4;173,181,182,174;,
 4;174,182,183,175;,
 4;175,183,184,176;,
 4;176,184,185,177;,
 4;177,185,186,178;,
 4;178,186,187,179;,
 4;179,187,180,172;,
 4;180,188,189,181;,
 4;181,189,190,182;,
 4;182,190,191,183;,
 4;183,191,192,184;,
 4;184,192,193,185;,
 4;185,193,194,186;,
 4;186,194,195,187;,
 4;187,195,188,180;,
 3;143,196,140;,
 3;145,196,143;,
 3;147,196,145;,
 3;149,196,147;,
 3;151,196,149;,
 3;153,196,151;,
 3;155,196,153;,
 3;140,196,155;,
 3;188,197,189;,
 3;189,197,190;,
 3;190,197,191;,
 3;191,197,192;,
 3;192,197,193;,
 3;193,197,194;,
 3;194,197,195;,
 3;195,197,188;,
 4;198,199,200,201;,
 4;201,200,202,203;,
 4;203,202,204,205;,
 4;205,204,206,207;,
 4;207,206,208,209;,
 4;209,208,210,211;,
 4;211,210,212,213;,
 4;213,212,199,198;,
 4;199,214,215,200;,
 4;200,215,216,202;,
 4;202,216,217,204;,
 4;204,217,218,206;,
 4;206,218,219,208;,
 4;208,219,220,210;,
 4;210,220,221,212;,
 4;212,221,214,199;,
 4;214,222,223,215;,
 4;215,223,224,216;,
 4;216,224,225,217;,
 4;217,225,226,218;,
 4;218,226,227,219;,
 4;219,227,228,220;,
 4;220,228,229,221;,
 4;221,229,222,214;,
 4;222,230,231,223;,
 4;223,231,232,224;,
 4;224,232,233,225;,
 4;225,233,234,226;,
 4;226,234,235,227;,
 4;227,235,236,228;,
 4;228,236,237,229;,
 4;229,237,230,222;,
 4;230,238,239,231;,
 4;231,239,240,232;,
 4;232,240,241,233;,
 4;233,241,242,234;,
 4;234,242,243,235;,
 4;235,243,244,236;,
 4;236,244,245,237;,
 4;237,245,238,230;,
 4;238,246,247,239;,
 4;239,247,248,240;,
 4;240,248,249,241;,
 4;241,249,250,242;,
 4;242,250,251,243;,
 4;243,251,252,244;,
 4;244,252,253,245;,
 4;245,253,246,238;,
 3;201,254,198;,
 3;203,254,201;,
 3;205,254,203;,
 3;207,254,205;,
 3;209,254,207;,
 3;211,254,209;,
 3;213,254,211;,
 3;198,254,213;,
 3;246,255,247;,
 3;247,255,248;,
 3;248,255,249;,
 3;249,255,250;,
 3;250,255,251;,
 3;251,255,252;,
 3;252,255,253;,
 3;253,255,246;;
 
 MeshMaterialList {
  1;
  262;
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
    "data\\TEXTURE\\MATERIAL\\4leg_small.png";
   }
  }
 }
 MeshNormals {
  234;
  0.269131;-0.924736;0.269132;,
  -0.000000;-0.924736;0.380609;,
  -0.269131;-0.924736;0.269132;,
  -0.380609;-0.924736;0.000000;,
  -0.269131;-0.924736;-0.269131;,
  -0.000000;-0.924736;-0.380608;,
  0.269131;-0.924736;-0.269131;,
  0.380608;-0.924736;0.000000;,
  0.498494;-0.709230;0.498495;,
  -0.000000;-0.709230;0.704977;,
  -0.498494;-0.709230;0.498495;,
  -0.704977;-0.709230;0.000000;,
  -0.498494;-0.709230;-0.498494;,
  -0.000000;-0.709231;-0.704976;,
  0.498494;-0.709230;-0.498494;,
  0.704977;-0.709230;0.000000;,
  0.652733;-0.384551;0.652733;,
  -0.000000;-0.384551;0.923104;,
  -0.652733;-0.384551;0.652733;,
  -0.923104;-0.384550;0.000000;,
  -0.652733;-0.384551;-0.652733;,
  -0.000001;-0.384552;-0.923103;,
  0.652732;-0.384553;-0.652733;,
  0.923104;-0.384551;0.000001;,
  0.707107;0.000000;0.707107;,
  -0.000000;0.000000;1.000000;,
  -0.707107;0.000000;0.707107;,
  -1.000000;-0.000000;0.000001;,
  -0.707107;0.000000;-0.707107;,
  -0.000001;0.000000;-1.000000;,
  0.707106;0.000000;-0.707107;,
  1.000000;0.000000;0.000001;,
  0.652732;0.384552;0.652733;,
  -0.000000;0.384553;0.923103;,
  -0.652732;0.384552;0.652733;,
  -0.923104;0.384551;0.000000;,
  -0.652733;0.384552;-0.652733;,
  -0.000001;0.384553;-0.923103;,
  0.652732;0.384554;-0.652732;,
  0.923103;0.384552;0.000001;,
  0.498493;0.709230;0.498495;,
  -0.000000;0.709231;0.704977;,
  -0.498493;0.709231;0.498494;,
  -0.704976;0.709231;0.000000;,
  -0.498493;0.709231;-0.498493;,
  -0.000000;0.709232;-0.704975;,
  0.498493;0.709231;-0.498493;,
  0.704976;0.709231;0.000000;,
  0.269132;0.924735;0.269133;,
  -0.000000;0.924735;0.380611;,
  -0.269133;0.924735;0.269133;,
  -0.380611;0.924735;0.000000;,
  -0.269132;0.924735;-0.269133;,
  -0.000000;0.924735;-0.380610;,
  0.269132;0.924736;-0.269132;,
  0.380610;0.924736;0.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;1.000000;-0.000000;,
  0.269131;-0.924736;0.269131;,
  0.000000;-0.924736;0.380609;,
  -0.269130;-0.924736;0.269131;,
  -0.380608;-0.924737;0.000000;,
  -0.269131;-0.924736;-0.269131;,
  0.000000;-0.924736;-0.380608;,
  0.269131;-0.924736;-0.269131;,
  0.380609;-0.924736;0.000000;,
  0.498494;-0.709230;0.498495;,
  0.000000;-0.709230;0.704977;,
  -0.498494;-0.709230;0.498495;,
  -0.704977;-0.709230;0.000000;,
  -0.498494;-0.709230;-0.498494;,
  -0.000000;-0.709231;-0.704976;,
  0.498494;-0.709231;-0.498494;,
  0.704978;-0.709230;0.000000;,
  0.652733;-0.384550;0.652733;,
  0.000000;-0.384551;0.923104;,
  -0.652733;-0.384551;0.652733;,
  -0.923104;-0.384550;0.000000;,
  -0.652733;-0.384551;-0.652733;,
  -0.000001;-0.384552;-0.923103;,
  0.652733;-0.384552;-0.652733;,
  0.923104;-0.384550;0.000001;,
  0.707107;-0.000000;0.707107;,
  0.000000;-0.000000;1.000000;,
  -0.707107;-0.000000;0.707107;,
  -1.000000;-0.000000;0.000001;,
  -0.707107;0.000000;-0.707107;,
  -0.000001;0.000000;-1.000000;,
  0.707107;0.000000;-0.707107;,
  1.000000;-0.000000;0.000001;,
  0.652733;0.384551;0.652733;,
  0.000000;0.384552;0.923103;,
  -0.652732;0.384552;0.652733;,
  -0.923104;0.384551;0.000000;,
  -0.652733;0.384552;-0.652733;,
  -0.000001;0.384553;-0.923103;,
  0.652732;0.384553;-0.652732;,
  0.923104;0.384551;0.000001;,
  0.498493;0.709231;0.498494;,
  0.000000;0.709230;0.704977;,
  -0.498493;0.709231;0.498494;,
  -0.704977;0.709231;0.000000;,
  -0.498493;0.709231;-0.498494;,
  -0.000000;0.709232;-0.704975;,
  0.498493;0.709232;-0.498493;,
  0.704976;0.709231;0.000000;,
  0.269132;0.924735;0.269133;,
  0.000000;0.924735;0.380611;,
  -0.269132;0.924735;0.269133;,
  -0.380610;0.924736;0.000000;,
  -0.269132;0.924735;-0.269132;,
  0.000000;0.924735;-0.380610;,
  0.269132;0.924735;-0.269132;,
  0.380610;0.924735;0.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-0.000000;1.000000;,
  0.269131;-0.924736;0.269131;,
  0.000000;-0.924736;0.380609;,
  -0.269131;-0.924736;0.269131;,
  -0.380608;-0.924736;-0.000000;,
  -0.269131;-0.924736;-0.269132;,
  -0.000000;-0.924736;-0.380609;,
  0.269131;-0.924736;-0.269131;,
  0.380609;-0.924736;-0.000000;,
  0.498494;-0.709230;0.498494;,
  -0.000000;-0.709230;0.704977;,
  -0.498494;-0.709230;0.498495;,
  -0.704978;-0.709230;-0.000000;,
  -0.498494;-0.709230;-0.498495;,
  -0.000000;-0.709230;-0.704978;,
  0.498494;-0.709230;-0.498495;,
  0.704978;-0.709230;-0.000000;,
  0.652733;-0.384550;0.652733;,
  0.000000;-0.384551;0.923104;,
  -0.652733;-0.384551;0.652733;,
  -0.923104;-0.384550;-0.000000;,
  -0.652733;-0.384551;-0.652733;,
  0.000000;-0.384551;-0.923104;,
  0.652733;-0.384550;-0.652733;,
  0.923104;-0.384549;-0.000000;,
  0.707107;-0.000000;0.707107;,
  0.000000;0.000000;1.000000;,
  -0.707107;0.000000;0.707107;,
  -1.000000;-0.000000;-0.000001;,
  -0.707107;-0.000000;-0.707107;,
  0.000000;-0.000000;-1.000000;,
  0.707107;-0.000000;-0.707107;,
  1.000000;-0.000000;-0.000000;,
  0.652733;0.384552;0.652733;,
  0.000000;0.384552;0.923103;,
  -0.652733;0.384552;0.652733;,
  -0.923104;0.384552;-0.000000;,
  -0.652732;0.384552;-0.652733;,
  0.000000;0.384553;-0.923103;,
  0.652733;0.384551;-0.652733;,
  0.923104;0.384551;-0.000000;,
  0.498494;0.709231;0.498493;,
  0.000000;0.709231;0.704976;,
  -0.498493;0.709231;0.498494;,
  -0.704977;0.709231;-0.000000;,
  -0.498493;0.709231;-0.498495;,
  0.000000;0.709230;-0.704977;,
  0.498493;0.709231;-0.498494;,
  0.704977;0.709230;-0.000000;,
  0.269133;0.924735;0.269133;,
  0.000000;0.924735;0.380611;,
  -0.269132;0.924735;0.269133;,
  -0.380610;0.924736;-0.000000;,
  -0.269132;0.924735;-0.269133;,
  0.000000;0.924735;-0.380611;,
  0.269132;0.924735;-0.269133;,
  0.380611;0.924735;-0.000000;,
  0.000000;-1.000000;-0.000000;,
  0.000000;1.000000;-0.000000;,
  0.269131;-0.924736;0.269131;,
  -0.000000;-0.924736;0.380609;,
  -0.269132;-0.924736;0.269131;,
  -0.380609;-0.924736;-0.000000;,
  -0.269131;-0.924736;-0.269132;,
  -0.000000;-0.924736;-0.380609;,
  0.269131;-0.924736;-0.269132;,
  0.380608;-0.924736;-0.000000;,
  0.498494;-0.709230;0.498495;,
  -0.000000;-0.709230;0.704977;,
  -0.498494;-0.709230;0.498494;,
  -0.704977;-0.709230;-0.000000;,
  -0.498494;-0.709230;-0.498495;,
  -0.000000;-0.709230;-0.704977;,
  0.498494;-0.709230;-0.498495;,
  0.704977;-0.709230;-0.000000;,
  0.652733;-0.384551;0.652733;,
  -0.000000;-0.384551;0.923104;,
  -0.652733;-0.384551;0.652733;,
  -0.923104;-0.384550;-0.000000;,
  -0.652733;-0.384551;-0.652733;,
  -0.000000;-0.384551;-0.923104;,
  0.652733;-0.384551;-0.652733;,
  0.923104;-0.384551;-0.000000;,
  0.707107;-0.000000;0.707107;,
  -0.000000;0.000000;1.000000;,
  -0.707107;0.000000;0.707107;,
  -1.000000;-0.000000;-0.000001;,
  -0.707107;0.000000;-0.707107;,
  -0.000000;0.000000;-1.000000;,
  0.707107;0.000000;-0.707107;,
  1.000000;-0.000000;-0.000001;,
  0.652732;0.384552;0.652733;,
  -0.000000;0.384552;0.923103;,
  -0.652733;0.384552;0.652733;,
  -0.923104;0.384551;-0.000000;,
  -0.652732;0.384552;-0.652733;,
  -0.000000;0.384553;-0.923103;,
  0.652732;0.384552;-0.652733;,
  0.923103;0.384552;-0.000000;,
  0.498493;0.709231;0.498494;,
  -0.000000;0.709231;0.704976;,
  -0.498493;0.709231;0.498494;,
  -0.704976;0.709231;-0.000000;,
  -0.498493;0.709231;-0.498494;,
  -0.000000;0.709231;-0.704977;,
  0.498493;0.709231;-0.498495;,
  0.704976;0.709231;-0.000000;,
  0.269132;0.924735;0.269133;,
  -0.000000;0.924735;0.380611;,
  -0.269133;0.924735;0.269133;,
  -0.380611;0.924735;-0.000000;,
  -0.269133;0.924735;-0.269133;,
  -0.000000;0.924735;-0.380611;,
  0.269132;0.924735;-0.269133;,
  0.380610;0.924736;-0.000000;,
  0.000000;-1.000000;-0.000000;,
  1.000000;0.000000;0.000000;,
  -1.000000;0.000000;0.000000;;
  262;
  4;0,8,9,1;,
  4;1,9,10,2;,
  4;2,10,11,3;,
  4;3,11,12,4;,
  4;4,12,13,5;,
  4;5,13,14,6;,
  4;6,14,15,7;,
  4;7,15,8,0;,
  4;8,16,17,9;,
  4;9,17,18,10;,
  4;10,18,19,11;,
  4;11,19,20,12;,
  4;12,20,21,13;,
  4;13,21,22,14;,
  4;14,22,23,15;,
  4;15,23,16,8;,
  4;16,24,25,17;,
  4;17,25,26,18;,
  4;18,26,27,19;,
  4;19,27,28,20;,
  4;20,28,29,21;,
  4;21,29,30,22;,
  4;22,30,31,23;,
  4;23,31,24,16;,
  4;24,32,33,25;,
  4;25,33,34,26;,
  4;26,34,35,27;,
  4;27,35,36,28;,
  4;28,36,37,29;,
  4;29,37,38,30;,
  4;30,38,39,31;,
  4;31,39,32,24;,
  4;32,40,41,33;,
  4;33,41,42,34;,
  4;34,42,43,35;,
  4;35,43,44,36;,
  4;36,44,45,37;,
  4;37,45,46,38;,
  4;38,46,47,39;,
  4;39,47,40,32;,
  4;40,48,49,41;,
  4;41,49,50,42;,
  4;42,50,51,43;,
  4;43,51,52,44;,
  4;44,52,53,45;,
  4;45,53,54,46;,
  4;46,54,55,47;,
  4;47,55,48,40;,
  3;1,56,0;,
  3;2,56,1;,
  3;3,56,2;,
  3;4,56,3;,
  3;5,56,4;,
  3;6,56,5;,
  3;7,56,6;,
  3;0,56,7;,
  3;48,57,49;,
  3;49,57,50;,
  3;50,57,51;,
  3;51,57,52;,
  3;52,57,53;,
  3;53,57,54;,
  3;54,57,55;,
  3;55,57,48;,
  4;58,66,67,59;,
  4;59,67,68,60;,
  4;60,68,69,61;,
  4;61,69,70,62;,
  4;62,70,71,63;,
  4;63,71,72,64;,
  4;64,72,73,65;,
  4;65,73,66,58;,
  4;66,74,75,67;,
  4;67,75,76,68;,
  4;68,76,77,69;,
  4;69,77,78,70;,
  4;70,78,79,71;,
  4;71,79,80,72;,
  4;72,80,81,73;,
  4;73,81,74,66;,
  4;74,82,83,75;,
  4;75,83,84,76;,
  4;76,84,85,77;,
  4;77,85,86,78;,
  4;78,86,87,79;,
  4;79,87,88,80;,
  4;80,88,89,81;,
  4;81,89,82,74;,
  4;82,90,91,83;,
  4;83,91,92,84;,
  4;84,92,93,85;,
  4;85,93,94,86;,
  4;86,94,95,87;,
  4;87,95,96,88;,
  4;88,96,97,89;,
  4;89,97,90,82;,
  4;90,98,99,91;,
  4;91,99,100,92;,
  4;92,100,101,93;,
  4;93,101,102,94;,
  4;94,102,103,95;,
  4;95,103,104,96;,
  4;96,104,105,97;,
  4;97,105,98,90;,
  4;98,106,107,99;,
  4;99,107,108,100;,
  4;100,108,109,101;,
  4;101,109,110,102;,
  4;102,110,111,103;,
  4;103,111,112,104;,
  4;104,112,113,105;,
  4;105,113,106,98;,
  3;59,56,58;,
  3;60,56,59;,
  3;61,56,60;,
  3;62,56,61;,
  3;63,56,62;,
  3;64,56,63;,
  3;65,56,64;,
  3;58,56,65;,
  3;106,57,107;,
  3;107,57,108;,
  3;108,57,109;,
  3;109,57,110;,
  3;110,57,111;,
  3;111,57,112;,
  3;112,57,113;,
  3;113,57,106;,
  4;114,114,114,114;,
  4;115,115,115,115;,
  4;116,116,116,116;,
  4;231,231,231,231;,
  4;232,232,232,232;,
  4;233,233,233,233;,
  4;117,125,126,118;,
  4;118,126,127,119;,
  4;119,127,128,120;,
  4;120,128,129,121;,
  4;121,129,130,122;,
  4;122,130,131,123;,
  4;123,131,132,124;,
  4;124,132,125,117;,
  4;125,133,134,126;,
  4;126,134,135,127;,
  4;127,135,136,128;,
  4;128,136,137,129;,
  4;129,137,138,130;,
  4;130,138,139,131;,
  4;131,139,140,132;,
  4;132,140,133,125;,
  4;133,141,142,134;,
  4;134,142,143,135;,
  4;135,143,144,136;,
  4;136,144,145,137;,
  4;137,145,146,138;,
  4;138,146,147,139;,
  4;139,147,148,140;,
  4;140,148,141,133;,
  4;141,149,150,142;,
  4;142,150,151,143;,
  4;143,151,152,144;,
  4;144,152,153,145;,
  4;145,153,154,146;,
  4;146,154,155,147;,
  4;147,155,156,148;,
  4;148,156,149,141;,
  4;149,157,158,150;,
  4;150,158,159,151;,
  4;151,159,160,152;,
  4;152,160,161,153;,
  4;153,161,162,154;,
  4;154,162,163,155;,
  4;155,163,164,156;,
  4;156,164,157,149;,
  4;157,165,166,158;,
  4;158,166,167,159;,
  4;159,167,168,160;,
  4;160,168,169,161;,
  4;161,169,170,162;,
  4;162,170,171,163;,
  4;163,171,172,164;,
  4;164,172,165,157;,
  3;118,173,117;,
  3;119,173,118;,
  3;120,173,119;,
  3;121,173,120;,
  3;122,173,121;,
  3;123,173,122;,
  3;124,173,123;,
  3;117,173,124;,
  3;165,174,166;,
  3;166,174,167;,
  3;167,174,168;,
  3;168,174,169;,
  3;169,174,170;,
  3;170,174,171;,
  3;171,174,172;,
  3;172,174,165;,
  4;175,183,184,176;,
  4;176,184,185,177;,
  4;177,185,186,178;,
  4;178,186,187,179;,
  4;179,187,188,180;,
  4;180,188,189,181;,
  4;181,189,190,182;,
  4;182,190,183,175;,
  4;183,191,192,184;,
  4;184,192,193,185;,
  4;185,193,194,186;,
  4;186,194,195,187;,
  4;187,195,196,188;,
  4;188,196,197,189;,
  4;189,197,198,190;,
  4;190,198,191,183;,
  4;191,199,200,192;,
  4;192,200,201,193;,
  4;193,201,202,194;,
  4;194,202,203,195;,
  4;195,203,204,196;,
  4;196,204,205,197;,
  4;197,205,206,198;,
  4;198,206,199,191;,
  4;199,207,208,200;,
  4;200,208,209,201;,
  4;201,209,210,202;,
  4;202,210,211,203;,
  4;203,211,212,204;,
  4;204,212,213,205;,
  4;205,213,214,206;,
  4;206,214,207,199;,
  4;207,215,216,208;,
  4;208,216,217,209;,
  4;209,217,218,210;,
  4;210,218,219,211;,
  4;211,219,220,212;,
  4;212,220,221,213;,
  4;213,221,222,214;,
  4;214,222,215,207;,
  4;215,223,224,216;,
  4;216,224,225,217;,
  4;217,225,226,218;,
  4;218,226,227,219;,
  4;219,227,228,220;,
  4;220,228,229,221;,
  4;221,229,230,222;,
  4;222,230,223,215;,
  3;176,173,175;,
  3;177,173,176;,
  3;178,173,177;,
  3;179,173,178;,
  3;180,173,179;,
  3;181,173,180;,
  3;182,173,181;,
  3;175,173,182;,
  3;223,174,224;,
  3;224,174,225;,
  3;225,174,226;,
  3;226,174,227;,
  3;227,174,228;,
  3;228,174,229;,
  3;229,174,230;,
  3;230,174,223;;
 }
 MeshTextureCoords {
  256;
  0.881170;0.243660;,
  0.901720;0.224240;,
  0.920270;0.224240;,
  0.891210;0.243660;,
  0.901720;0.224240;,
  0.881170;0.243660;,
  0.856940;0.224240;,
  0.856940;0.243660;,
  0.812150;0.224240;,
  0.832700;0.243660;,
  0.793600;0.224240;,
  0.822660;0.243660;,
  0.812150;0.224240;,
  0.832700;0.243660;,
  0.856940;0.224240;,
  0.856940;0.243660;,
  0.915450;0.195190;,
  0.939680;0.195190;,
  0.915450;0.195190;,
  0.856940;0.195190;,
  0.798420;0.195190;,
  0.774190;0.195190;,
  0.798420;0.195190;,
  0.856940;0.195190;,
  0.920270;0.160910;,
  0.946500;0.160910;,
  0.920270;0.160910;,
  0.856940;0.160910;,
  0.793600;0.160910;,
  0.767370;0.160910;,
  0.793600;0.160910;,
  0.856940;0.160910;,
  0.915450;0.126640;,
  0.939680;0.126640;,
  0.915450;0.126640;,
  0.856940;0.126640;,
  0.798420;0.126640;,
  0.774190;0.126640;,
  0.798420;0.126640;,
  0.856940;0.126640;,
  0.901720;0.097580;,
  0.920270;0.097580;,
  0.901720;0.097580;,
  0.856940;0.097580;,
  0.812150;0.097580;,
  0.793600;0.097580;,
  0.812150;0.097580;,
  0.856940;0.097580;,
  0.881170;0.078160;,
  0.891210;0.078160;,
  0.881170;0.078160;,
  0.856940;0.078160;,
  0.832700;0.078160;,
  0.822660;0.078160;,
  0.832700;0.078160;,
  0.856940;0.078160;,
  0.856940;0.250480;,
  0.856940;0.071350;,
  0.879250;0.248350;,
  0.900330;0.228430;,
  0.919360;0.228430;,
  0.889550;0.248350;,
  0.900330;0.228430;,
  0.879250;0.248350;,
  0.854390;0.228430;,
  0.854390;0.248350;,
  0.808440;0.228430;,
  0.829520;0.248350;,
  0.789410;0.228430;,
  0.819220;0.248350;,
  0.808440;0.228430;,
  0.829520;0.248350;,
  0.854390;0.228430;,
  0.854390;0.248350;,
  0.914410;0.198620;,
  0.939280;0.198620;,
  0.914410;0.198620;,
  0.854390;0.198620;,
  0.794360;0.198620;,
  0.769500;0.198620;,
  0.794360;0.198620;,
  0.854390;0.198620;,
  0.919360;0.163460;,
  0.946270;0.163460;,
  0.919360;0.163460;,
  0.854390;0.163460;,
  0.789410;0.163460;,
  0.762500;0.163460;,
  0.789410;0.163460;,
  0.854390;0.163460;,
  0.914410;0.128300;,
  0.939280;0.128300;,
  0.914410;0.128300;,
  0.854390;0.128300;,
  0.794360;0.128300;,
  0.769500;0.128300;,
  0.794360;0.128300;,
  0.854390;0.128300;,
  0.900330;0.098490;,
  0.919360;0.098490;,
  0.900330;0.098490;,
  0.854390;0.098490;,
  0.808440;0.098490;,
  0.789410;0.098490;,
  0.808440;0.098490;,
  0.854390;0.098490;,
  0.879250;0.078570;,
  0.889550;0.078570;,
  0.879250;0.078570;,
  0.854390;0.078570;,
  0.829520;0.078570;,
  0.819220;0.078570;,
  0.829520;0.078570;,
  0.854390;0.078570;,
  0.854390;0.255340;,
  0.854390;0.071580;,
  0.636330;0.469680;,
  0.636330;0.396890;,
  0.962300;0.396890;,
  0.962300;0.469680;,
  0.663630;0.966620;,
  0.663630;0.590700;,
  0.978380;0.590700;,
  0.978380;0.966620;,
  0.636330;0.396890;,
  0.636330;0.469680;,
  0.962300;0.469680;,
  0.962300;0.396890;,
  0.663630;0.590700;,
  0.663630;0.966620;,
  0.978380;0.966620;,
  0.978380;0.590700;,
  0.635310;0.464460;,
  0.635310;0.402120;,
  0.958210;0.402120;,
  0.958210;0.464460;,
  0.958210;0.464460;,
  0.958210;0.402120;,
  0.635310;0.402120;,
  0.635310;0.464460;,
  0.875440;0.241490;,
  0.895450;0.222590;,
  0.913510;0.222590;,
  0.885210;0.241490;,
  0.895450;0.222590;,
  0.875440;0.241490;,
  0.851840;0.222590;,
  0.851840;0.241490;,
  0.808230;0.222590;,
  0.828230;0.241490;,
  0.790160;0.222590;,
  0.818460;0.241490;,
  0.808230;0.222590;,
  0.828230;0.241490;,
  0.851840;0.222590;,
  0.851840;0.241490;,
  0.908820;0.194290;,
  0.932420;0.194290;,
  0.908820;0.194290;,
  0.851840;0.194290;,
  0.794860;0.194290;,
  0.771250;0.194290;,
  0.794860;0.194290;,
  0.851840;0.194290;,
  0.913510;0.160910;,
  0.939060;0.160910;,
  0.913510;0.160910;,
  0.851840;0.160910;,
  0.790160;0.160910;,
  0.764610;0.160910;,
  0.790160;0.160910;,
  0.851840;0.160910;,
  0.908820;0.127530;,
  0.932420;0.127530;,
  0.908820;0.127530;,
  0.851840;0.127530;,
  0.794860;0.127530;,
  0.771250;0.127530;,
  0.794860;0.127530;,
  0.851840;0.127530;,
  0.895450;0.099240;,
  0.913510;0.099240;,
  0.895450;0.099240;,
  0.851840;0.099240;,
  0.808230;0.099240;,
  0.790160;0.099240;,
  0.808230;0.099240;,
  0.851840;0.099240;,
  0.875440;0.080330;,
  0.885210;0.080330;,
  0.875440;0.080330;,
  0.851840;0.080330;,
  0.828230;0.080330;,
  0.818460;0.080330;,
  0.828230;0.080330;,
  0.851840;0.080330;,
  0.851840;0.248130;,
  0.851840;0.073690;,
  0.874780;0.247940;,
  0.896390;0.227520;,
  0.915900;0.227520;,
  0.885340;0.247940;,
  0.896390;0.227520;,
  0.874780;0.247940;,
  0.849290;0.227520;,
  0.849290;0.247940;,
  0.802190;0.227520;,
  0.823800;0.247940;,
  0.782680;0.227520;,
  0.813240;0.247940;,
  0.802190;0.227520;,
  0.823800;0.247940;,
  0.849290;0.227520;,
  0.849290;0.247940;,
  0.910830;0.196960;,
  0.936320;0.196960;,
  0.910830;0.196960;,
  0.849290;0.196960;,
  0.787750;0.196960;,
  0.762260;0.196960;,
  0.787750;0.196960;,
  0.849290;0.196960;,
  0.915900;0.160910;,
  0.943490;0.160910;,
  0.915900;0.160910;,
  0.849290;0.160910;,
  0.782680;0.160910;,
  0.755080;0.160910;,
  0.782680;0.160910;,
  0.849290;0.160910;,
  0.910830;0.124860;,
  0.936320;0.124860;,
  0.910830;0.124860;,
  0.849290;0.124860;,
  0.787750;0.124860;,
  0.762260;0.124860;,
  0.787750;0.124860;,
  0.849290;0.124860;,
  0.896390;0.094300;,
  0.915900;0.094300;,
  0.896390;0.094300;,
  0.849290;0.094300;,
  0.802190;0.094300;,
  0.782680;0.094300;,
  0.802190;0.094300;,
  0.849290;0.094300;,
  0.874780;0.073880;,
  0.885340;0.073880;,
  0.874780;0.073880;,
  0.849290;0.073880;,
  0.823800;0.073880;,
  0.813240;0.073880;,
  0.823800;0.073880;,
  0.849290;0.073880;,
  0.849290;0.255110;,
  0.849290;0.066710;;
 }
}