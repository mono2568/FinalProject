if(obj_player.falling == false and obj_player.jumping == false and global.gameOver == false){
	var par = instance_create_layer(obj_player.x,obj_player.y+7,"Instances",obj_particle);
	par.image_angle = random_range(140,180);
	par.direction = par.image_angle;
	par.sprite_index = particleSprite;
}