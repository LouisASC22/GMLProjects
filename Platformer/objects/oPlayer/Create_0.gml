window_set_size(1280, 720);
oBrick.image_speed = 0
oFlag.image_speed = 0
oPlayer.image_speed = 0

// find the background layer
if (layer_background_get_id(1) = sBack) {
	var bg_id = layer_background_create(1, sBack);
	layer_background_htiled(bg_id, true);
	layer_background_vtiled(bg_id, true);
	layer_background_stretch(bg_id, true);
	layer_background_xscale(bg_id, 1);
	layer_background_speed(bg_id, 0);
}
	

xsp = 0;
ysp = 0;

