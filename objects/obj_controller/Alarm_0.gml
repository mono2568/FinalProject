randomize();
if(numOfObs <= 0){
	numOfObs = choose(0,1,1,1,2,2,2,3,3);
	if(global.speedModifier > 1.2){
		numOfObs = choose(1,1,2,2,3,3,4,5,5);
	}
}
var i = instance_create_layer(room_width + 100 , room_height - 75, "Instances", obj_obstacle);

i.objColor = choose(0,1);
if(i.objColor == 0){
	//blue;
	i.sprite_index = choose(spr_needle_blue,spr_needle_blue);
}else{
	//pink
	i.sprite_index = choose(spr_needle_pink,spr_needle_pink);
}

switch(i.sprite_index){
	case spr_needle_blue:
	// when needle_blue
	i.y = 704;
	case spr_needle_pink:
	// when needle_pink
	i.y = 704;
	
}
numOfObs --;
if(global.gameOver) exit;

if(numOfObs <= 0){
	alarm[0] = room_speed * 0.2*global.speedModifier*10;
}else{
	show_debug_message(global.speedModifier);
	alarm[0] = room_speed * 0.2*global.speedModifier;
}
