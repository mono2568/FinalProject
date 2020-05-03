draw_set_color(make_color_rgb(54,54,54));
draw_set_font(fnt_end);
ini_open("saveData.ini");
score = ini_read_real("Variables","score",0); //The third value here will set the score variable if there is no save file
ini_close();
show_debug_message(score);
draw_text(490,160,"High score");
draw_set_font(fnt_title);
draw_text(600,260, score);
	