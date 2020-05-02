speed = - 10*global.speedModifier;

if(x < -100)
	instance_destroy();
	
//move when the object gets destroyed by the player
if(time < duration and startMove == true){

	x = scr_ease_linear(time,startX,destX-startX,duration);
	//y = scr_ease_out_quint(time,startY,destY-startY,duration);
	y += ySpeed;
	image_angle += 15;
	ySpeed += yAccel;
	
	time ++;
} else {
	if(startMove)
		instance_destroy();
}

