if(global.quiz_active) {
	draw_rectangle(x, y, x + box_width, y + box_height, true);

	draw_set_halign(fa_center);

	draw_text_transformed(x + box_width / 2, y + 20, "PROTON ANSWER AREA", 0.3, 0.3, 0);

	draw_text_transformed(x + box_width / 2, y + 50, "Protons: " + string(item_count), 0.3, 0.3, 0);
}