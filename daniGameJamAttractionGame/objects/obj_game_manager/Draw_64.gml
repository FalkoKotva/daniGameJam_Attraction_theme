if(room_get_name(room) != "Menu" and room_get_name(room) != "Levels" and room_get_name(room) != "Settings"){
	if (red_alpha > 0) {
	   var x1 = 0;
	   var y1 = 0;
	   var x2 = display_get_gui_width();
	   var y2 = display_get_gui_height();
   
	   draw_set_alpha(red_alpha);
	   draw_set_color(c_red);
	   draw_rectangle(x1,y1,x2,y2,false);
	   draw_set_color(c_white);
	   draw_set_alpha(1);
	}
}