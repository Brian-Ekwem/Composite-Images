String buttonText = "X";
PFont titleFont;

void textSetup() { //To Main Program
  //String[] fontList = PFont.list(); //To list all fonts available on system
  println("Start of Console");
  //printArray(fontList); //For listing all possible fonts to choose, then createFont
  titleFont = createFont ("Arial", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
}//End textSetup

void textDraw() { //To Main Program
  //Note: visualization rectangle is in main program
  fill(black); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(titleFont, 20); //Change the number until it fits, largest font size
  text(buttonText, buttonX, buttonY, buttonWidth, buttonHeight);
  fill(255); //Reset to white for rest of the program
}
