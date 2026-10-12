// Replaced the previous code with a custom draw event
var scale = 3 + (z / jump_peak) * max_scale;
draw_sprite_ext(sprite_index, image_index, x, y - z,  scale, scale, 0, c_white, 1)