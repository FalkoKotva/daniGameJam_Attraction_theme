//Player data
global.money = 1000;
global.attract_radius = 500;
global.attract_force = 5;
//Upgrades [radius, alert]
global.upgrades = [false,false];
global.number_of_use = [3,3]

global.spawn_offset = 160;
global.current_level = 0

global.levels = [
[false,true,true,true,true],
//[true,true,true,true,true],
//[true,true,true,true,true],
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


// Play bg music
audio_play_sound(bg_music,0,true,1,0,random_range(0.9,1.1));


