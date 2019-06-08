class Dinosaur extends Enemy {
	// Requirement #4: Complete Dinosaur Class

final float TRIGGERED_SPEED_MULTIPLIER = 5;
float speed = 1f;

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
  
    if (x<0 || x>width-w){ 
      speed *= -1 ;
    }
    if(player.y == y && player.x > x && speed == 1f ){
      speed *= TRIGGERED_SPEED_MULTIPLIER;
    }
    if(player.y == y && player.x < x && speed == -1f){
      speed *= TRIGGERED_SPEED_MULTIPLIER;
    }
    if(player.y != y){
      speed = (speed > 0) ? 1f : -1f;
    }
    
}

Dinosaur(float x, float y){
   super(x,y);
  }

}
