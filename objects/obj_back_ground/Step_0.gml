//change the background according to the score
if(score > 2000){
	sprite_index = spr_backgorund2;
}
if(score > 5000){
	sprite_index = spr_backgorund3;
}
if(score > 8500){
	sprite_index = spr_backgorund4; 
}
if(score > 11500){
	sprite_index = spr_backgorund5;	
}
//stop the background when the game is over
if(global.gameOver == true){
	speed = 0;
}
//create a new background when it reaches the end of the screen
if(x < 0 and createNextBackGround == false){
	instance_create_layer(sprite_width-50,0,"BG",obj_back_ground);
	createNextBackGround = true;
}
