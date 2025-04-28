// Pohyb attractora podľa myši
x = mouse_x;
//y = mouse_y;

// Ak držíme ľavé tlačidlo
if (mouse_check_button(mb_left)) {
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
            
            if (dist < attract_radius) {
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
}
// Ak nie je držané tlačidlo
else {
    with (obj_matrix_stream_parent) {
        move_angle = 270;
    }
}




// Emituj častice stále
part_particles_create(ps, x, y, pt_blackhole, 10);

// --- Ručné nasávanie častíc do stredu ---
var list = ds_list_create();
collision_circle_list(x, y, attract_radius, obj_attractor, false, true, list, false);

for (var i = 0; i < ds_list_size(list); i++) {
    var inst = list[| i];

    // Počítaj vzdialenosť a smer
    var dist = point_distance(x, y, inst.x, inst.y);
    var dir_to_center = point_direction(inst.x, inst.y, x, y);

    if (dist > 5) {
        // Spiralovanie: pridaj rotáciu
        var spiral_dir = dir_to_center + 90; // kolmo na vektor do stredu
        inst.x += lengthdir_x(attract_force * (dist / attract_radius), spiral_dir);
        inst.y += lengthdir_y(attract_force * (dist / attract_radius), spiral_dir);

        // Jemné prisatie smerom ku stredu
        inst.x += lengthdir_x(attract_force * 0.5, dir_to_center);
        inst.y += lengthdir_y(attract_force * 0.5, dir_to_center);
    }
    else {
        // Ak už sú v strede, destroy
        instance_destroy(inst);
    }
}
ds_list_destroy(list);