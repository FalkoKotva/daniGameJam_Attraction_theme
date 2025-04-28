/// @description Draw the stream with fading trail

draw_set_font(standard); // alebo default font
draw_set_color(stream_color);

// Hlavný znak
draw_set_alpha(1);
draw_text(x, y, stream_character);

// Trail znaky
for (var trail = 1; trail <= trail_length; trail++) {
    draw_set_alpha(1 - trail * 0.15); // slabšie stopy
    draw_text(x, y - trail * stream_fontsize, stream_character);
}

// Reset opacity
draw_set_alpha(1);
