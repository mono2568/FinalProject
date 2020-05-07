//stop the game if the player dies
if(global.gameOver){	
	exit;
}
//detect key
scr_detect_key();
//check ground
scr_ground_check();
//check if the player wants to jump/can jump or not
scr_jump_check();
//check for the ground
scr_collision_check();
//change sprite
scr_set_sprite();