var txt = "Coins: " + string(coins);

draw_sprite(spr_coin, -1, 24, window_get_width() - 48 - obj_coin.sprite_width);

draw_set_colour(c_white);
draw_set_font(fnt_hud);
draw_text(24, window_get_width() - 48, txt);
