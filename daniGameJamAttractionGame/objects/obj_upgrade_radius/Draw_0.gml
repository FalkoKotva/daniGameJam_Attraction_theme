// Inherit the parent event
event_inherited();
draw_set_font(middle);
draw_text(x/4,y - 16, button_text);
draw_set_font(standard);
if !purchased{
	
image_index = 1;

} else {
	image_index = 0;

}


if (isHovering) {
    draw_set_font(middle);
	draw_sprite_ext(spr_tooltip,0,x,y,3,3,0,c_white,1);
	draw_text(x + 16,y - 160,$"Cost: 100\n{tooltip_text}");
	draw_set_font(standard);
} else {
    /* Mouse Leave event */
}

