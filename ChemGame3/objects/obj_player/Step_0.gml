
// remove player physics when quizzing
if (global.quiz_active) {
    hsp = 0;
    exit;
}


// kind of complicated movement, helps for physics stuff
var move_input = keyboard_check(vk_right) - keyboard_check(vk_left);

hsp = move_input * move_speed;
var old_x = x;
x += hsp;

if(!vspeed) {
	if (move_input < 0) {
	    sprite_index = spr_player_left;
		image_speed = 1;
	} else if (move_input > 0) {
	    sprite_index = spr_player_right;
		image_speed = 1;
	} else {
	    sprite_index = spr_player_down;
		image_index = 0;
		image_speed = 0;
	}
} else {
	image_speed = 0;
}

// running into walls
if (place_meeting(x, y, obj_solid)) {
    x = old_x;
}

if (keyboard_check_pressed(vk_space) 
//&& place_meeting(x, y + 2, obj_solid)
) {
    vsp = 2 * jump_speed;
}

// jumping
vsp += gravity;
if (vsp > 10) {
    vsp = 10;
}

// wall climbing
var old_y = y;
y += vsp;
if (place_meeting(x, y, obj_solid)) {
    y = old_y;
    vsp = 0;
}

if(y >= room_height - obj_player.sprite_height) {
	y = room_height - obj_player.sprite_height;
	vspeed = 0;
}

// y = clamp(y, 0, room_height - 2 * obj_player.sprite_height);