with(other){
	var collideColor = objColor;	
}

if(collideColor != playerColor){
	if(global.gameOver = false){
		audio_play_sound(snd_die,99,false);
		ini_open("saveData.ini");
		if(score > ini_read_real("Variables","score",0)){
			isHighScore = true;
			ini_write_real("Variables", "score", score); //The first value is a header for that section, the second value is the label for your variable in the INI file, and the third value is the actual variable
		}
		ini_close(); //Remember to close the INI or you'll have a memory leak
	}
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
}else{
	with(other){
		if(sprite_index == spr_needle_large_blue or sprite_index == spr_needle_large_pink){
			var inst = instance_create_layer(x,y,"effects",obj_explode);
			inst.sprite_index = sprite_index;
			audio_play_sound(snd_tackle,80,false);
			instance_destroy();
		}else{
			//destroy the obstacle when the color is same as the player
			audio_play_sound(snd_kick,70,false);	//sound when kick the obstacle
			startMove = true;
			startX = x+30;
			startY = y;
		}
	}
}