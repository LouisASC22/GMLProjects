ysp += 0.1
xsp = 0

if keyboard_check(vk_left)
{
        xsp = -1
		oPlayer.image_speed = 1
}

else if keyboard_check(vk_right)
{
        xsp = +1
		oPlayer.image_speed = 1
}
else {
	oPlayer.image_speed = 0
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