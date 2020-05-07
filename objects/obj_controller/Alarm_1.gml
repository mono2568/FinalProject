//Another alarm for creating obstacle
randomize();
//decide the number of large needles to create
if(numOfObs <= 0){
	numOfObs = choose(0,1,1,1,2,2,2);
	if(global.speedModifier > 1.2){
		//for adjusting difficulty
	}
}
//create obstacle
var i = instance_create_layer(room_width + 100 , room_height - 75, "Instances", obj_obstacle);


i.objColor = choose(0,1);

if(i.objColor == 0){
	//blue;
	i.sprite_index = spr_needle_large_blue;
}else if(i.objColor == 1){
	//pink
	i.sprite_index = spr_needle_large_pink;
}

switch(i.sprite_index){
	case spr_needle_large_blue:
	// when needle_large_blue
	i.y = -32;
	case spr_needle_large_pink:
	// when needle_large_pink
	i.y = -32;
	
	
}
numOfObs --;
//stop creating when the game is over
if(global.gameOver) exit;

if(numOfObs > 0){
	show_debug_message(global.speedModifier);
	alarm[1] = room_speed * 0.2*global.speedModifier*3;
}
