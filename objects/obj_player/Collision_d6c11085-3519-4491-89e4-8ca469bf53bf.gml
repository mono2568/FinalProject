global.gameOver = true;
grav = 0;
global.speedModifier = 0;
image_speed = 0;
sprite_index = spr_player_dead;
show_debug_message("collide with needle");
if(!instance_exists(obj_replay)){
	instance_create_layer(room_width/2,room_height,"Instances",obj_replay);
}
