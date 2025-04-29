// Pohyb attractora podľa myši
x = mouse_x;
//y = mouse_y;

// Ak držíme ľavé tlačidlo
if (mouse_check_button(mb_left)) {
	audio_play_sound(snd_menu_button,0,false,1,0,random_range(0.5,0.8));
	
	image_speed = 1;
    var list = ds_list_create();
    
    collision_circle_list(x, y, attract_radius, obj_matrix_stream_parent, false, true, list, false);
    
    // Najprv všetky streamy nastavíme na "voľný pád"
    with (obj_matrix_stream_parent) {
        is_being_attracted = false; // vlastná premenná v streame
    }

    var count = ds_list_size(list);
    for (var i = 0; i < count; i++) {
        var inst = list[| i];

        if (inst.is_attractable) {
            var dist = point_distance(x, y, inst.x, inst.y);
            
            if (dist < attract_radius && y+32 > inst.y) {
                inst.is_being_attracted = true; // tento stream je aktuálne v dosahu

                var angle_to_attractor = point_direction(inst.x, inst.y, x, y);

                // Plynulé otáčanie
                inst.move_angle = lerp(inst.move_angle, angle_to_attractor, 0.2);

                // Pohyb smerom k attractoru
                var pull_strength = (1 - dist / attract_radius) * attract_force * 2;
                inst.x += lengthdir_x(pull_strength, angle_to_attractor);
                inst.y += lengthdir_y(pull_strength, angle_to_attractor);

                // Ak je veľmi blízko attractoru
                if (dist < 10) {
                    instance_destroy(inst);
                }
            }
        }
    }

    ds_list_destroy(list);

    // Teraz všetky streamy, ktoré NIE sú priťahované, padajú normálne dole
    with (obj_matrix_stream_parent) {
        if (!is_being_attracted) {
            move_angle = 270; // nastav smer padania
        }
    }
	
	
	for (var i = 0; i < 5; i++) {
	    var radius = irandom_range(40, 80);
	    var angle = irandom(360);
	    var xx = x + lengthdir_x(radius, angle);
	    var yy = y + lengthdir_y(radius, angle);
	    part_particles_create(part_sys, xx, yy, part_ring, 1);
	}
}
// Ak nie je držané tlačidlo
else {
    with (obj_matrix_stream_parent) {
        move_angle = 270;
    }
	image_speed = 0;
	audio_stop_sound(snd_menu_button);
}



