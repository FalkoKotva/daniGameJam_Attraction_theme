// Inherit the parent event
event_inherited();


var dist = point_distance(obj_attractor.x, obj_attractor.y, x,y);
var angle_to_attractor = point_direction(x, y, obj_attractor.x, obj_attractor.y);
// Pohyb smerom k attractoru
 if (dist < 100&& y+32 > obj_attractor.y){
	var pull_strength = (1 - dist / 100) * 2 * 2;
	x += lengthdir_x(pull_strength, angle_to_attractor);
	y += lengthdir_y(pull_strength, angle_to_attractor);
	
	if (dist < 10) {
		if(is_protecting){
			global.current_alert += value;
		} else {
			global.current_data += value;
		}
				
	    instance_destroy(self);
}
 }
