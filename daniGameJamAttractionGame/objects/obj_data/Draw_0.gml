/// @description Draw the stream with fading trail
draw_self();

draw_set_font(standard); // alebo default font
draw_set_color(stream_color);

// Hlavný znak
draw_set_alpha(1);
//draw_text(x, y, stream_character);
var offset = 16;
// Trail znaky
for (var trail = 2; trail <= stream_speed; trail++) {
	draw_sprite_ext(spr_data_mail,0,x,y- offset,1 - trail * 0.05,1 - trail * 0.05,0,c_white,1 - trail * 0.15);
	//image_alpha = 1 - trail * 0.15;
    //draw_set_alpha(1 - trail * 0.15); // slabšie stopy
    //draw_text(x, y - trail * stream_fontsize, stream_character);
	offset = offset + 16;
}

// Reset opacity
draw_set_alpha(1);
