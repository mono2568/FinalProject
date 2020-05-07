//set the speed according to speedModifier
speed = - 10*global.speedModifier;

//destroy the obsatcle when it is off screen
if(x < -100)
	instance_destroy();
	
//move when the object gets destroyed by the player
if(time < duration and startMove == true){

	x = scr_ease_linear(time,startX,destX-startX,duration);
	y += ySpeed;
	image_angle += 15;
	ySpeed += yAccel;
	
	time ++;
} else {
	if(startMove)
		instance_destroy();
}

