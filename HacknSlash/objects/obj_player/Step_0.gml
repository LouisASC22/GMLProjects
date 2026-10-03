
// checks moving directions
var move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
var move_y = keyboard_check(vk_down)  - keyboard_check(vk_up);

// diagonal movement is polarity locked, same speed
if (move_x != 0 && move_y != 0)
{
    move_x *= 0.70710678;
    move_y *= 0.70710678;
}

var moving = (move_x != 0 || move_y != 0);

if (moving)
{
    // different walking animations
    if (move_x != 0)
    {
        sprite_index = spr_player_walk_side;
        image_xscale = sign(move_x);
    }
    else if (move_y > 0)
    {
        sprite_index = spr_player_walk_down;
    }
    else
    {
        sprite_index = spr_player_walk_up;
    }

    image_speed = 1;
}
else
{
    image_speed = 0;
    image_index = 0;
}

// each axis is chacked at one time so we can slide on walls
// prevents glitching, horizontal has priority over vertical
var next_x = x + move_x * move_speed;
if (!place_meeting(next_x, y, obj_collision_parent))
{
    x = next_x;
}

var next_y = y + move_y * move_speed;
if (!place_meeting(x, next_y, obj_collision_parent))
{
    y = next_y;
}