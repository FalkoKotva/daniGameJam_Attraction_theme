/// @description Insert description here
// You can write your code in this editor
timer += 1;

if (timer >= delay) {
	global.current_data = 0;
	global.current_alert = 0;
    room_goto(room_to_go); // zmeniť na tvoju levels room
}