//alarm for creating objects
randomize();
//decide the number of object to create 
if(numOfObs <= 0){
	//default number of object
	numOfObs = choose(0,1,1,1,2,2,2);
	//change the number of object to create as the game speeds up (make it difficult)
	if(global.speedModifier > 1.3){
		numOfObs = choose(0,1,1,1,2,2,2,3,3);
	}
	if(global.speedModifier > 1.5){
		numOfObs = choose(1,1,2,2,3,3,4,5,5);
	}
}

//create obstacle
var i = instance_create_layer(room_width + 100 , room_height - 75, "Instances", obj_obstacle);

//decide color 
if(flagGreenNeedle == false){
	i.objColor = choose(0,1,2);
}else{
	i.objColor = choose(0,1);
}

//change the sprite according to the obstacle color
if(i.objColor == 0){
	//blue;
	i.sprite_index = spr_needle_blue;
}else if(i.objColor == 1){
	//pink
	i.sprite_index = spr_needle_pink;
}else{
	//green
	i.sprite_index = spr_needle_green;
	flagGreenNeedle = true;
}

//switch statement to set parameters for the obstacle
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
//stop creating object when the game is over
if(global.gameOver) exit;

if(numOfObs <= 0){
	//decide to create the large needle obstacle or not
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
