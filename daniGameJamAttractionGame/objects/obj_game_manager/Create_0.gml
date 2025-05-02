//Player data
global.money = 0;



global.spawn_offset = 160;
global.current_level = 0

global.levels = [
[false,true,true,true,true],
[true,true,true,true,true],
[true,true,true,true,true],
]
room_text = "";
red_alpha = 0;
global.hurt = false;
global.current_alert = 0;
global.max_alert = 100;
global.current_data = 0;
global.max_data = 0;

spawners = [];
if(room_get_name(room) != "Menu" and room_get_name(room) != "Levels" and room_get_name(room) != "Settings"){
	window_set_cursor(cr_none);
} else {
	window_set_cursor(cr_arrow);
}


