
if(room_get_name(room) != "Menu" and room_get_name(room) != "Levels" and room_get_name(room) != "Settings"){

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

	// Lose
	if(global.current_alert == global.max_alert){
		global.current_data = 0;
		global.current_alert = 0;
		global.max_data = 0;
		room_goto(Levels)
		
		
	}
	// Win
	if(global.current_data == global.max_data and global.max_data != 0){
		global.current_data = 0;
		global.current_alert = 0;
		global.max_data = 0;

		if (global.current_level <= 4){
			global.levels[0,global.current_level] = false; 
		} else 	if (global.current_level > 4 and global.current_level < 10){
			global.levels[1,global.current_level] = false; 
		} else 	if (global.current_level >= 10){
			global.levels[2,global.current_level] = false; 
		} 
		show_debug_message($"Levels: {global.max_data}");
		room_goto(Levels);

	}
	
}