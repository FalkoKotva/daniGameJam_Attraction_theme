global.spawn_offset = 160;


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

if(room_get_name(room) == "Levels"){
	room_text = "Menu";
	show_debug_message(room_get_name(room));
	
	var _offsetx = 0;
	var _offsety = 0;
	var _number = 1;
	for (var i = 0; i < 3; i++){
		
		for (var j = 0; j < 5; j++){
			var _button_instance = instance_create_layer(x+ _offsetx, y + _offsety, layer,obj_level_button);
			_button_instance.number = _number;
			_button_instance.level = "Level" + string(_number) ;
			_offsetx = _offsetx + 98
			_number = _number + 1;
			_button_instance.locked = global.levels[i,j];
			

		}
		_offsetx = 0;
		_offsety =_offsety+124
		
	}
}
