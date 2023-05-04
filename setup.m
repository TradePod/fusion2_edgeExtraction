% Dr. Kaputa
% RGB Demo Setup File
R = 752; 
C = 480;
redMax = 255;
redMin = 75;
greenMax = 255;
greenMin = 75;
blueMax = 255;
blueMin = 75;
sobelCX = [-1 0 1;
	  -2 0 2;
	   -1 0 1];

sobelCY = [-1 -2 -1;
	  0 0 0;
	   1 2 1];

gaussC =  [0.0625 0.125 0.0625;
	  0.125 0.3125 0.125;
	   0.0625 0.125 0.0625];

sobelCX_Bot =  [-1 0 1;
	            -2 0 2;
	            -1 0 1];
sobelCX_Top =  [1 0 -1;
	            2 0 -2;
	            1 0 -1];
sobelCY_Right =  [-1 -2 -1;
	               0  0  0;
	              1  2  1];
sobelCY_Left =  [1 2 1;
	            0  0  0;
	            -1 -2 -1];
