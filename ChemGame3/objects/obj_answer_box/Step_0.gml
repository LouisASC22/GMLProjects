
if(global.qtype = "protons") {
	item_count = 0;

	with (obj_proton)
	{
	    if (point_in_rectangle(x, y, other.x, other.y, 
			other.x + other.box_width, other.y + other.box_height)) {
	        other.item_count++;
	    }
	}
}


if(global.quiz_active && mouse_check_button_pressed(mb_left)) {
	var mx = device_mouse_x_to_gui(0);
	var my = device_mouse_y_to_gui(0);

	// show_debug_message(string(mx) + ", " + string(my));

	// this is possibly the worst way to check all of this
	// toby fox would be dissappointed in me if he didn't also do this
	for (var i = 0; i < 4; i++) {

		var bx = (display_get_gui_width() / 2) + 60 * (i - 2);

		if(point_in_rectangle(mx, my, bx - 20, self.y + 30, bx + 20, self.y + 70)) {
			global.coefficients[i]++;
		}

		if(point_in_rectangle(mx, my, bx - 20, self.y + 70, bx + 20, self.y + 110)) {
			global.coefficients[i]--;
		}
	}
}