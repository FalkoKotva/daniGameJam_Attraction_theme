
if(room_get_name(room) != "Menu" and room_get_name(room) != "Levels" and room_get_name(room) != "Settings"){
	show_debug_message($"level 1 step");
	if (red_alpha > 0) {
	   red_alpha -= 0.025; // Changing 0.25 here will effect how fast the red fades, a higher number is a quicker fade
	}
	else {
	   red_alpha = 0;
	}
	if(global.hurt){
	    //audio_play_sound(sndHurt, 1, false);

	    if (red_alpha == 0) {
	       red_alpha = 1;
		   global.hurt = false;
	   }
	}

	// End of the level 
	if(global.current_alert == global.max_alert){
		game_restart();
	}

	if(global.current_data == global.max_data){
		room_goto(Levels);
	}
	
}