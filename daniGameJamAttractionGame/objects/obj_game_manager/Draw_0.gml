draw_set_font(standard);
draw_self();

if(room_get_name(room) == "Menu_levels"){
	draw_set_font(title);
	draw_text(590,4, room_text);
	draw_set_font(standard);

	draw_set_font(title);
	draw_text(580,120, "Levels");
	draw_set_font(standard);
}

if(room_get_name(room) != "Menu" and room_get_name(room) != "Levels" and room_get_name(room) != "Settings"){
	
#region draw alert bar
	var _scale = 1;
	var _spr_ind = 1;
	var spc = (global.current_alert/ global.max_alert) * _scale;
	
	
	if(global.current_alert > global.max_alert*.75){
		_spr_ind = 1;
	} else if(global.current_alert <= global.max_alert*.75 and global.current_alert > global.max_alert*.5){
		_spr_ind = 2;
	} else if(global.current_alert <= global.max_alert*.5 and global.current_alert > global.max_alert*.25){
		_spr_ind = 3;
	}  else if(global.current_alert < global.max_alert*.25){
		_spr_ind = 4;
	}
	
	// draw BG
	draw_sprite_ext(spr_bar_ver,0,56,546,1,_scale,180,c_white,1);
	// draw current alert state
	draw_sprite_ext(spr_bar_ver,_spr_ind,56,546,1,spc,180,c_white,1);

#endregion


#region draw data bar
	_scale = 1;
	_spr_ind = 1;
	spc = (global.current_data/ global.max_data) * _scale;
	

	if(global.current_data > global.max_data*.75){
		_spr_ind = 4;
	} else if(global.current_data <= global.max_data*.75 and global.current_data > global.max_data*.5){
		_spr_ind = 3;
	} else if(global.current_data <= global.max_data*.5 and global.current_data > global.max_data*.25){
		_spr_ind = 2;
	}  else if(global.current_data < global.max_data*.25){
		_spr_ind = 1;
	}
	
	// draw BG
	draw_sprite_ext(spr_bar_hor,0,448,10,_scale,1,0,c_white,1);
	// draw current alert state
	draw_sprite_ext(spr_bar_hor,_spr_ind,448,10,spc,1,0,c_white,1);

#endregion
draw_set_color(c_white);

}

