jumpKey = keyboard_check_pressed(vk_space);
jumpKeyAlt = keyboard_check_pressed(vk_up);
downKey = keyboard_check_pressed(vk_down);
if(keyboard_check_pressed(vk_left)){
	if(playerColor == 1){
		instance_create_layer(x+50,y-60,"Effects",obj_color_change_effect);
		playerColor = 0;
	}
}
if(keyboard_check_pressed(vk_right)){
	if(playerColor == 0){
		instance_create_layer(x+50,y-60,"Effects",obj_color_change_effect);
		playerColor = 1;
	}
}
