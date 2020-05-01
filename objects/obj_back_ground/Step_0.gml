if(global.gameOver == true){
	speed = 0;
}
if(x < 0 and createNextBackGround == false){
	instance_create_layer(sprite_width-50,0,"BG",obj_back_ground);
	createNextBackGround = true;
}
