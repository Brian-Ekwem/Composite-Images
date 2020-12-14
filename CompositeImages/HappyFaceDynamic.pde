//Global Variables
int shortSide, reset;
float faceSquareX, faceSquareY, faceSquareSide, leftPupilX, leftPupilY, pupilDiameter, rightPupilX, rightPupilY;
float faceX, faceY, faceDiameter, leftEyeX, leftEyeY, eyeDiameter, rightEyeX, rightEyeY, mouthX1, mouthY1, mouthX2, mouthY2, measlesX, measlesY, measlesDiameter;
int mouthThick, measlesColor, noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
int buttonX, buttonY, buttonWidth, buttonHeight;
color buttonColour, blue=#0024FF, resetWhite=#FFFFFF;
color red = #FA0004;
color yellow = #FFD500;
color white = #FFFFFF;
color black = #000000;

void setup() {   
  fullScreen();
  if (width > height) shortSide = height;
  populating_Variables();
  textSetup();
  //
  measlesColor = color(#FA0004);
  rect(faceSquareX, faceSquareY, faceSquareSide, faceSquareSide);
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
}

void draw() 
{ 
  strokeWeight(1);
  fill(measlesColor);
  ellipse(measlesX, measlesY, measlesDiameter, measlesDiameter);
  measlesDiameter = random(height*1/12, height*1/16);
  measlesX = random(faceSquareX+measlesDiameter, faceSquareX+faceSquareSide-measlesDiameter);
  measlesY = random(height*0+measlesDiameter, height-measlesDiameter);
  fill(white);
  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
  //Right Eye
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
  fill(black);
  ellipse(leftPupilX, leftPupilY, pupilDiameter, pupilDiameter);
  ellipse(rightPupilX, rightPupilY, pupilDiameter, pupilDiameter);
  fill(yellow);
  strokeWeight(10);
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  strokeWeight(20);
  strokeCap(ROUND) ; //Default ROUND
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(2);
  if ( mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight ) { 
    buttonColour = red;
  } else { 
    buttonColour = resetWhite;
  } 
  fill(buttonColour);
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  textDraw();
  fill(resetWhite);
}

void mousePressed() {
  if ( mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight ) exit() ;
}//End mousePressed()
