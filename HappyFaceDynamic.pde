//Global Variables
int shortSide;
float faceSquareX, faceSquareY, faceSquareSide;
float faceX, faceY, faceDiameter, leftEyeX, leftEyeY, eyeDiameter, rightEyeX, rightEyeY, noseX1, noseY1, noseX2, noseY2, noseX3, noseY3, mouthX1, mouthY1, mouthX2, mouthY2, measlesX, measlesY, measlesDiameter;
int mouthThick, measlesColor;
{
faceSquareX = width*1/2;
faceSquareY = height*0;
faceSquareSide = width; //Shorter side
faceX = width*1/2;
faceY = height*1/2;
faceDiameter = height; //Variable shortSide
leftEyeX = width*1/2.5;
leftEyeY = height*1/4;
eyeDiameter = height*1/7;
rightEyeX = width*7/12;
rightEyeY = height*1/4;
noseX1 = width*1/8;
noseY1 = height*1/8;
noseX2 = width*1/8;
noseY2 = height*1/8;
noseX3 = width*1/8;
noseY3 = height*1/8;
mouthX1 = leftEyeX;
mouthY1 = height*9/12;
mouthX2 = rightEyeX;
mouthY2 = mouthY1;
measlesX = width*1/2.5;
measlesY = height*10/12;
measlesDiameter = width*1/20;
measlesColor = color(#FFFFFF);

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
//
//Mouth
strokeCap(ROUND) ; //Default ROUND
strokeWeight(30);
line(mouthX1, mouthY1, mouthX2, mouthY2);
}
void setup() {
} //End setup()

void draw() {
} //End draw()

void keyPressed() {
} // End keyPressed()

void mousePressed() {
} // End mousePressed()
