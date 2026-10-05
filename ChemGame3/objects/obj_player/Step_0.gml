
// remove player physics when quizzing
if (global.quiz_active) {
    hsp = 0;
    exit;
}


// kind of complicated movement, helps for physics stuff
var move_input_l = keyboard_check(vk_right) - keyboard_check(vk_left);
var move_input_v = keyboard_check(vk_down) - keyboard_check(vk_up);

hsp = move_input_l * move_speed;
var old_x = x;
x += hsp;

if(!vspeed) {
	if (move_input_l < 0) {
	    sprite_index = spr_player_left;
		image_speed = 1;
	} else if (move_input_l > 0) {
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

vsp = move_input_v * move_speed;
var old_y = y;
y += vsp;

// running into walls
if (place_meeting(x, y, obj_solid)) {
    x = old_x;
}

if (dir = "side") {
	if (keyboard_check_pressed(vk_space) 
	//&& place_meeting(x, y + 2, obj_solid)
	) {
	    vspeed = jump_speed;
	}

	// jumping
	vspeed += gravity;
	if (vspeed > 10) {
	    vspeed = 10;
	}

	// wall climbing
	y += vspeed;
	if (place_meeting(x, y, obj_solid)) {
	    y = old_y;
	    vspeed = 0;
	}
}

if (dir = "top") {
	if (keyboard_check_pressed(vk_space) && self.jumping == false) {
		var orig_x = self.x
		var orig_y = self.y
	    vspeed = jump_speed;
	
	    self.jumping = true
	    self.y += 10
	    self.image_yscale = 1.2
		
		var jump_time = 0.3 // seconds
	    t = 0
	    if (t < jump_time) {
	        alarm[1] = 0.05
	    }
	    // animate height down
	    if (t < jump_time + 0.3) {
	        alarm[0] = 0.05
	    }
		
		self.jumping = false;
		self.x = orig_x
		self.y = orig_y
	}
	
}

if(y >= room_height - obj_player.sprite_height) {
	y = room_height - obj_player.sprite_height;
	vspeed = 0;
}

// y = clamp(y, 0, room_height - 2 * obj_player.sprite_height);