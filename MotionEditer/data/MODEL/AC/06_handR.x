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
 344;
 35.09289;-1.40591;-1.19605;,
 40.81704;-5.57156;-1.25419;,
 39.91355;-6.71393;-1.24501;,
 34.18940;-2.54827;-1.18687;,
 40.81704;-5.57156;-1.25419;,
 40.87738;-5.57156;4.68756;,
 39.97390;-6.71393;4.69673;,
 39.91355;-6.71393;-1.24501;,
 40.87738;-5.57156;4.68756;,
 35.15323;-1.40591;4.74569;,
 34.24975;-2.54827;4.75487;,
 39.97390;-6.71393;4.69673;,
 35.15323;-1.40591;4.74569;,
 35.09289;-1.40591;-1.19605;,
 34.18940;-2.54827;-1.18687;,
 34.24975;-2.54827;4.75487;,
 39.91355;-6.71393;-1.24501;,
 39.97390;-6.71393;4.69673;,
 35.15323;-1.40591;4.74569;,
 35.09289;-1.40591;-1.19605;,
 -2.53263;5.19083;2.50730;,
 -2.33730;-4.55780;2.50730;,
 0.16950;-4.50757;3.54586;,
 -0.02583;5.24106;3.54586;,
 2.67630;-4.45734;2.50730;,
 2.48097;5.29129;2.50730;,
 2.48097;5.29129;2.50730;,
 2.67630;-4.45734;2.50730;,
 3.71465;-4.43654;-0.00000;,
 3.51932;5.31210;0.00000;,
 2.67630;-4.45734;-2.50730;,
 2.48097;5.29129;-2.50730;,
 2.48097;5.29129;-2.50730;,
 2.67630;-4.45734;-2.50730;,
 0.16950;-4.50757;-3.54586;,
 -0.02583;5.24106;-3.54586;,
 -2.33730;-4.55780;-2.50730;,
 -2.53263;5.19083;-2.50730;,
 -2.53263;5.19083;-2.50730;,
 -2.33730;-4.55780;-2.50730;,
 -3.37565;-4.57861;0.00000;,
 -3.57098;5.17004;0.00000;,
 -2.33730;-4.55780;2.50730;,
 -2.53263;5.19083;2.50730;,
 -0.02583;5.24106;3.54586;,
 -0.02583;5.24106;0.00000;,
 -2.53263;5.19083;2.50730;,
 2.48097;5.29129;2.50730;,
 3.51932;5.31210;0.00000;,
 2.48097;5.29129;-2.50730;,
 -0.02583;5.24106;-3.54586;,
 -2.53263;5.19083;-2.50730;,
 -3.57098;5.17004;0.00000;,
 -2.33730;-4.55780;2.50730;,
 0.16950;-4.50757;-0.00000;,
 0.16950;-4.50757;3.54586;,
 2.67630;-4.45734;2.50730;,
 3.71465;-4.43654;-0.00000;,
 2.67630;-4.45734;-2.50730;,
 0.16950;-4.50757;-3.54586;,
 -2.33730;-4.55780;-2.50730;,
 -3.37565;-4.57861;0.00000;,
 -3.56332;1.42123;3.66204;,
 -3.51324;-1.07814;3.66204;,
 0.14807;-1.00478;5.17890;,
 0.09798;1.49459;5.17890;,
 3.80936;-0.93141;3.66204;,
 3.75929;1.56796;3.66204;,
 3.75929;1.56796;3.66204;,
 3.80936;-0.93141;3.66204;,
 5.32593;-0.90103;-0.00000;,
 5.27585;1.59834;0.00000;,
 3.80936;-0.93141;-3.66204;,
 3.75929;1.56796;-3.66204;,
 3.75929;1.56796;-3.66204;,
 3.80936;-0.93141;-3.66204;,
 0.14807;-1.00478;-5.17890;,
 0.09798;1.49459;-5.17890;,
 -3.51324;-1.07814;-3.66204;,
 -3.56332;1.42123;-3.66204;,
 -3.56332;1.42123;-3.66204;,
 -3.51324;-1.07814;-3.66204;,
 -5.02980;-1.10853;0.00000;,
 -5.07988;1.39084;0.00000;,
 -3.51324;-1.07814;3.66204;,
 -3.56332;1.42123;3.66204;,
 0.09798;1.49459;5.17890;,
 0.09798;1.49459;0.00000;,
 -3.56332;1.42123;3.66204;,
 3.75929;1.56796;3.66204;,
 5.27585;1.59834;0.00000;,
 3.75929;1.56796;-3.66204;,
 0.09798;1.49459;-5.17890;,
 -3.56332;1.42123;-3.66204;,
 -5.07988;1.39084;0.00000;,
 -3.51324;-1.07814;3.66204;,
 0.14807;-1.00478;-0.00000;,
 0.14807;-1.00478;5.17890;,
 3.80936;-0.93141;3.66204;,
 5.32593;-0.90103;-0.00000;,
 3.80936;-0.93141;-3.66204;,
 0.14807;-1.00478;-5.17890;,
 -3.51324;-1.07814;-3.66204;,
 -5.02980;-1.10853;0.00000;,
 29.38509;5.01162;5.05234;,
 25.71133;4.98556;5.05234;,
 25.74413;0.36350;6.90625;,
 29.41788;0.38957;6.90625;,
 25.77692;-4.25855;5.05234;,
 29.45067;-4.23249;5.05234;,
 29.45067;-4.23249;5.05234;,
 25.77692;-4.25855;5.05234;,
 25.79051;-6.17307;0.57658;,
 29.46425;-6.14701;0.57658;,
 25.77692;-4.25855;-3.89917;,
 29.45067;-4.23249;-3.89917;,
 29.45067;-4.23249;-3.89917;,
 25.77692;-4.25855;-3.89917;,
 25.74413;0.36350;-5.75309;,
 29.41788;0.38957;-5.75309;,
 25.71133;4.98556;-3.89917;,
 29.38509;5.01162;-3.89917;,
 29.38509;5.01162;-3.89917;,
 25.71133;4.98556;-3.89917;,
 25.69775;6.90008;0.57658;,
 29.37150;6.92614;0.57658;,
 25.71133;4.98556;5.05234;,
 29.38509;5.01162;5.05234;,
 29.41788;0.38957;6.90625;,
 29.41788;0.38957;0.57658;,
 29.38509;5.01162;5.05234;,
 29.45067;-4.23249;5.05234;,
 29.46425;-6.14701;0.57658;,
 29.45067;-4.23249;-3.89917;,
 29.41788;0.38957;-5.75309;,
 29.38509;5.01162;-3.89917;,
 29.37150;6.92614;0.57658;,
 25.71133;4.98556;5.05234;,
 25.74413;0.36350;0.57658;,
 25.74413;0.36350;6.90625;,
 25.77692;-4.25855;5.05234;,
 25.79051;-6.17307;0.57658;,
 25.77692;-4.25855;-3.89917;,
 25.74413;0.36350;-5.75309;,
 25.71133;4.98556;-3.89917;,
 25.69775;6.90008;0.57658;,
 41.49630;-0.40455;-5.32502;,
 29.44531;-0.49006;-5.20262;,
 29.42029;3.03722;-5.20236;,
 41.47128;3.12273;-5.32476;,
 29.44531;-0.49006;-5.20262;,
 29.55351;-0.49006;5.44998;,
 29.52848;3.03722;5.45024;,
 29.42029;3.03722;-5.20236;,
 29.55351;-0.49006;5.44998;,
 41.60449;-0.40455;5.32759;,
 41.57946;3.12273;5.32784;,
 29.52848;3.03722;5.45024;,
 41.60449;-0.40455;5.32759;,
 41.49630;-0.40455;-5.32502;,
 41.47128;3.12273;-5.32476;,
 41.57946;3.12273;5.32784;,
 41.47128;3.12273;-5.32476;,
 29.42029;3.03722;-5.20236;,
 29.52848;3.03722;5.45024;,
 41.57946;3.12273;5.32784;,
 41.60449;-0.40455;5.32759;,
 29.55351;-0.49006;5.44998;,
 29.44531;-0.49006;-5.20262;,
 41.49630;-0.40455;-5.32502;,
 9.49040;6.75139;3.31422;,
 2.25880;6.63374;3.34172;,
 2.32529;3.31518;6.69341;,
 9.55635;3.46016;6.63828;,
 9.55635;3.46016;6.63828;,
 2.32529;3.31518;6.69341;,
 2.39442;-0.13449;6.68436;,
 9.62547;0.01040;6.62931;,
 2.46354;-3.58416;6.69341;,
 9.69460;-3.43936;6.63828;,
 9.69460;-3.43936;6.63828;,
 2.46354;-3.58416;6.69341;,
 2.53004;-6.90274;3.34172;,
 9.76055;-6.73059;3.31422;,
 2.53051;-6.92613;-0.00092;,
 9.76101;-6.75379;-0.00088;,
 2.53009;-6.90500;-3.34355;,
 9.76059;-6.73284;-3.31597;,
 2.46354;-3.58416;-6.68177;,
 9.69460;-3.43936;-6.62668;,
 9.69460;-3.43936;-6.62668;,
 2.46354;-3.58416;-6.68177;,
 2.39442;-0.13449;-6.68619;,
 9.62547;0.01040;-6.63107;,
 2.32529;3.31518;-6.68177;,
 9.55635;3.46016;-6.62668;,
 9.55635;3.46016;-6.62668;,
 2.32529;3.31518;-6.68177;,
 2.25876;6.63601;-3.34355;,
 9.49035;6.75363;-3.31597;,
 2.25834;6.65715;-0.00092;,
 9.48993;6.77459;-0.00088;,
 27.28110;3.65696;3.10498;,
 27.34705;0.36549;0.00151;,
 27.25027;5.19545;1.55115;,
 27.34705;0.36549;3.10079;,
 27.41300;-2.92599;3.10498;,
 27.44383;-4.46447;1.55115;,
 27.44405;-4.47531;0.00151;,
 27.44385;-4.46552;-1.54813;,
 27.41300;-2.92599;-3.09572;,
 27.34705;0.36549;-3.09777;,
 27.28110;3.65696;-3.09572;,
 27.25025;5.19650;-1.54813;,
 27.25005;5.20629;0.00151;,
 2.25880;6.63374;3.34172;,
 2.39442;-0.13449;-0.00106;,
 2.32529;3.31518;6.69341;,
 2.39442;-0.13449;6.68436;,
 2.46354;-3.58416;6.69341;,
 2.53004;-6.90274;3.34172;,
 2.53051;-6.92613;-0.00092;,
 2.53009;-6.90500;-3.34355;,
 2.46354;-3.58416;-6.68177;,
 2.39442;-0.13449;-6.68619;,
 2.32529;3.31518;-6.68177;,
 2.25876;6.63601;-3.34355;,
 2.25834;6.65715;-0.00092;,
 13.77760;5.53850;2.15039;,
 13.82036;3.40428;4.30590;,
 13.82036;3.40428;4.30590;,
 13.88666;0.09578;4.30008;,
 13.95295;-3.21272;4.30590;,
 13.95295;-3.21272;4.30590;,
 13.99571;-5.34693;2.15039;,
 13.99602;-5.36198;0.00070;,
 13.99574;-5.34839;-2.14899;,
 13.95295;-3.21272;-4.29584;,
 13.95295;-3.21272;-4.29584;,
 13.88666;0.09578;-4.29868;,
 13.82036;3.40428;-4.29584;,
 13.82036;3.40428;-4.29584;,
 13.77757;5.53995;-2.14899;,
 13.77730;5.55354;0.00070;,
 27.25027;5.19545;1.55115;,
 27.28110;3.65696;3.10498;,
 27.28110;3.65696;3.10498;,
 27.34705;0.36549;3.10079;,
 27.41300;-2.92599;3.10498;,
 27.41300;-2.92599;3.10498;,
 27.44383;-4.46447;1.55115;,
 27.44405;-4.47531;0.00151;,
 27.44385;-4.46552;-1.54813;,
 27.41300;-2.92599;-3.09572;,
 27.41300;-2.92599;-3.09572;,
 27.34705;0.36549;-3.09777;,
 27.28110;3.65696;-3.09572;,
 27.28110;3.65696;-3.09572;,
 27.25025;5.19650;-1.54813;,
 27.25005;5.20629;0.00151;,
 39.97313;-4.94118;-1.24561;,
 43.16979;-1.45587;-1.27808;,
 44.24310;-2.44039;-1.28898;,
 41.04644;-5.92570;-1.25652;,
 43.16979;-1.45587;-1.27808;,
 43.23014;-1.45587;4.66366;,
 44.30344;-2.44039;4.65276;,
 44.24310;-2.44039;-1.28898;,
 43.23014;-1.45587;4.66366;,
 40.03348;-4.94118;4.69612;,
 41.10678;-5.92570;4.68522;,
 44.30344;-2.44039;4.65276;,
 40.03348;-4.94118;4.69612;,
 39.97313;-4.94118;-1.24561;,
 41.04644;-5.92570;-1.25652;,
 41.10678;-5.92570;4.68522;,
 41.04644;-5.92570;-1.25652;,
 41.10678;-5.92570;4.68522;,
 43.23014;-1.45587;4.66366;,
 43.16979;-1.45587;-1.27808;,
 41.65725;-3.32068;-4.91571;,
 34.86017;-6.82508;-4.99630;,
 34.09742;-5.34559;-4.99948;,
 40.89451;-1.84120;-4.91889;,
 34.86017;-6.82508;-4.99630;,
 34.82874;-6.83469;-1.92716;,
 34.06600;-5.35520;-1.93034;,
 34.09742;-5.34559;-4.99948;,
 34.82874;-6.83469;-1.92716;,
 41.62582;-3.33029;-1.84658;,
 40.86307;-1.85081;-1.84975;,
 34.06600;-5.35520;-1.93034;,
 41.62582;-3.33029;-1.84658;,
 41.65725;-3.32068;-4.91571;,
 40.89451;-1.84120;-4.91889;,
 40.86307;-1.85081;-1.84975;,
 40.89451;-1.84120;-4.91889;,
 34.09742;-5.34559;-4.99948;,
 34.06600;-5.35520;-1.93034;,
 40.86307;-1.85081;-1.84975;,
 41.62582;-3.33029;-1.84658;,
 34.82874;-6.83469;-1.92716;,
 34.86017;-6.82508;-4.99630;,
 41.65725;-3.32068;-4.91571;,
 42.95389;-2.59843;-1.27589;,
 39.90903;1.02025;-1.24496;,
 41.02340;1.95801;-1.25628;,
 44.06827;-1.66068;-1.28721;,
 39.90903;1.02025;-1.24496;,
 39.96938;1.02025;4.69678;,
 41.08374;1.95801;4.68546;,
 41.02340;1.95801;-1.25628;,
 39.96938;1.02025;4.69678;,
 43.01424;-2.59843;4.66585;,
 44.12862;-1.66068;4.65453;,
 41.08374;1.95801;4.68546;,
 43.01424;-2.59843;4.66585;,
 42.95389;-2.59843;-1.27589;,
 44.06827;-1.66068;-1.28721;,
 44.12862;-1.66068;4.65453;,
 41.02340;1.95801;-1.25628;,
 41.08374;1.95801;4.68546;,
 43.01424;-2.59843;4.66585;,
 42.95389;-2.59843;-1.27589;,
 34.64717;-6.35011;-4.84451;,
 30.15521;-0.16149;-4.94852;,
 31.50234;0.81590;-4.97313;,
 35.99431;-5.37272;-4.86913;,
 30.15521;-0.16149;-4.94852;,
 30.16742;-0.10107;-1.87982;,
 31.51455;0.87633;-1.90443;,
 31.50234;0.81590;-4.97313;,
 30.16742;-0.10107;-1.87982;,
 34.65937;-6.28969;-1.77582;,
 36.00651;-5.31230;-1.80043;,
 31.51455;0.87633;-1.90443;,
 34.65937;-6.28969;-1.77582;,
 34.64717;-6.35011;-4.84451;,
 35.99431;-5.37272;-4.86913;,
 36.00651;-5.31230;-1.80043;,
 31.50234;0.81590;-4.97313;,
 31.51455;0.87633;-1.90443;,
 34.65937;-6.28969;-1.77582;,
 34.64717;-6.35011;-4.84451;;
 
 168;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,9,10,11;,
 4;12,13,14,15;,
 4;14,16,17,15;,
 4;18,5,4,19;,
 4;20,21,22,23;,
 4;23,22,24,25;,
 4;26,27,28,29;,
 4;29,28,30,31;,
 4;32,33,34,35;,
 4;35,34,36,37;,
 4;38,39,40,41;,
 4;41,40,42,43;,
 3;44,45,46;,
 3;47,45,44;,
 3;48,45,47;,
 3;49,45,48;,
 3;50,45,49;,
 3;51,45,50;,
 3;52,45,51;,
 3;46,45,52;,
 3;53,54,55;,
 3;55,54,56;,
 3;56,54,57;,
 3;57,54,58;,
 3;58,54,59;,
 3;59,54,60;,
 3;60,54,61;,
 3;61,54,53;,
 4;62,63,64,65;,
 4;65,64,66,67;,
 4;68,69,70,71;,
 4;71,70,72,73;,
 4;74,75,76,77;,
 4;77,76,78,79;,
 4;80,81,82,83;,
 4;83,82,84,85;,
 3;86,87,88;,
 3;89,87,86;,
 3;90,87,89;,
 3;91,87,90;,
 3;92,87,91;,
 3;93,87,92;,
 3;94,87,93;,
 3;88,87,94;,
 3;95,96,97;,
 3;97,96,98;,
 3;98,96,99;,
 3;99,96,100;,
 3;100,96,101;,
 3;101,96,102;,
 3;102,96,103;,
 3;103,96,95;,
 4;104,105,106,107;,
 4;107,106,108,109;,
 4;110,111,112,113;,
 4;113,112,114,115;,
 4;116,117,118,119;,
 4;119,118,120,121;,
 4;122,123,124,125;,
 4;125,124,126,127;,
 3;128,129,130;,
 3;131,129,128;,
 3;132,129,131;,
 3;133,129,132;,
 3;134,129,133;,
 3;135,129,134;,
 3;136,129,135;,
 3;130,129,136;,
 3;137,138,139;,
 3;139,138,140;,
 3;140,138,141;,
 3;141,138,142;,
 3;142,138,143;,
 3;143,138,144;,
 3;144,138,145;,
 3;145,138,137;,
 4;146,147,148,149;,
 4;150,151,152,153;,
 4;154,155,156,157;,
 4;158,159,160,161;,
 4;162,163,164,165;,
 4;166,167,168,169;,
 4;170,171,172,173;,
 4;174,175,176,177;,
 4;177,176,178,179;,
 4;180,181,182,183;,
 4;183,182,184,185;,
 4;185,184,186,187;,
 4;187,186,188,189;,
 4;190,191,192,193;,
 4;193,192,194,195;,
 4;196,197,198,199;,
 4;199,198,200,201;,
 4;201,200,171,170;,
 3;202,203,204;,
 3;205,203,202;,
 3;206,203,205;,
 3;207,203,206;,
 3;208,203,207;,
 3;209,203,208;,
 3;210,203,209;,
 3;211,203,210;,
 3;212,203,211;,
 3;213,203,212;,
 3;214,203,213;,
 3;204,203,214;,
 3;215,216,217;,
 3;217,216,218;,
 3;218,216,219;,
 3;219,216,220;,
 3;220,216,221;,
 3;221,216,222;,
 3;222,216,223;,
 3;223,216,224;,
 3;224,216,225;,
 3;225,216,226;,
 3;226,216,227;,
 3;227,216,215;,
 4;228,170,173,229;,
 4;230,174,177,231;,
 4;231,177,179,232;,
 4;233,180,183,234;,
 4;234,183,185,235;,
 4;235,185,187,236;,
 4;236,187,189,237;,
 4;238,190,193,239;,
 4;239,193,195,240;,
 4;241,196,199,242;,
 4;242,199,201,243;,
 4;243,201,170,228;,
 4;244,228,229,245;,
 4;246,230,231,247;,
 4;247,231,232,248;,
 4;249,233,234,250;,
 4;250,234,235,251;,
 4;251,235,236,252;,
 4;252,236,237,253;,
 4;254,238,239,255;,
 4;255,239,240,256;,
 4;257,241,242,258;,
 4;258,242,243,259;,
 4;259,243,228,244;,
 4;260,261,262,263;,
 4;264,265,266,267;,
 4;268,269,270,271;,
 4;272,273,274,275;,
 4;276,267,266,277;,
 4;272,278,279,273;,
 4;280,281,282,283;,
 4;284,285,286,287;,
 4;288,289,290,291;,
 4;292,293,294,295;,
 4;296,297,298,299;,
 4;300,301,302,303;,
 4;304,305,306,307;,
 4;308,309,310,311;,
 4;312,313,314,315;,
 4;316,317,318,319;,
 4;318,320,321,319;,
 4;322,309,308,323;,
 4;324,325,326,327;,
 4;328,329,330,331;,
 4;332,333,334,335;,
 4;336,337,338,339;,
 4;338,340,341,339;,
 4;342,329,328,343;;
 
 MeshMaterialList {
  1;
  168;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
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
    "data\\TEXTURE\\acTex001.png";
   }
  }
 }
 MeshNormals {
  181;
  -0.010158;-0.000002;-0.999948;,
  0.784287;-0.620347;-0.007965;,
  0.010155;-0.000000;0.999949;,
  -0.706965;-0.014165;0.707107;,
  0.000000;0.000000;1.000000;,
  0.706965;0.014165;0.707107;,
  0.999799;0.020033;0.000000;,
  0.706965;0.014165;-0.707107;,
  0.000000;0.000000;-1.000000;,
  -0.706965;-0.014165;-0.707107;,
  -0.999799;-0.020033;0.000000;,
  -0.020033;0.999799;0.000000;,
  0.020033;-0.999799;-0.000000;,
  -0.706964;-0.014166;0.707107;,
  0.000000;-0.000000;1.000000;,
  0.706964;0.014164;0.707107;,
  0.999799;0.020031;0.000000;,
  0.706964;0.014164;-0.707107;,
  0.000000;-0.000000;-1.000000;,
  -0.706964;-0.014166;-0.707107;,
  -0.999799;-0.020033;0.000000;,
  -0.020034;0.999799;0.000000;,
  0.020034;-0.999799;-0.000000;,
  -0.004959;0.698996;0.715109;,
  0.000000;0.000000;1.000000;,
  0.004959;-0.698996;0.715109;,
  0.007093;-0.999975;-0.000000;,
  0.004959;-0.698996;-0.715108;,
  0.000000;0.000000;-1.000000;,
  -0.004959;0.698996;-0.715108;,
  -0.007093;0.999975;-0.000000;,
  0.999975;0.007094;0.000000;,
  -0.999975;-0.007095;0.000000;,
  -0.010156;0.000002;-0.999948;,
  -0.999923;-0.007095;0.010156;,
  0.010156;-0.000000;0.999948;,
  0.999799;0.020034;-0.000002;,
  0.999799;0.020033;-0.000001;,
  0.999799;0.020033;0.000000;,
  0.999799;0.020034;0.000001;,
  0.999799;0.020034;0.000001;,
  0.999799;0.020034;-0.000001;,
  0.999799;0.020034;-0.000001;,
  0.999799;0.020033;-0.000000;,
  0.999799;0.020033;0.000001;,
  0.999799;0.020034;0.000002;,
  0.999799;0.020034;-0.000000;,
  -0.013562;0.923373;0.383665;,
  -0.000658;0.383781;0.923424;,
  0.007615;0.000153;0.999971;,
  0.014716;-0.383499;0.923424;,
  0.023439;-0.923175;0.383664;,
  0.023828;-0.999716;0.000339;,
  0.023440;-0.922853;-0.384438;,
  0.014728;-0.384207;-0.923130;,
  0.007617;0.000153;-0.999971;,
  -0.000675;0.384489;-0.923129;,
  -0.013547;0.923051;-0.384438;,
  -0.016239;0.999868;0.000339;,
  0.999799;0.020033;-0.000000;,
  -0.999799;-0.020034;-0.000000;,
  0.167755;0.912098;0.374081;,
  0.233353;0.382019;0.894208;,
  0.251242;0.005034;0.967911;,
  0.248472;-0.372365;0.894207;,
  0.204158;-0.904645;0.374081;,
  0.169851;-0.985470;0.000335;,
  0.204402;-0.904296;-0.374792;,
  0.248389;-0.372878;-0.894017;,
  0.251334;0.005036;-0.967887;,
  0.233251;0.382529;-0.894017;,
  0.168012;0.911758;-0.374793;,
  0.130237;0.991483;0.000334;,
  0.194229;0.907707;0.371945;,
  0.269568;0.379422;0.885083;,
  0.290355;0.005818;0.956901;,
  0.284554;-0.368320;0.885082;,
  0.230434;-0.899198;0.371945;,
  0.190510;-0.981685;0.000334;,
  0.230716;-0.898835;-0.372646;,
  0.284503;-0.368443;-0.885047;,
  0.290460;0.005820;-0.956869;,
  0.269514;0.379544;-0.885047;,
  0.194525;0.907356;-0.372646;,
  0.151032;0.988529;0.000333;,
  -0.010158;0.000002;-0.999948;,
  0.675915;0.736948;-0.006865;,
  0.010155;-0.000001;0.999948;,
  0.010242;0.003131;-0.999943;,
  -0.888774;-0.458225;-0.010535;,
  -0.010240;-0.003133;0.999943;,
  -0.010158;0.000000;-0.999948;,
  -0.643820;0.765149;0.006539;,
  0.010158;0.000000;0.999948;,
  -0.003981;-0.019692;-0.999798;,
  -0.587361;0.809211;-0.013597;,
  0.003979;0.019690;0.999798;,
  -0.784285;0.620349;0.007965;,
  -0.588366;-0.808573;0.005976;,
  0.588365;0.808574;-0.005975;,
  -0.020033;0.999799;0.000000;,
  -0.020031;0.999799;0.000002;,
  -0.020034;0.999799;0.000001;,
  -0.020035;0.999799;0.000000;,
  -0.020034;0.999799;-0.000001;,
  -0.020031;0.999799;-0.000002;,
  -0.020029;0.999799;0.000000;,
  0.020034;-0.999799;0.000001;,
  0.020033;-0.999799;-0.000000;,
  0.020033;-0.999799;0.000001;,
  0.020032;-0.999799;-0.000000;,
  0.020033;-0.999799;-0.000001;,
  0.020034;-0.999799;-0.000001;,
  0.020035;-0.999799;-0.000000;,
  -0.020034;0.999799;0.000000;,
  -0.020033;0.999799;-0.000000;,
  -0.020034;0.999799;-0.000001;,
  -0.020033;0.999799;0.000000;,
  -0.020034;0.999799;0.000001;,
  -0.020033;0.999799;0.000000;,
  -0.020033;0.999799;0.000000;,
  0.020033;-0.999799;0.000000;,
  0.020034;-0.999799;-0.000000;,
  0.020034;-0.999799;0.000001;,
  0.020033;-0.999799;-0.000000;,
  0.020034;-0.999799;-0.000001;,
  0.020033;-0.999799;-0.000000;,
  0.020033;-0.999799;-0.000000;,
  0.999975;0.007094;0.000000;,
  0.999975;0.007095;-0.000001;,
  0.999975;0.007094;-0.000000;,
  0.999975;0.007094;0.000000;,
  0.999975;0.007094;0.000000;,
  0.999975;0.007095;0.000001;,
  0.999975;0.007095;0.000000;,
  -0.999975;-0.007096;-0.000001;,
  -0.999975;-0.007095;0.000000;,
  -0.999975;-0.007094;-0.000001;,
  -0.999975;-0.007095;0.000000;,
  -0.999975;-0.007094;0.000001;,
  -0.999975;-0.007095;0.000000;,
  -0.999975;-0.007096;0.000001;,
  -0.999975;-0.007095;0.000000;,
  0.999923;0.007095;-0.010155;,
  -0.007095;0.999975;0.000072;,
  0.007095;-0.999975;-0.000072;,
  -0.999799;-0.020033;-0.000002;,
  -0.999799;-0.020034;-0.000001;,
  -0.999799;-0.020034;0.000000;,
  -0.999799;-0.020033;-0.000000;,
  -0.999799;-0.020034;-0.000001;,
  -0.999799;-0.020034;-0.000001;,
  -0.999799;-0.020034;0.000000;,
  -0.999799;-0.020034;0.000001;,
  -0.999799;-0.020034;0.000001;,
  -0.999799;-0.020032;0.000001;,
  -0.999799;-0.020032;-0.000001;,
  0.040528;0.922934;0.382818;,
  0.074817;0.384866;0.919935;,
  0.088769;0.001779;0.996051;,
  0.090173;-0.381562;0.919934;,
  0.077466;-0.920570;0.382818;,
  0.065790;-0.997833;0.000339;,
  0.077553;-0.920243;-0.383586;,
  0.090167;-0.381514;-0.919955;,
  0.088801;0.001779;-0.996048;,
  0.074812;0.384819;-0.919955;,
  0.040627;0.922611;-0.383587;,
  0.025765;0.999668;0.000338;,
  -0.675915;-0.736947;0.006865;,
  0.736910;-0.675950;-0.007484;,
  -0.736910;0.675950;0.007485;,
  0.888772;0.458229;0.010538;,
  -0.458234;0.888830;-0.001909;,
  0.458235;-0.888829;0.001910;,
  0.643812;-0.765156;-0.006539;,
  0.765110;0.643853;-0.007770;,
  -0.765110;-0.643852;0.007771;,
  0.587357;-0.809214;0.013598;,
  0.809316;0.587187;-0.014781;,
  -0.809317;-0.587187;0.014780;;
  168;
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;97,97,97,97;,
  4;98,98,98,98;,
  4;99,99,99,99;,
  4;3,3,4,4;,
  4;4,4,5,5;,
  4;5,5,6,6;,
  4;6,6,7,7;,
  4;7,7,8,8;,
  4;8,8,9,9;,
  4;9,9,10,10;,
  4;10,10,3,3;,
  3;100,11,101;,
  3;102,11,100;,
  3;103,11,102;,
  3;104,11,103;,
  3;100,11,104;,
  3;105,11,100;,
  3;106,11,105;,
  3;101,11,106;,
  3;107,12,108;,
  3;108,12,109;,
  3;109,12,110;,
  3;110,12,111;,
  3;111,12,108;,
  3;108,12,112;,
  3;112,12,113;,
  3;113,12,107;,
  4;13,13,14,14;,
  4;14,14,15,15;,
  4;15,15,16,16;,
  4;16,16,17,17;,
  4;17,17,18,18;,
  4;18,18,19,19;,
  4;19,19,20,20;,
  4;20,20,13,13;,
  3;114,21,115;,
  3;116,21,114;,
  3;117,21,116;,
  3;118,21,117;,
  3;114,21,118;,
  3;119,21,114;,
  3;120,21,119;,
  3;115,21,120;,
  3;121,22,122;,
  3;122,22,123;,
  3;123,22,124;,
  3;124,22,125;,
  3;125,22,122;,
  3;122,22,126;,
  3;126,22,127;,
  3;127,22,121;,
  4;23,23,24,24;,
  4;24,24,25,25;,
  4;25,25,26,26;,
  4;26,26,27,27;,
  4;27,27,28,28;,
  4;28,28,29,29;,
  4;29,29,30,30;,
  4;30,30,23,23;,
  3;128,31,129;,
  3;130,31,128;,
  3;131,31,130;,
  3;132,31,131;,
  3;128,31,132;,
  3;133,31,128;,
  3;134,31,133;,
  3;129,31,134;,
  3;135,32,136;,
  3;136,32,137;,
  3;137,32,138;,
  3;138,32,139;,
  3;139,32,140;,
  3;140,32,141;,
  3;141,32,142;,
  3;142,32,135;,
  4;33,33,33,33;,
  4;34,34,34,34;,
  4;35,35,35,35;,
  4;143,143,143,143;,
  4;144,144,144,144;,
  4;145,145,145,145;,
  4;61,47,48,62;,
  4;62,48,49,63;,
  4;63,49,50,64;,
  4;64,50,51,65;,
  4;65,51,52,66;,
  4;66,52,53,67;,
  4;67,53,54,68;,
  4;68,54,55,69;,
  4;69,55,56,70;,
  4;70,56,57,71;,
  4;71,57,58,72;,
  4;72,58,47,61;,
  3;37,59,36;,
  3;38,59,37;,
  3;39,59,38;,
  3;40,59,39;,
  3;41,59,40;,
  3;42,59,41;,
  3;43,59,42;,
  3;38,59,43;,
  3;44,59,38;,
  3;45,59,44;,
  3;46,59,45;,
  3;36,59,46;,
  3;146,60,147;,
  3;147,60,148;,
  3;148,60,149;,
  3;149,60,150;,
  3;150,60,151;,
  3;151,60,152;,
  3;152,60,153;,
  3;153,60,148;,
  3;148,60,154;,
  3;154,60,155;,
  3;155,60,156;,
  3;156,60,146;,
  4;73,61,62,74;,
  4;74,62,63,75;,
  4;75,63,64,76;,
  4;76,64,65,77;,
  4;77,65,66,78;,
  4;78,66,67,79;,
  4;79,67,68,80;,
  4;80,68,69,81;,
  4;81,69,70,82;,
  4;82,70,71,83;,
  4;83,71,72,84;,
  4;84,72,61,73;,
  4;157,73,74,158;,
  4;158,74,75,159;,
  4;159,75,76,160;,
  4;160,76,77,161;,
  4;161,77,78,162;,
  4;162,78,79,163;,
  4;163,79,80,164;,
  4;164,80,81,165;,
  4;165,81,82,166;,
  4;166,82,83,167;,
  4;167,83,84,168;,
  4;168,84,73,157;,
  4;85,85,85,85;,
  4;86,86,86,86;,
  4;87,87,87,87;,
  4;169,169,169,169;,
  4;170,170,170,170;,
  4;171,171,171,171;,
  4;88,88,88,88;,
  4;89,89,89,89;,
  4;90,90,90,90;,
  4;172,172,172,172;,
  4;173,173,173,173;,
  4;174,174,174,174;,
  4;91,91,91,91;,
  4;92,92,92,92;,
  4;93,93,93,93;,
  4;175,175,175,175;,
  4;176,176,176,176;,
  4;177,177,177,177;,
  4;94,94,94,94;,
  4;95,95,95,95;,
  4;96,96,96,96;,
  4;178,178,178,178;,
  4;179,179,179,179;,
  4;180,180,180,180;;
 }
 MeshTextureCoords {
  344;
  0.048770;0.904650;,
  0.078984;0.946169;,
  0.087270;0.939616;,
  0.057056;0.898097;,
  0.077009;0.899630;,
  0.077009;0.942727;,
  0.085295;0.942793;,
  0.085295;0.899696;,
  0.057062;0.946707;,
  0.087277;0.905189;,
  0.078991;0.898636;,
  0.048776;0.940154;,
  0.046802;0.898989;,
  0.046802;0.942085;,
  0.055087;0.942019;,
  0.055087;0.898922;,
  0.085302;0.942440;,
  0.085302;0.899344;,
  0.046795;0.943148;,
  0.046795;0.900052;,
  0.052139;0.650692;,
  0.122821;0.648286;,
  0.122202;0.630110;,
  0.051520;0.632516;,
  0.121583;0.611935;,
  0.050901;0.614341;,
  0.122726;0.611430;,
  0.052024;0.612419;,
  0.052429;0.630601;,
  0.123131;0.629612;,
  0.052532;0.648788;,
  0.123234;0.647798;,
  0.122308;0.611661;,
  0.051587;0.611234;,
  0.051477;0.629419;,
  0.122198;0.629847;,
  0.051367;0.647605;,
  0.122089;0.648032;,
  0.122317;0.612295;,
  0.051615;0.613284;,
  0.051719;0.631471;,
  0.122421;0.630481;,
  0.052124;0.649653;,
  0.122826;0.648663;,
  0.238919;0.557796;,
  0.238919;0.532077;,
  0.220737;0.550263;,
  0.257101;0.550263;,
  0.264633;0.532077;,
  0.257101;0.513891;,
  0.238919;0.506358;,
  0.220737;0.513891;,
  0.213205;0.532077;,
  0.220912;0.513171;,
  0.239095;0.531357;,
  0.239095;0.505638;,
  0.257277;0.513171;,
  0.264808;0.531357;,
  0.257277;0.549543;,
  0.239095;0.557075;,
  0.220912;0.549543;,
  0.213381;0.531357;,
  0.191905;0.496134;,
  0.173776;0.496497;,
  0.174308;0.523053;,
  0.192437;0.522690;,
  0.174840;0.549609;,
  0.192969;0.549246;,
  0.173736;0.549894;,
  0.191864;0.549894;,
  0.191644;0.523332;,
  0.173515;0.523332;,
  0.191864;0.496771;,
  0.173736;0.496771;,
  0.173294;0.549883;,
  0.191422;0.550246;,
  0.191954;0.523690;,
  0.173826;0.523327;,
  0.192486;0.497134;,
  0.174358;0.496771;,
  0.174302;0.549894;,
  0.192430;0.549894;,
  0.192650;0.523332;,
  0.174522;0.523332;,
  0.192430;0.496771;,
  0.174302;0.496771;,
  0.239746;0.558363;,
  0.239746;0.531518;,
  0.220767;0.550500;,
  0.258724;0.550500;,
  0.266586;0.531518;,
  0.258724;0.512535;,
  0.239746;0.504672;,
  0.220767;0.512535;,
  0.212906;0.531518;,
  0.220414;0.512629;,
  0.239393;0.531612;,
  0.239393;0.504767;,
  0.258371;0.512629;,
  0.266233;0.531612;,
  0.258371;0.550594;,
  0.239393;0.558457;,
  0.220414;0.550594;,
  0.212553;0.531612;,
  0.192268;0.495445;,
  0.173652;0.495602;,
  0.173819;0.523475;,
  0.192434;0.523317;,
  0.173985;0.551347;,
  0.192600;0.551189;,
  0.192029;0.492466;,
  0.174605;0.492466;,
  0.174669;0.524929;,
  0.192094;0.524929;,
  0.174605;0.557393;,
  0.192029;0.557393;,
  0.193247;0.490191;,
  0.173951;0.490002;,
  0.173778;0.523526;,
  0.193075;0.523715;,
  0.173606;0.557051;,
  0.192903;0.557240;,
  0.191899;0.495265;,
  0.174184;0.495265;,
  0.174118;0.523983;,
  0.191834;0.523983;,
  0.174184;0.552702;,
  0.191899;0.552702;,
  0.265601;0.532369;,
  0.239789;0.532369;,
  0.258041;0.551218;,
  0.258041;0.513521;,
  0.239789;0.505714;,
  0.221538;0.513521;,
  0.213977;0.532369;,
  0.221538;0.551218;,
  0.239789;0.559025;,
  0.221231;0.551253;,
  0.239482;0.532405;,
  0.213671;0.532405;,
  0.221231;0.513556;,
  0.239482;0.505749;,
  0.257734;0.513556;,
  0.265294;0.532405;,
  0.257734;0.551253;,
  0.239482;0.559061;,
  0.249847;0.947014;,
  0.250247;0.890632;,
  0.233744;0.890515;,
  0.233344;0.946896;,
  0.232563;0.874672;,
  0.182724;0.874760;,
  0.182752;0.891263;,
  0.232591;0.891175;,
  0.165239;0.892255;,
  0.165639;0.948637;,
  0.182142;0.948520;,
  0.181742;0.892138;,
  0.184030;0.965869;,
  0.233869;0.965920;,
  0.233885;0.949417;,
  0.184046;0.949366;,
  0.232819;0.946593;,
  0.232246;0.890211;,
  0.182407;0.890717;,
  0.182980;0.947099;,
  0.299841;0.947910;,
  0.300413;0.891529;,
  0.250574;0.891023;,
  0.250002;0.947404;,
  0.034342;0.735747;,
  0.034142;0.683295;,
  0.009832;0.683777;,
  0.010231;0.736226;,
  0.310237;0.735740;,
  0.309186;0.683292;,
  0.284164;0.683793;,
  0.285215;0.736241;,
  0.259143;0.684294;,
  0.260193;0.736743;,
  0.254878;0.738257;,
  0.255278;0.685808;,
  0.230968;0.686291;,
  0.230768;0.738735;,
  0.206723;0.686294;,
  0.206723;0.738738;,
  0.182478;0.686291;,
  0.182678;0.738735;,
  0.158265;0.685808;,
  0.158665;0.738257;,
  0.157020;0.738001;,
  0.158070;0.685553;,
  0.133049;0.685051;,
  0.131998;0.737500;,
  0.108028;0.684550;,
  0.106976;0.736998;,
  0.106445;0.736226;,
  0.106844;0.683777;,
  0.082632;0.683295;,
  0.082432;0.735747;,
  0.058387;0.683292;,
  0.058387;0.735744;,
  0.255116;0.659401;,
  0.206897;0.624345;,
  0.230974;0.675787;,
  0.255051;0.624345;,
  0.255116;0.589289;,
  0.230974;0.572903;,
  0.206897;0.572788;,
  0.182820;0.572892;,
  0.158774;0.589289;,
  0.158743;0.624345;,
  0.158774;0.659401;,
  0.182820;0.675798;,
  0.206897;0.675903;,
  0.116889;0.957234;,
  0.128701;0.923390;,
  0.105045;0.940640;,
  0.105077;0.923390;,
  0.105045;0.906141;,
  0.116889;0.889546;,
  0.128701;0.889429;,
  0.140512;0.889535;,
  0.152308;0.906141;,
  0.152324;0.923390;,
  0.152308;0.940640;,
  0.140512;0.957246;,
  0.128701;0.957351;,
  0.042783;0.766843;,
  0.027149;0.767153;,
  0.309832;0.766668;,
  0.285835;0.767148;,
  0.261837;0.767629;,
  0.237961;0.769143;,
  0.222327;0.769453;,
  0.206735;0.769456;,
  0.191142;0.769454;,
  0.175571;0.769143;,
  0.155376;0.768888;,
  0.131379;0.768407;,
  0.107381;0.767926;,
  0.089539;0.767153;,
  0.073967;0.766843;,
  0.058375;0.766841;,
  0.047129;0.864563;,
  0.035859;0.864787;,
  0.311664;0.864301;,
  0.287791;0.864779;,
  0.263917;0.865258;,
  0.229250;0.866772;,
  0.217980;0.866995;,
  0.206740;0.866997;,
  0.195501;0.866995;,
  0.184276;0.866772;,
  0.153296;0.866516;,
  0.129422;0.866038;,
  0.105549;0.865559;,
  0.080834;0.864787;,
  0.069609;0.864563;,
  0.058369;0.864561;,
  0.051561;0.895798;,
  0.074747;0.921078;,
  0.082532;0.913937;,
  0.059346;0.888657;,
  0.046924;0.898445;,
  0.046924;0.941542;,
  0.054065;0.941463;,
  0.054065;0.898366;,
  0.072187;0.922936;,
  0.049001;0.948216;,
  0.056786;0.955357;,
  0.079972;0.930077;,
  0.071604;0.898856;,
  0.071604;0.941952;,
  0.078745;0.942031;,
  0.078745;0.898935;,
  0.079344;0.898602;,
  0.079344;0.941698;,
  0.046324;0.899091;,
  0.046324;0.942188;,
  0.060508;0.943625;,
  0.085927;0.894324;,
  0.075196;0.888792;,
  0.049777;0.938093;,
  0.061753;0.932248;,
  0.061822;0.909986;,
  0.051091;0.910010;,
  0.051021;0.932271;,
  0.045048;0.898469;,
  0.070466;0.947769;,
  0.081197;0.942237;,
  0.055779;0.892936;,
  0.075479;0.932271;,
  0.075410;0.910010;,
  0.064679;0.909987;,
  0.064748;0.932248;,
  0.078773;0.945506;,
  0.079358;0.896205;,
  0.057097;0.895977;,
  0.056512;0.945278;,
  0.075814;0.945278;,
  0.075229;0.895977;,
  0.052968;0.896205;,
  0.053553;0.945506;,
  0.065061;0.909869;,
  0.042976;0.936116;,
  0.051058;0.942917;,
  0.073143;0.916670;,
  0.051898;0.941311;,
  0.051898;0.898215;,
  0.045096;0.898297;,
  0.045096;0.941393;,
  0.052143;0.911700;,
  0.074228;0.937947;,
  0.082310;0.931146;,
  0.060225;0.904899;,
  0.074650;0.942113;,
  0.074650;0.899017;,
  0.067849;0.898935;,
  0.067849;0.942031;,
  0.041601;0.899159;,
  0.041601;0.942256;,
  0.078145;0.898439;,
  0.078145;0.941536;,
  0.077316;0.895780;,
  0.044735;0.940667;,
  0.054506;0.947756;,
  0.087087;0.902869;,
  0.077280;0.939096;,
  0.055022;0.939534;,
  0.055200;0.946623;,
  0.077458;0.946185;,
  0.043227;0.901589;,
  0.075808;0.946476;,
  0.085579;0.939387;,
  0.052998;0.894500;,
  0.072692;0.895224;,
  0.050434;0.894786;,
  0.050256;0.901875;,
  0.072514;0.902313;,
  0.049501;0.946762;,
  0.071759;0.947201;,
  0.054267;0.894647;,
  0.076525;0.894208;;
 }
}
