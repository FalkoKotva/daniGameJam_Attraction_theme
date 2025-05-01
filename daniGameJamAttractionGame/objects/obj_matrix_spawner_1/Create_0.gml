randomize();
// Spawnovanie pomalých prúdov (pozadie)
for (var i = 0; i < number_of_streams; i++) {
    var inst = instance_create_layer(irandom_range(offset,room_width- offset), irandom(room_height), layer, stream_type);
    inst.stream_speed = random_range(1, 2);
    inst.stream_fontsize = 12;
    inst.stream_color = make_color_rgb(0, 180, 0);
	inst.is_attractable = is_attractable;
}

// Spawnovanie rýchlych prúdov (popredie)
for (var i = 0; i < number_of_streams; i++) {
    var inst = instance_create_layer(irandom_range(offset,room_width -offset), irandom(room_height), layer, stream_type);
    inst.stream_speed = random_range(4, 6);
    inst.stream_fontsize = 18;
    inst.stream_color = make_color_rgb(0, 255, 0);
	inst.is_attractable = is_attractable;
}