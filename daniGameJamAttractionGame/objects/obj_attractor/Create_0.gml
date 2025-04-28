/// @description Initialize attractor

attract_radius = 200; // Dosah, v ktorom priťahuje streamy
attract_force = 2;  // Sila, akou priťahuje

//Particle system
ps = part_system_create();
part_system_depth(ps, -10);

// Typ častíc
pt_blackhole = part_type_create();

// Particle základ
part_type_shape(pt_blackhole, pt_shape_pixel);
part_type_size(pt_blackhole, 0.3, 0.8, 0, 0); 
part_type_color1(pt_blackhole, make_color_rgb(0, 255, 0));
part_type_alpha3(pt_blackhole, 1, 0.5, 0); // postupný fade out
part_type_life(pt_blackhole, 40, 80);

// Nastav počiatočnú rýchlosť
part_type_speed(pt_blackhole, 1, 3, -0.02, -0.01);

// Gravity OFF - budeme si ťahať sami v Step
part_type_gravity(pt_blackhole, 0, 0);

// Blend ON pre krásne žiarenie
part_type_blend(pt_blackhole, true);