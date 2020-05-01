
// make sure that the player does not go into the block
if(place_meeting(x,y + vspd, obj_block)){
	
	// move the player right up to the block
	while(!place_meeting(x,y+sign(vspd),obj_block)){
		y += sign(vspd);
	}
	
	vspd = 0;
}

y += vspd;