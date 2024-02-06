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
 202;
 4.02817;-7.96626;5.27909;,
 7.90047;-5.79835;9.15139;,
 -0.53953;-5.79835;12.64735;,
 -0.53953;-7.96626;7.17109;,
 -8.97953;-5.79835;9.15139;,
 -5.10723;-7.96626;5.27909;,
 -12.47550;-5.79835;0.71139;,
 -6.99923;-7.96626;0.71139;,
 -8.97953;-5.79835;-7.72861;,
 -5.10723;-7.96626;-3.85631;,
 -0.53953;-5.79835;-11.22457;,
 -0.53953;-7.96626;-5.74830;,
 7.90047;-5.79835;-7.72861;,
 4.02817;-7.96626;-3.85631;,
 11.39644;-5.79835;0.71139;,
 5.92017;-7.96626;0.71139;,
 10.48786;-2.55387;11.73879;,
 -0.53953;-2.55387;16.30649;,
 -11.56693;-2.55387;11.73879;,
 -16.13462;-2.55387;0.71139;,
 -11.56693;-2.55387;-10.31600;,
 -0.53953;-2.55387;-14.88370;,
 10.48786;-2.55387;-10.31600;,
 15.05556;-2.55387;0.71139;,
 11.39644;1.27328;12.64735;,
 -0.53953;1.27328;17.59139;,
 -12.47550;1.27328;12.64735;,
 -17.41954;1.27328;0.71139;,
 -12.47550;1.27328;-11.22457;,
 -0.53953;1.27328;-16.16862;,
 11.39644;1.27328;-11.22459;,
 16.34048;1.27328;0.71139;,
 10.48786;5.10042;11.73879;,
 -0.53953;5.10042;16.30649;,
 -11.56693;5.10042;11.73879;,
 -16.13462;5.10042;0.71139;,
 -11.56693;5.10042;-10.31600;,
 -0.53953;5.10042;-14.88370;,
 10.48786;5.10042;-10.31600;,
 15.05556;5.10042;0.71139;,
 7.90047;8.34490;9.15139;,
 -0.53953;8.34490;12.64735;,
 -8.97953;8.34490;9.15139;,
 -12.47550;8.34490;0.71139;,
 -8.97953;8.34490;-7.72861;,
 -0.53953;8.34490;-11.22457;,
 7.90047;8.34490;-7.72861;,
 11.39644;8.34490;0.71139;,
 4.02817;10.51281;5.27909;,
 -0.53953;10.51281;7.17109;,
 -5.10723;10.51281;5.27909;,
 -6.99923;10.51281;0.71139;,
 -5.10723;10.51281;-3.85631;,
 -0.53953;10.51281;-5.74830;,
 4.02817;10.51281;-3.85631;,
 5.92017;10.51281;0.71139;,
 -0.53953;-8.72752;0.71139;,
 -0.53953;11.27407;0.71139;,
 -35.24812;18.02666;-58.23503;,
 -35.49317;33.69566;-46.23693;,
 34.41411;33.69566;-46.23693;,
 35.37637;18.02666;-58.23503;,
 -35.49317;33.69566;-46.23693;,
 -35.49317;33.69566;59.05934;,
 34.41411;33.69566;59.05934;,
 34.41411;33.69566;-46.23693;,
 -35.49317;33.69566;59.05934;,
 -35.24812;18.02666;70.30793;,
 35.37637;18.02666;70.30793;,
 34.41411;33.69566;59.05934;,
 -35.24812;5.56774;70.30793;,
 -35.24812;5.56774;-58.23503;,
 35.37637;5.56774;-58.23503;,
 35.37637;5.56774;70.30793;,
 35.37637;18.02666;-58.23503;,
 34.41411;33.69566;-46.23693;,
 34.41411;33.69566;59.05934;,
 35.37637;18.02666;70.30793;,
 -35.24812;18.02666;70.30793;,
 -35.49317;33.69566;59.05934;,
 -35.49317;33.69566;-46.23693;,
 -35.24812;18.02666;-58.23503;,
 -35.24812;5.56774;-58.23503;,
 35.37637;5.56774;-58.23503;,
 35.37637;5.56774;-58.23503;,
 35.37637;5.56774;70.30793;,
 -35.24812;5.56774;70.30793;,
 35.37637;5.56774;70.30793;,
 -35.24812;5.56774;70.30793;,
 -35.24812;5.56774;-58.23503;,
 -34.01344;23.39244;-37.02197;,
 -50.49401;23.39244;-37.02197;,
 -50.49401;27.52616;-35.47940;,
 -34.01344;27.52616;-35.47940;,
 -34.01344;30.84417;-24.36969;,
 -50.49401;30.84417;-24.36969;,
 -50.49401;30.84417;68.09747;,
 -34.01344;30.84417;68.09747;,
 -34.01344;30.84417;68.09747;,
 -50.49401;30.84417;68.09747;,
 -50.49401;18.49868;68.09747;,
 -34.01344;18.49868;68.09747;,
 -34.01344;7.65363;68.09747;,
 -50.49401;7.65363;68.09747;,
 -50.49401;7.65363;-24.36969;,
 -34.01344;7.65363;-24.36969;,
 -50.49401;30.84417;-24.36969;,
 -50.49401;18.49868;-24.36969;,
 -50.49401;18.49868;68.09747;,
 -50.49401;30.84417;68.09747;,
 -34.01344;18.49868;68.09747;,
 -34.01344;18.49868;-24.36969;,
 -34.01344;30.84417;-24.36969;,
 -34.01344;30.84417;68.09747;,
 -34.01344;27.52616;-35.47940;,
 -50.49401;27.52616;-35.47940;,
 -50.49401;23.39244;-37.02197;,
 -50.49401;27.52616;-35.47940;,
 -34.01344;7.65363;-24.36969;,
 -50.49401;7.65363;-24.36969;,
 -50.49401;20.01107;-35.56438;,
 -34.01344;20.01107;-35.56438;,
 -34.01344;30.84417;-24.36969;,
 -34.01344;18.49868;-24.36969;,
 -34.01344;23.39244;-37.02197;,
 -34.01344;27.52616;-35.47940;,
 -34.01344;20.01107;-35.56438;,
 -50.49401;20.01107;-35.56438;,
 -50.49401;20.01107;-35.56438;,
 -50.49401;7.65363;-24.36969;,
 -50.49401;7.65363;68.09747;,
 -50.49401;7.65363;68.09747;,
 -34.01344;7.65363;68.09747;,
 -34.01344;7.65363;68.09747;,
 -34.01344;7.65363;-24.36969;,
 -34.01344;18.49868;68.09747;,
 -34.01344;20.01107;-35.56438;,
 3.85738;32.33610;42.92508;,
 3.85738;55.81674;42.92508;,
 -3.33275;55.81674;45.90333;,
 -3.33275;32.33610;45.90333;,
 -10.52288;55.81674;42.92508;,
 -10.52288;32.33610;42.92508;,
 -13.50113;55.81674;35.73493;,
 -13.50113;32.33610;35.73493;,
 -10.52288;55.81674;28.54480;,
 -10.52288;32.33610;28.54480;,
 -3.33275;55.81674;25.56655;,
 -3.33275;32.33610;25.56655;,
 3.85738;55.81674;28.54480;,
 3.85738;32.33610;28.54480;,
 6.83563;55.81674;35.73493;,
 6.83563;32.33610;35.73493;,
 -3.33275;32.33610;35.73493;,
 -3.33275;55.81674;35.73493;,
 34.01344;23.39244;-37.02197;,
 34.01344;27.52616;-35.47940;,
 50.49401;27.52616;-35.47940;,
 50.49401;23.39244;-37.02197;,
 34.01344;30.84417;-24.36969;,
 34.01344;30.84417;68.09747;,
 50.49401;30.84417;68.09747;,
 50.49401;30.84417;-24.36969;,
 34.01344;30.84417;68.09747;,
 34.01344;18.49868;68.09747;,
 50.49401;18.49868;68.09747;,
 50.49401;30.84417;68.09747;,
 34.01344;7.65363;68.09747;,
 34.01344;7.65363;-24.36969;,
 50.49401;7.65363;-24.36969;,
 50.49401;7.65363;68.09747;,
 50.49401;30.84417;-24.36969;,
 50.49401;30.84417;68.09747;,
 50.49401;18.49868;68.09747;,
 50.49401;18.49868;-24.36969;,
 34.01344;18.49868;68.09747;,
 34.01344;30.84417;68.09747;,
 34.01344;30.84417;-24.36969;,
 34.01344;18.49868;-24.36969;,
 34.01344;27.52616;-35.47940;,
 50.49401;27.52616;-35.47940;,
 50.49401;23.39244;-37.02197;,
 50.49401;27.52616;-35.47940;,
 34.01344;7.65363;-24.36969;,
 34.01344;20.01107;-35.56438;,
 50.49401;20.01107;-35.56438;,
 50.49401;7.65363;-24.36969;,
 34.01344;30.84417;-24.36969;,
 34.01344;27.52616;-35.47940;,
 34.01344;23.39244;-37.02197;,
 34.01344;18.49868;-24.36969;,
 34.01344;20.01107;-35.56438;,
 50.49401;20.01107;-35.56438;,
 50.49401;20.01107;-35.56438;,
 50.49401;7.65363;-24.36969;,
 50.49401;7.65363;68.09747;,
 34.01344;7.65363;68.09747;,
 50.49401;7.65363;68.09747;,
 34.01344;7.65363;68.09747;,
 34.01344;18.49868;68.09747;,
 34.01344;7.65363;-24.36969;,
 34.01344;20.01107;-35.56438;;
 
 130;
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
 4;62,63,64,65;,
 4;66,67,68,69;,
 4;70,71,72,73;,
 4;74,75,76,77;,
 4;78,79,80,81;,
 4;82,58,61,83;,
 4;84,74,77,85;,
 4;67,86,87,68;,
 4;88,78,81,89;,
 4;90,91,92,93;,
 4;94,95,96,97;,
 4;98,99,100,101;,
 4;102,103,104,105;,
 4;106,107,108,109;,
 4;110,111,112,113;,
 4;114,115,95,94;,
 4;116,107,106,117;,
 4;118,119,120,121;,
 4;122,123,124,125;,
 4;126,127,91,90;,
 4;128,129,107,116;,
 4;108,107,129,130;,
 4;101,100,131,132;,
 4;133,134,123,135;,
 4;124,123,134,136;,
 4;137,138,139,140;,
 4;140,139,141,142;,
 4;142,141,143,144;,
 4;144,143,145,146;,
 4;146,145,147,148;,
 4;148,147,149,150;,
 4;150,149,151,152;,
 4;152,151,138,137;,
 3;140,153,137;,
 3;142,153,140;,
 3;144,153,142;,
 3;146,153,144;,
 3;148,153,146;,
 3;150,153,148;,
 3;152,153,150;,
 3;137,153,152;,
 3;138,154,139;,
 3;139,154,141;,
 3;141,154,143;,
 3;143,154,145;,
 3;145,154,147;,
 3;147,154,149;,
 3;149,154,151;,
 3;151,154,138;,
 4;155,156,157,158;,
 4;159,160,161,162;,
 4;163,164,165,166;,
 4;167,168,169,170;,
 4;171,172,173,174;,
 4;175,176,177,178;,
 4;179,159,162,180;,
 4;181,182,171,174;,
 4;183,184,185,186;,
 4;187,188,189,190;,
 4;191,155,158,192;,
 4;193,181,174,194;,
 4;173,195,194,174;,
 4;164,196,197,165;,
 4;198,199,190,200;,
 4;189,201,200,190;;
 
 MeshMaterialList {
  3;
  130;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
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
  2,
  2,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  2,
  1,
  1,
  1,
  1,
  2,
  2;;
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "data\\TEXTURE\\MATERIAL\\4leg_small.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "data\\TEXTURE\\MATERIAL\\4leg_small.png";
   }
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  83;
  0.172509;-0.969784;0.172509;,
  -0.000000;-0.969784;0.243965;,
  -0.172509;-0.969784;0.172509;,
  -0.243965;-0.969784;-0.000000;,
  -0.172509;-0.969784;-0.172509;,
  0.000000;-0.969784;-0.243965;,
  0.172509;-0.969784;-0.172509;,
  0.243965;-0.969784;-0.000000;,
  0.368983;-0.853055;0.368983;,
  0.000000;-0.853055;0.521820;,
  -0.368983;-0.853055;0.368983;,
  -0.521821;-0.853055;-0.000000;,
  -0.368983;-0.853055;-0.368983;,
  0.000000;-0.853055;-0.521821;,
  0.368983;-0.853055;-0.368983;,
  0.521821;-0.853055;-0.000000;,
  0.587816;-0.555828;0.587816;,
  0.000000;-0.555827;0.831298;,
  -0.587816;-0.555828;0.587816;,
  -0.831297;-0.555828;-0.000000;,
  -0.587816;-0.555828;-0.587816;,
  -0.000000;-0.555829;-0.831297;,
  0.587815;-0.555829;-0.587815;,
  0.831297;-0.555829;0.000000;,
  0.707107;0.000000;0.707107;,
  0.000000;0.000000;1.000000;,
  -0.707107;0.000000;0.707107;,
  -1.000000;0.000000;-0.000000;,
  -0.707107;0.000000;-0.707107;,
  -0.000000;0.000000;-1.000000;,
  0.707107;0.000000;-0.707107;,
  1.000000;0.000000;0.000000;,
  0.587816;0.555828;0.587816;,
  0.000000;0.555828;0.831297;,
  -0.587816;0.555828;0.587816;,
  -0.831297;0.555828;-0.000000;,
  -0.587816;0.555829;-0.587816;,
  -0.000000;0.555829;-0.831297;,
  0.587815;0.555829;-0.587815;,
  0.831297;0.555829;0.000000;,
  0.368983;0.853055;0.368983;,
  0.000000;0.853055;0.521820;,
  -0.368983;0.853055;0.368983;,
  -0.521821;0.853055;-0.000000;,
  -0.368983;0.853055;-0.368983;,
  0.000000;0.853055;-0.521821;,
  0.368983;0.853055;-0.368983;,
  0.521821;0.853055;-0.000000;,
  0.172509;0.969784;0.172509;,
  0.000000;0.969784;0.243965;,
  -0.172509;0.969784;0.172509;,
  -0.243965;0.969784;-0.000000;,
  -0.172509;0.969784;-0.172509;,
  0.000000;0.969784;-0.243965;,
  0.172509;0.969784;-0.172509;,
  0.243965;0.969784;-0.000000;,
  0.000000;-1.000000;-0.000000;,
  0.000000;1.000000;-0.000000;,
  0.000000;-1.000000;-0.000000;,
  0.000000;0.896649;-0.442742;,
  0.000000;0.889712;0.456523;,
  0.000000;0.320961;-0.947092;,
  0.000000;0.306311;0.951931;,
  0.000000;-0.540922;-0.841073;,
  0.000000;0.730372;-0.683049;,
  0.000000;1.000000;0.000000;,
  0.000000;0.989490;-0.144604;,
  0.000000;-0.914161;-0.405352;,
  0.000000;-0.024914;-0.999690;,
  -1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  1.000000;0.000000;0.000000;,
  0.707107;0.000000;0.707106;,
  -0.707107;0.000000;0.707106;,
  -1.000000;0.000000;-0.000000;,
  -0.707107;0.000000;-0.707107;,
  0.000000;0.000000;-1.000000;,
  0.707107;0.000000;-0.707107;,
  1.000000;0.000000;-0.000000;,
  0.999530;0.030662;0.000000;,
  0.998120;0.061296;0.000000;,
  -0.999969;-0.007819;0.000000;,
  -0.999878;-0.015637;0.000000;;
  130;
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
  4;61,59,59,61;,
  4;59,60,60,59;,
  4;60,62,62,60;,
  4;58,58,58,58;,
  4;79,80,80,79;,
  4;81,82,82,81;,
  4;76,61,61,76;,
  4;71,79,79,71;,
  4;62,70,70,62;,
  4;69,81,81,69;,
  4;68,68,64,64;,
  4;66,66,65,65;,
  4;70,70,70,70;,
  4;58,58,67,67;,
  4;69,69,69,69;,
  4;71,71,71,71;,
  4;64,64,66,66;,
  4;69,69,69,69;,
  4;67,67,63,63;,
  4;71,71,71,71;,
  4;63,63,68,68;,
  4;69,69,69,69;,
  4;69,69,69,69;,
  4;70,70,70,70;,
  4;71,71,71,71;,
  4;71,71,71,71;,
  4;72,72,70,70;,
  4;70,70,73,73;,
  4;73,73,74,74;,
  4;74,74,75,75;,
  4;75,75,76,76;,
  4;76,76,77,77;,
  4;77,77,78,78;,
  4;78,78,72,72;,
  3;58,58,58;,
  3;58,58,58;,
  3;58,58,58;,
  3;58,58,58;,
  3;58,58,58;,
  3;58,58,58;,
  3;58,58,58;,
  3;58,58,58;,
  3;65,65,65;,
  3;65,65,65;,
  3;65,65,65;,
  3;65,65,65;,
  3;65,65,65;,
  3;65,65,65;,
  3;65,65,65;,
  3;65,65,65;,
  4;68,64,64,68;,
  4;66,65,65,66;,
  4;70,70,70,70;,
  4;58,67,67,58;,
  4;71,71,71,71;,
  4;69,69,69,69;,
  4;64,66,66,64;,
  4;71,71,71,71;,
  4;67,63,63,67;,
  4;69,69,69,69;,
  4;63,68,68,63;,
  4;71,71,71,71;,
  4;71,71,71,71;,
  4;70,70,70,70;,
  4;69,69,69,69;,
  4;69,69,69,69;;
 }
 MeshTextureCoords {
  202;
  0.878200;0.242230;,
  0.898400;0.223150;,
  0.916620;0.223150;,
  0.888070;0.242230;,
  0.898400;0.223150;,
  0.878200;0.242230;,
  0.854390;0.223150;,
  0.854390;0.242230;,
  0.810380;0.223150;,
  0.830570;0.242230;,
  0.792150;0.223150;,
  0.820700;0.242230;,
  0.810380;0.223150;,
  0.830570;0.242230;,
  0.854390;0.223150;,
  0.854390;0.242230;,
  0.911890;0.194590;,
  0.935700;0.194590;,
  0.911890;0.194590;,
  0.854390;0.194590;,
  0.796890;0.194590;,
  0.773070;0.194590;,
  0.796890;0.194590;,
  0.854390;0.194590;,
  0.916620;0.160910;,
  0.942400;0.160910;,
  0.916620;0.160910;,
  0.854390;0.160910;,
  0.792150;0.160910;,
  0.766370;0.160910;,
  0.792150;0.160910;,
  0.854390;0.160910;,
  0.911890;0.127230;,
  0.935700;0.127230;,
  0.911890;0.127230;,
  0.854390;0.127230;,
  0.796890;0.127230;,
  0.773070;0.127230;,
  0.796890;0.127230;,
  0.854390;0.127230;,
  0.898400;0.098670;,
  0.916620;0.098670;,
  0.898400;0.098670;,
  0.854390;0.098670;,
  0.810380;0.098670;,
  0.792150;0.098670;,
  0.810380;0.098670;,
  0.854390;0.098670;,
  0.878200;0.079590;,
  0.888070;0.079590;,
  0.878200;0.079590;,
  0.854390;0.079590;,
  0.830570;0.079590;,
  0.820700;0.079590;,
  0.830570;0.079590;,
  0.854390;0.079590;,
  0.854390;0.248930;,
  0.854390;0.072890;,
  0.031410;0.082000;,
  0.030470;0.020490;,
  0.297790;0.020490;,
  0.301470;0.082000;,
  0.034990;0.391740;,
  0.034990;0.143320;,
  0.283410;0.143320;,
  0.283410;0.391740;,
  0.029670;0.024810;,
  0.030600;0.081500;,
  0.297760;0.081500;,
  0.294120;0.024810;,
  0.038390;0.148980;,
  0.038390;0.395120;,
  0.284530;0.395120;,
  0.284530;0.148980;,
  0.324740;0.075770;,
  0.357880;0.031000;,
  0.648700;0.031000;,
  0.679770;0.075770;,
  0.679770;0.075770;,
  0.648700;0.031000;,
  0.357880;0.031000;,
  0.324740;0.075770;,
  0.031410;0.130900;,
  0.301470;0.130900;,
  0.324740;0.111360;,
  0.679770;0.111360;,
  0.030600;0.126580;,
  0.297760;0.126580;,
  0.679770;0.111360;,
  0.324740;0.111360;,
  0.362610;0.263220;,
  0.362210;0.339530;,
  0.391110;0.339850;,
  0.391510;0.263540;,
  0.373940;0.262380;,
  0.374940;0.339080;,
  0.670730;0.335240;,
  0.669740;0.258540;,
  0.459920;0.261960;,
  0.460460;0.337020;,
  0.397840;0.337200;,
  0.397310;0.262140;,
  0.340760;0.351890;,
  0.354120;0.267010;,
  0.673090;0.246260;,
  0.659730;0.331150;,
  0.359010;0.155760;,
  0.359010;0.202540;,
  0.692940;0.202540;,
  0.692940;0.155760;,
  0.693740;0.205410;,
  0.359270;0.205410;,
  0.359270;0.156110;,
  0.693740;0.156110;,
  0.338400;0.262840;,
  0.339400;0.339540;,
  0.313310;0.184000;,
  0.318880;0.168340;,
  0.340310;0.261110;,
  0.340430;0.337920;,
  0.392250;0.337730;,
  0.392120;0.260920;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  0.338970;0.262950;,
  0.338570;0.339260;,
  0.318580;0.196810;,
  0.359010;0.243640;,
  0.692940;0.243640;,
  0.342840;0.337360;,
  0.342310;0.262300;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  0.899700;0.231150;,
  0.899700;0.095770;,
  0.919530;0.095770;,
  0.919530;0.231150;,
  0.899700;0.095770;,
  0.899700;0.231150;,
  0.851840;0.095770;,
  0.851840;0.231150;,
  0.803970;0.095770;,
  0.803970;0.231150;,
  0.784140;0.095770;,
  0.784140;0.231150;,
  0.803970;0.095770;,
  0.803970;0.231150;,
  0.851840;0.095770;,
  0.851840;0.231150;,
  0.851840;0.231150;,
  0.851840;0.095770;,
  0.362610;0.263220;,
  0.391510;0.263540;,
  0.391110;0.339850;,
  0.362210;0.339530;,
  0.373940;0.262380;,
  0.669740;0.258540;,
  0.670730;0.335240;,
  0.374940;0.339080;,
  0.459920;0.261960;,
  0.397310;0.262140;,
  0.397840;0.337200;,
  0.460460;0.337020;,
  0.340760;0.351890;,
  0.659730;0.331150;,
  0.673090;0.246260;,
  0.354120;0.267010;,
  0.359010;0.155760;,
  0.692940;0.155760;,
  0.692940;0.202540;,
  0.359010;0.202540;,
  0.693740;0.205410;,
  0.693740;0.156110;,
  0.359270;0.156110;,
  0.359270;0.205410;,
  0.338400;0.262840;,
  0.339400;0.339540;,
  0.313310;0.184000;,
  0.318880;0.168340;,
  0.340310;0.261110;,
  0.392120;0.260920;,
  0.392250;0.337730;,
  0.340430;0.337920;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  0.338970;0.262950;,
  0.338570;0.339260;,
  0.318580;0.196810;,
  0.359010;0.243640;,
  0.692940;0.243640;,
  0.342310;0.262300;,
  0.342840;0.337360;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;1.000000;;
 }
}
