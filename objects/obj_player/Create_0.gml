grav = 1.5;
jspd = 20;
vspd = 0;
jumping = false;
termVelocity = 50;
playerColor = 0;	//0 is blue 1 is pink
isHighScore = false;	//check if the score is new record
if(audio_is_playing(snd_main) == false){
	audio_play_sound(snd_main,50,true);	//play bgm when start the game
}
score = 0;