/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(middle); // zmeň na svoj font

var msg = is_win ? "YOU WIN!" : "YOU LOSE!";
var col = is_win ? c_lime : c_red;

draw_set_color(col);
draw_text(display_get_gui_width()/2, display_get_gui_height()/2, msg);

draw_set_font(standard); // zmeň na svoj font
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);