class Clock extends Item {
	// Requirement #2: Complete Clock Class

void display(){
  if(isAlive){
 image(clock, x, y);
  }
}

void checkCollision(Player player){
if(isHit(x, y, SOIL_SIZE, SOIL_SIZE, player.x, player.y, player.w, player.h) && isAlive){
        addTime(CLOCK_BONUS_SECONDS);
        isAlive=false;
      }
    }  //che

  Clock(float x, float y){
      super(x,y);
    }

} //class
