PShape head, mand, body, oeje1, oeje2;  // Objekt navne


int x = 0; 
int y = 0; 
boolean trappe = false; 
int count = 0; 

void setup() {
  size(500, 500);
  
  
}

void draw() {
  if(trappe){
    x++;  
  } else{
   y++;
  }
  count++;
  
  if(count == 10){ 
   trappe = !trappe;
   count = 0;
  }
  
  
  clear();
  mand = createShape(GROUP);
  body = createShape(ELLIPSE, 5+x, 35+y, 50, 50);
  body.setFill(color(0, 0, 400));
  body.setStroke(false);
  head = createShape(ELLIPSE, 10+x, 20+y, 30, 30);
  head.setFill(color(200, 0, 400));
  oeje1 = createShape(ELLIPSE, 9+x, 22+y, 10, 10);
  oeje1.setFill(color(0, 0, 0));
   oeje2 = createShape(ELLIPSE, 22+x, 22+y, 10, 10);
  oeje2.setFill(color(0, 0, 0));
  
  shape(body, 25, 25);
  shape(head, 20, 15);
  shape(oeje1, 15, 15);
  shape(oeje2, 15, 15);
}
