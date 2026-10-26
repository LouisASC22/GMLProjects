if (!global.quiz_active)
{
	instance_destroy(self);
    exit;
}

if (selected)
{
    x = mouse_x - sprite_width / 2;
    y = mouse_y - sprite_width / 2;
}