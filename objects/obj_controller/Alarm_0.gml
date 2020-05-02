randomize();
if(numOfObs <= 0){
	//default
	numOfObs = choose(0,1,1,1,2,2,2);
	if(global.speedModifier > 1.3){
		numOfObs = choose(1,1,2,2,3,3,4,5,5);
	}
	numOfObs = choose(0,1,1,1,2,2,2,3,3);
	if(global.speedModifier > 1.5){
		numOfObs = choose(1,1,2,2,3,3,4,5,5);
	}
}
var i = instance_create_layer(room_width + 100 , room_height - 75, "Instances", obj_obstacle);

if(flagGreenNeedle == false){
	i.objColor = choose(0,1,2);
}else{
	i.objColor = choose(0,1);
}
if(i.objColor == 0){
	//blue;
	i.sprite_index = choose(spr_needle_blue,spr_needle_blue);
}else if(i.objColor == 1){
	//pink
	i.sprite_index = choose(spr_needle_pink,spr_needle_pink);
}else{
	//green
	i.sprite_index = choose(spr_needle_green,spr_needle_green);
	flagGreenNeedle = true;
}

switch(i.sprite_index){
	case spr_needle_blue:
	// when needle_blue
	i.y = 664;
	case spr_needle_pink:
	// when needle_pink
	i.y = 664;
	case spr_needle_green:
	//when needle_green
	i.y = 664;
	
}
numOfObs --;
if(global.gameOver) exit;

if(numOfObs <= 0){
	if(choose(0,1) == 0){
		alarm[1] = room_speed * 0.2*global.speedModifier*8;
		alarm[0] = room_speed * 0.2*global.speedModifier*18;
	}else{
	alarm[0] = room_speed * 0.2*global.speedModifier*10;
	}
	flagGreenNeedle = false;
}else{

	alarm[0] = room_speed * 0.2*global.speedModifier;
}
