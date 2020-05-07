//move the background depending on the game speed
speed = - 10*global.speedModifier;
//variable for creating the next background
createNextBackGround = false;
//destroy the background when it goes off the screen
if(x < -1100)
	instance_destroy();
