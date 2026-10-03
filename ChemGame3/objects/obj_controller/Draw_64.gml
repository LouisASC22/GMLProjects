// Some GUI stuff, probably delete later
draw_sprite(spr_spark, -1, 24, window_get_width() - 48 - obj_spark.sprite_width);

draw_set_colour(c_white);
draw_set_font(fnt_hud);
draw_text(24, window_get_width() - 48, txt);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text_transformed(20, 20, "Chemistry Adventure", 0.3, 0.3, 0);

draw_text_transformed(20, 50, "Level: " + string(global.level), 0.3, 0.3, 0);

draw_text_transformed(20, 75, "XP: " + string(global.xp), 0.3, 0.3, 0);

draw_text_transformed(20, 100, "Questions Correct: " + string(global.correct_answers), 0.3, 0.3, 0);