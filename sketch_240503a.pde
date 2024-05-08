PFont mainFont;
int x = width/3;
int y = height/3;
int z = x;
float t = 0;
float s = sin(t * 0.1) * 100;
boolean devInf = false;
int fw = 30;

void setup() {
 fullScreen(P3D);
 frameRate(500);
 mainFont = createFont("Monocraft.ttf", fw);
 textFont(mainFont);
 noStroke();
}

void draw() {
  background(10);
  fill(255);
  if (devInf == true) {
    inf();
  }
  else {
    
  }
  pointLight(125, 110, 100, x, y, z); 
  translate(width/2, height/2, 0);
  fill(217, 77, 0);
  sphere(s);
  t += 0.05;
  s = sin(t * 0.1) * (width/10);
}

void inf() {
  text("DEV-01", 10, fw);
  text("FPS: " + int(frameRate), 10, fw + fw + 10);
  text("LX:" + x + ", LY: " + y + ", LZ: " + z, 10, fw + fw + fw + 10);
  text("s (int):" + int(s), 10, fw + fw + fw + fw + 10);
}
void keyReleased() {
  if ((keyCode == SHIFT) && (devInf == false)) {devInf = true;} else if ((keyCode == SHIFT) && (devInf == true)) {devInf = false;}
}
