// Nastavenie
layers = 4; // vrstva 0 = vzadu, 1 = vpredu
streams_per_layer = 150;

stream_x = [];
stream_y = [];
stream_speed = [];
stream_fontsize = [];
stream_color = [];

// Inicializuj všetky prúdy
for (var _layer = 0; _layer < layers; _layer++) {
    for (var i = 0; i < streams_per_layer; i++) {
        var index = array_length(stream_x);

        stream_x[index] = irandom(room_width);
        stream_y[index] = irandom(room_height);
        
        // nastavenie vrstvy
        if (_layer == 0) { // pozadie - pomalé, malé
            stream_speed[index] = random_range(1, 2);
            stream_fontsize[index] = 12;
            stream_color[index] = make_color_rgb(0, 90, 0);
        } if (_layer == 1) { // popredie - rýchle, veľké
            stream_speed[index] = random_range(3, 4);
            stream_fontsize[index] = 18;
            stream_color[index] = make_color_rgb(0, 180, 0);
        } if (_layer == 2) { // popredie - rýchle, veľké
            stream_speed[index] = random_range(5, 6);
            stream_fontsize[index] = 24;
            stream_color[index] = make_color_rgb(0, 230, 0);
        } if (_layer == 3) { // popredie - rýchle, veľké
            stream_speed[index] = random_range(7, 8);
            stream_fontsize[index] = 32;
            stream_color[index] = make_color_rgb(0, 255, 0);
        }
    }
}