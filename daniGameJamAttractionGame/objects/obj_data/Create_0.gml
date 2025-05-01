/// @description Initialize the matrix stream
image_speed = 0;
// Parametre
stream_speed = 2; // rýchlosť
stream_fontsize = 12; // veľkosť písma
stream_color = c_lime; // farba prúdu
stream_character = chr(irandom_range(33, 126)); // náhodný znak
is_attractable = true; // Tento stream môže byť priťahovaný
is_attracted = false; // Momentálny stav priťahovania

// Uhol padania (default dole)
move_angle = 270;
// Koľko stôp bude za hlavným znakom
trail_length = 6;


ang = 45;
frame = 0;