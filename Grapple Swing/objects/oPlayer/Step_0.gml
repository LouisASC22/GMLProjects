
if(mouse_check_button_pressed(mb_right)) {
	room_restart();
}

var move_input_l = keyboard_check(vk_right) - keyboard_check(vk_left);
var move_input_v = keyboard_check(vk_down) - keyboard_check(vk_up);

ysp += 0.1
xsp = 0

xsp = jumping ? move_input_l * move_speed * jump_move_mult : move_input_l * move_speed;
var old_x = x;

if(!jumping) {
    if (move_input_l != 0 or move_input_v != 0) {
        image_speed = 1;
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

if place_meeting(x, y+1, oBrick)
{
        ysp = 0
        if keyboard_check(vk_up)
        {
                ysp = -2        
        }
}

move_and_collide(xsp, ysp, oBrick)

if (place_meeting(x, y, oFlag))
{
    room_goto_next();
}
if (place_meeting(x, y, oSpike))
{
    room_restart();
}