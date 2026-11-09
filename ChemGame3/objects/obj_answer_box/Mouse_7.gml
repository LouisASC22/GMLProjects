var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);


// this is possibly the worst way to check all of this
// toby fox would be dissappointed in me if he didn't also do this
for (var i = 0; i < 3; i++) {

	var bx = (display_get_gui_width() / 2) + 60 * (i - 2);

	if(point_in_rectangle(mx, my, bx - 20, self.y + 30, bx + 20, self.y + 70)) {
		global.coefficients[i]++;
	}

	if(point_in_rectangle(mx, my, bx - 20, self.y + 70, bx + 20, self.y + 110)) {
		global.coefficients[i]--;
	}
}
