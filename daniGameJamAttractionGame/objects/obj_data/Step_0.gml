/// @description Move the stream down

// Normálny pád
x += lengthdir_x(stream_speed, move_angle);
y += lengthdir_y(stream_speed, move_angle);

if (y > room_height + trail_length * stream_fontsize) {
    // Resetuj hore
    y = -irandom(300);
    x = irandom_range(160,room_width - 160);
	move_angle = 270; // reset na padanie dole
    // Nový náhodný znak
    stream_character = chr(irandom_range(33, 126));
}