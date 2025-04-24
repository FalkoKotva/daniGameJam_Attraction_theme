global.levels = [
[false,true,true,true,true],
[true,true,true,true,true],
[true,true,true,true,true],
]
room_text = "";

if(room_get_name(room) == "Menu_levels"){
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
