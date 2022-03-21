/**

Catarse

**/


String itemm = "Silêncio, o trem grita meu grito.";

float x, y; // X and Y coordinates of text

float hr, vr;  // horizontal and vertical radius of the text

StringList inventory;

float sv;

int svint;

float xm;

float ym;

float hrm;

PFont fontA;

float transp;

int trans = int(transp);


void setup() {

  fullScreen();

  fontA = loadFont("CourierNew36.vlw");

  textFont(fontA, 32);

  

  inventory = new StringList();

  inventory.append("Silêncio");

  inventory.append("o trem");

  inventory.append("grita");

  inventory.append("meu grito");

  inventory.append("o trem grita");

  inventory.append("grito");

  inventory.append("Sinlêncio,");

  inventory.append("o trem grita");

  inventory.append("o trem grita meu grito.");

  inventory.append("o trem");

  inventory.append("Silêncio");

  inventory.append("o trem ");

  textAlign(CENTER, CENTER);

  hr = textWidth(itemm) / 2;

  hrm = textWidth(itemm);

  vr = (textAscent() + textDescent()) / 2;

  noStroke();   

  x = width / 2;

  y = height / 2;

  

}


void draw() {

  // instead of clearing the background, fade it by drawing

  // a semi-transparent rectangle on top

  

  fill(240, transp+20);

  rect(0, 0, width, height);

  

  fill(0);

  line(0, y+200, width, y+200);

  stroke(100);

  

  fill(0, transp+2);

  textSize(40);

  textAlign(RIGHT, UP);

  text("Catarse", 200, 100);

  

  /** textSize(24);

  textAlign(RIGHT, BOTTOM);

  text("Passe o dedo sobre a linha", width, height); **/

  

  // If the cursor is over the text, change the position

  fill(0);

  if (abs(mouseX - x) < width &&

      abs(mouseY - y - 200) < vr) {

    x += random(-15, 15);

    y += random(-16, 15);

    sv = random(0, 12);

    svint = int(sv);

    transp = random(25);

  }

   String item = inventory.get(svint);

  textSize(38);

  textAlign(CENTER, CENTER);

  text(item, x, y);

}
