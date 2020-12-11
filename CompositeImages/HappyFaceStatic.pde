//Global Variables
int shortSide, reset;
float faceSquareX, faceSquareY, faceSquareSide;
float faceX, faceY, faceDiameter, leftEyeX, leftEyeY, eyeDiameter, rightEyeX, rightEyeY, mouthX1, mouthY1, mouthX2, mouthY2, measlesX, measlesY, measlesDiameter;
int mouthThick, measlesColor, noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
color red = #FFFFFF;
//color measlesColor = red
//Display Geometry
fullScreen(); //displayWidth, displayHeight //General Geometry: landspace, portrait or square
if (width > height) shortSide = height;
//println(shortSide);
//
//Populating Variables
faceSquareX = width*1/2-height*1/2;
faceSquareY = height*0;
faceSquareSide = height; //Shorter side
faceX = width*1/2;
faceY = height*1/2;
faceDiameter = height; //Variable shortSide
leftEyeX = width*1/2.5;
leftEyeY = height*1/4;
eyeDiameter = height*1/7;
rightEyeX = width*7/12;
rightEyeY = height*1/4;
noseX1 = width/2;
noseY1 = height*2/5;
noseX2 = width*7/16;
noseY2 = height*3/5;
noseX3 = width*9/16;
noseY3 = noseY2;
mouthX1 = leftEyeX;
mouthY1 = height*9/12;
mouthX2 = rightEyeX;
mouthY2 = mouthY1;
reset = 1;
measlesX = width*1/2.5;
measlesY = height*10/12;
measlesDiameter = width*1/20;
measlesColor = color(#FFFFFF);
//
//The Face
//
//Face
rect(faceSquareX, faceSquareY, faceSquareSide, faceSquareSide);
ellipse(faceX, faceY, faceDiameter, faceDiameter);
//Left Eye
ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
//Right Eye
ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
//Nose
triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
//The Measles
fill(measlesColor);
ellipse(measlesX, measlesY, measlesDiameter, measlesDiameter);
fill(reset);
//
//Mouth
strokeCap(ROUND) ; //Default ROUND
strokeWeight(30);
line(mouthX1, mouthY1, mouthX2, mouthY2);
//
