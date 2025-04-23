// Inherit the parent event
event_inherited();
if (locked){
	image_index = 0;
	draw_text(x - 24,y+24,"LOCKED");
} else {
	image_index = 1;
	draw_text(x - 24,y+24,"  START ");
	draw_set_font(title);
	
	draw_text(x-font_get_size(title)/2,y- font_get_size(title), number);
	draw_set_font(standard);
	
}
