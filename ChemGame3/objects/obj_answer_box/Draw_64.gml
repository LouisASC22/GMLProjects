if(global.quiz_active) {
	draw_rectangle(x, y, x + box_width, y + box_height, true);

	draw_set_halign(fa_center);

	if(global.qtype = "protons") {
		draw_text_transformed(x + box_width / 2, y + 20, "PROTON ANSWER AREA", 0.3, 0.3, 0);

		draw_text_transformed(x + box_width / 2, y + 50, "Protons: " + string(item_count), 0.3, 0.3, 0);
	} else if (global.qtype = "balance") {
		
		for (var i = 0; i < 4; i++) {

		    var bx = (display_get_gui_width() / 2) + 60 * (i - 2);

		    draw_rectangle(bx - 20, self.y + 30, bx + 20, self.y + 70, true);

		    draw_text(bx - 5, self.y + 10, "+");

		    draw_rectangle(bx - 20, self.y + 70, bx + 20, self.y + 110, true);

		    draw_text(bx - 5, self.y + 50, "-");
		}
	}
}