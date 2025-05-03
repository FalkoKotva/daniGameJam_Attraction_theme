/// @description Initialize attractor

//global.attract_radius = 500; // Dosah, v ktorom priťahuje streamy
attract_force = 5;  // Sila, akou priťahuje
invincible = true;
//Particle system
ps = part_system_create();
part_system_depth(ps, -10);

// Typ častíc
pt_blackhole = part_type_create();


part_sys = part_system_create();
part_system_depth(part_sys, 10); // vykresliť nad ostatnými

part_ring = part_type_create();
part_type_shape(part_ring, pt_shape_flare);
part_type_size(part_ring, 0.4, 0.6, 0, 0);
part_type_alpha2(part_ring, 1, 0); // fade out
part_type_speed(part_ring, 1, 2, 0, 0);
part_type_direction(part_ring, 0, 360, 0, 20); // náhodný smer
part_type_blend(part_ring, true); // additívne miešanie pre glow
part_type_life(part_ring, 15, 30);
part_type_color1(part_ring,  make_color_rgb(27,8,76));