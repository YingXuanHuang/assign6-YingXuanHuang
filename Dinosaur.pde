class Dinosaur extends Enemy {
	// Requirement #4: Complete Dinosaur Class

final float TRIGGERED_SPEED_MULTIPLIER = 5;
float speed = 2f/2;

void checkCollision(Player player){
super.checkCollision(player);
}

void display(){
 
  int direction = (speed > 0) ? RIGHT : LEFT;
  
  pushMatrix();
  translate(x, y);
  if (direction == RIGHT) {
    scale(1, 1);
    image(dinosaur, 0, 0, w, h); 
  } else {
    scale(-1, 1);
    image(dinosaur, -w, 0, w, h); 
  }
  popMatrix();
  
}

void update(){
  
  x += speed;
    if (x<0 || x>width-w) { 
    speed *= -1 ;
    }
}

Dinosaur(float x, float y){
   super(x,y);
  }

}
