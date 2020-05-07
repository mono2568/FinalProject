if(obj_player.playerColor == 0){
	//blue
	draw_set_color(make_color_rgb(52,232,235));
}else{
	//pink
	draw_set_color(make_color_rgb(235,52,213));
}

draw_set_font(fnt_main);
//draw the score
draw_text(50,30,"score : " + string(string(score)));

//draw the score board when the game is over
if(global.gameOver){
	draw_set_color(make_color_rgb(54,54,54));
	draw_set_font(fnt_end);
	draw_sprite(spr_game_over,0,room_width/2,room_height/2);
	//change the text if the score is high score
	if(obj_player.isHighScore == true){
		draw_text(320,300,"High score!");
	}else{
		draw_text(320,300,"GAME OVER");
	}
	draw_text(320,400,"score : " + string(string(score)));
	
	
}