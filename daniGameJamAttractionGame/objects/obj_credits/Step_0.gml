/// @description Insert description here
// You can write your code in this editor
/// Step event
text_y -= scroll_speed;

// Optional: Reset alebo zničenie objektu po skončení
if (text_y + array_length(credit_list) * 24 < 0) {
    instance_destroy(); // Alebo resetuj pozíciu textu
}