if(global.qtype = "protons") {
	color = c_white;
} else if (global.qtype = "balance") {
	color = c_yellow;
} else if(global.qtype = "swig") {
	color = c_red;
}

draw_sprite_ext(sprite_index, image_index, x, y, 2 ,2, 0, color, 1);