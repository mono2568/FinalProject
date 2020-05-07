if(obj_player.falling == false and obj_player.jumping == false and global.gameOver == false){
	//create particle
	var par = instance_create_layer(obj_player.x+15,obj_player.y+7,"Instances",obj_particle);
	//set the direction of the particle
	par.image_angle = random_range(140,180);
	par.direction = par.image_angle;
	//change the color of the particle according to the player color
	if(obj_player.playerColor == 0){
		// effect when blue
		if(effectNum == 1){
			par.sprite_index = spr_run_particle_blue;
		}else if(effectNum == 2){
			par.sprite_index = spr_run_particle_blue2;
		}else if(effectNum == 3){
			par.sprite_index = spr_run_particle_blue3;
		}
	
	}else{
		//effect when pink
		if(effectNum == 1){
			par.sprite_index = spr_run_particle_pink;
		}else if(effectNum == 2){
			par.sprite_index = spr_run_particle_pink2;
		}else if(effectNum == 3){
			par.sprite_index = spr_run_particle_pink3;
		}
	}
}