// remove player physics when quizzing
if (global.quiz_active) {
    hsp = 0;
    exit;
}


// kind of complicated movement, helps for physics stuff
var move_input_l = keyboard_check(vk_right) - keyboard_check(vk_left);
var move_input_v = keyboard_check(vk_down) - keyboard_check(vk_up);

hsp = jumping ? move_input_l * move_speed * jump_move_mult : move_input_l * move_speed;
var old_x = x;
x += hsp;

if(!jumping) {
    if (move_input_l != 0 or move_input_v != 0) {
        image_speed = 0.5;
      	if (move_input_l < 0) {
      	    sprite_index = spr_player_left;
      	} else if (move_input_l > 0) {
      	    sprite_index = spr_player_right;
      	} else if (move_input_v < 0) {
            sprite_index = spr_player_up;
        } else if (move_input_v > 0) {
      	    sprite_index = spr_player_down;
      	}
    }
    else {
        image_speed = 0;
    }
}


// running into walls
if (place_meeting(x, y, obj_solid)) {
    x = old_x;
}

if (dir = "side") {
	gravity = 0.45;
	
	if (keyboard_check_pressed(vk_space) 
	//&& place_meeting(x, y + 2, obj_solid)
	) {
	    jump_speed = jump_height;
	}

	// jumping
	jump_speed -= grav;
	if (jump_speed > 10) {
	    jump_speed = 10;
	}

	// wall climbing
	var old_y = y;
	y += jump_speed;
	if (place_meeting(x, y, obj_solid)) {
	    y = old_y;
	    jump_speed = 0;
	}
}

if (dir = "top") {
<<<<<<< HEAD
	gravity = 0;
	
=======
    // For jumping, since GameMaker is in a top-down view from default, it's probably
    // better to just check if jumping is true if we want to jump over obstacles,
    // not actually increment y
>>>>>>> 74f7972bf5db574bd169eb6490ae3d007317ab60
	if (keyboard_check_pressed(vk_space) && self.jumping == false) {
	    self.jumping = true; jump_speed = jump_height;
	}
    
    if (jumping) {
        z += jump_speed; jump_speed -= grav;
        if (z <= 0) {
            z = 0; jump_speed = 0;
            jumping = false;
        }
    }
	
	vsp = jumping ? move_input_v * move_speed * jump_move_mult : move_input_v * move_speed;
	y += vsp;
}

// This stuff may specifically need to move to side, in top-down view it would be better
// to lock to the viewport edges I think?
if(y >= room_height - obj_player.sprite_height) {
	y = room_height - obj_player.sprite_height;
	jump_speed = 0;
}

// y = clamp(y, 0, room_height - 2 * obj_player.sprite_height);