with(other){
	var collideColor = objColor;	
}

if(collideColor != playerColor){
	global.gameOver = true;
	grav = 0;
	global.speedModifier = 0;
	image_speed = 0;
	if(playerColor == 0){
			sprite_index = spr_player_dead;
		}else{
			sprite_index = spr_player_dead2;
	}
	if(!instance_exists(obj_replay)){
		instance_create_layer(room_width/2,room_height/2,"Instances",obj_replay);
	}
}