// Spawnovanie pomalých prúdov (pozadie)
for (var i = 0; i < 150; i++) {
    var inst = instance_create_layer(irandom(room_width), irandom(room_height), "Instances", obj_matrix_stream_parent);
    inst.stream_speed = random_range(1, 2);
    inst.stream_fontsize = 12;
    inst.stream_color = make_color_rgb(0, 180, 0);
}

// Spawnovanie rýchlych prúdov (popredie)
for (var i = 0; i < 150; i++) {
    var inst = instance_create_layer(irandom(room_width), irandom(room_height), "Instances", obj_matrix_stream_parent);
    inst.stream_speed = random_range(4, 6);
    inst.stream_fontsize = 18;
    inst.stream_color = make_color_rgb(0, 255, 0);
}