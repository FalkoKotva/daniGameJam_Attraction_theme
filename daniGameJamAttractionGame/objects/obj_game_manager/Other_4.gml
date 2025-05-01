if((room_get_name(room) != "Menu") and (room_get_name(room) != "Levels") and (room_get_name(room) != "Settings")){
	for (var i = 0; i < instance_number(obj_data_spawner); ++i;)
	{
	    spawners[i] = instance_find(obj_data_spawner,i);
		global.max_data += spawners[i].number_of_streams*2;
	}
	show_debug_message($"Max data: {global.max_data}");
}