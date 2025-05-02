/// @description Draw the data with fading trail + animation on top
draw_self();

draw_set_font(standard); // alebo default font
draw_set_color(stream_color);

// Hlavný znak
draw_set_alpha(1);
//draw_text(x, y, stream_character);
var offset = 16;
// Trail znaky
for (var trail = 2; trail <= stream_speed; trail++) {
	draw_sprite_ext(trial_sprite,0,x,y- offset,1 - trail * 0.05,1 - trail * 0.05,0,c_white,1 - trail * 0.15);
	offset = offset + 16;
}

// Reset opacity
draw_set_alpha(1);


#region Draw reflex animation

// Animation
	image_angle = dsin(ang + current_time/10) * 10;
	frame += 0.15

// stencil buffer setup
gpu_set_stencil_enable(true);
gpu_set_stencil_func(cmpfunc_notequal);
gpu_set_stencil_pass(stencilop_replace);
gpu_set_stencil_ref(1);

// Draw the sprite to recieve the effect
draw_clear_stencil(0);
gpu_set_alphatestenable(true);
draw_self();
gpu_set_alphatestenable(false);

// Draw the sprite containing the effect
gpu_set_stencil_ref(0);
draw_sprite(reflex_animation, frame, x,y);
gpu_set_stencil_enable(false);

#endregion