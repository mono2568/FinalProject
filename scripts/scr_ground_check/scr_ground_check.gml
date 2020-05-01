if(place_meeting(x,y+1,obj_block)){
	//touching the ground
	vspd = 0;
	jumping = false;
	falling = false;
	
	// if the player wants to jump
	if(jumpKey || jumpKeyAlt){
		audio_play_sound(snd_jump,99,false);	//sound effect when jump
		jumping = true;
		vspd = -jspd;
	}
}else{
	//fall down when in the air
	//make sure that the player wont fall rapidly
	if(downKey){
		vspd += grav*4;	
	}else{
		if(vspd < termVelocity)
			vspd += grav;
			
		if(sign(vspd) == 1)
			falling = true;
	}
}
	