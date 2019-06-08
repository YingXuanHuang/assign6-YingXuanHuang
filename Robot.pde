class Robot extends Enemy {
	// Requirement #5: Complete Dinosaur Class

	final int PLAYER_DETECT_RANGE_ROW = 2;
	final int LASER_COOLDOWN = 180;
	final int HAND_OFFSET_Y = 37;
	final int HAND_OFFSET_X_FORWARD = 64;
	final int HAND_OFFSET_X_BACKWARD = 16;

float speed = 2f;

void checkCollision(Player player){
super.checkCollision(player);
}

void display(){
 
  int direction = (speed > 0) ? RIGHT : LEFT;
  
  pushMatrix();
  translate(x, y);
  if (direction == RIGHT) {
    scale(1, 1);
    image(robot, 0, 0, w, h); 
  } else {
    scale(-1, 1);
    image(robot, -w, 0, w, h); 
  }
  popMatrix();
  
}

void update(){

    boolean checkX = false;
    boolean checkY = (player.y <= y+2*SOIL_SIZE && player.y >= y-2*SOIL_SIZE) ? true : false;
    int nowSpeed = (speed > 0) ? RIGHT : LEFT ;
    
    if(nowSpeed == RIGHT && player.x + player.w/2 > x+HAND_OFFSET_X_BACKWARD){
      checkX = true;
    }else if(nowSpeed == LEFT && player.x + player.w/2 < x-SOIL_SIZE+HAND_OFFSET_X_BACKWARD){
      checkX = true;
    }
    
    if(checkX && checkY){
      x +=0;
    }else {
      x += speed;
      if (x<0 || x>width-w) { 
      speed *= -1 ;
    }
    }
  
}

Robot(float x, float y){
   super(x,y);
  }

}
