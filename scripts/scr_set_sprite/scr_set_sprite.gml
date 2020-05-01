if(jumping || falling){
	//sprite when in the air
	if(playerColor == 0){
		sprite_index = spr_player_jump;
	}else{
		sprite_index = spr_player_jump2;
	}
}else{
	//sprite when running
	if(playerColor == 0){
		sprite_index = spr_player_run;
	}else{
		sprite_index = spr_player_run2;
	}
}