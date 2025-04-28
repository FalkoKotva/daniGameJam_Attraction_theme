draw_set_alpha(1);

// cez všetky prúdy
for (var i = 0; i < array_length(stream_x); i++) {
    var size = stream_fontsize[i];
    var pos_x = stream_x[i];
    var pos_y = stream_y[i];

    // zmen font veľkosť
    draw_set_font(standard); // font musíš mať (alebo použij default)
    draw_set_color(stream_color[i]);

    var character = chr(irandom_range(33, 126)); // náhodný znak

    // Hlavný znak
    draw_set_alpha(1);
    draw_text(pos_x, pos_y, character);

    // Trail - postupne slabšie znaky pod ním
    for (var trail = 1; trail <= 5; trail++) {
        draw_set_alpha(1 - trail * 0.15); // každá stopa je slabšia
        draw_text(pos_x, pos_y - trail * size, character);
    }
}

draw_set_alpha(1);