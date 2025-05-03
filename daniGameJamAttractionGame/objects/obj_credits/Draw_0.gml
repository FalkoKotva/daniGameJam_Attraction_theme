/// @description Insert description here
// You can write your code in this editor
/// Draw event
draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_set_font(middle);
draw_set_color(c_lime);
if (font_used != -1) draw_set_font(font_used);

var center_x = room_width / 2;
var line_height = 48; // výška riadku – uprav podľa fontu

for (var i = 0; i < array_length(credit_list); i++) {
    var _y = text_y + i * line_height;
    draw_text(center_x, _y, credit_list[i]);
}
draw_set_color(c_white);
draw_set_font(standard);

draw_set_halign(fa_left);
draw_set_valign(fa_top);