/// @description Move the stream down

// Normálny pád
x += lengthdir_x(stream_speed, move_angle);
y += lengthdir_y(stream_speed, move_angle);

if (y > room_height + trail_length * stream_fontsize) {
    // Resetuj hore
	move_wrap(false,true,64);

}