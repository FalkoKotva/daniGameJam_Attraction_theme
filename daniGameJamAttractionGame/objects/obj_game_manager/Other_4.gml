global.max_data = 0;
spawners = [];

if((room_get_name(room) != "Menu") and (room_get_name(room) != "Levels") and (room_get_name(room) != "Settings")){
	for (var i = 0; i < instance_number(obj_data_spawner); ++i;)
	{
		var spawner = instance_find(obj_data_spawner,i)
		if(!spawner.is_protecting){
	    spawners[i] = spawner;
		global.max_data += (spawners[i].number_of_streams*2);
		}
	}
	show_debug_message($"Max data: {spawners}");
	show_debug_message($"Max data: {global.max_data}");
}

if(room_get_name(room) == "Levels"){
	room_text = "Menu";
	show_debug_message(room_get_name(room));
	
	var _offsetx = 0;
	var _offsety = 0;
	var _number = 1;
	for (var i = 0; i < 3; i++){
		
		for (var j = 0; j < 5; j++){
			var _button_instance = instance_create_layer(441+ _offsetx, 246 + _offsety, layer,obj_level_button);
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