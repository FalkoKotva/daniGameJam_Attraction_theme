
var rm_id = asset_get_index(level);
try{
	room_goto(rm_id); // Neviem prečo chyba ale funguje to
} catch (error) {
	//show_debug_log(true);
	//show_debug_message(error);
}
