for (var i = 0; i < array_length(stream_x); i++) {
    stream_y[i] += stream_speed[i];

    if (stream_y[i] > room_height + 50) {
        stream_y[i] = -irandom(300);
        stream_x[i] = irandom(room_width);
    }
}