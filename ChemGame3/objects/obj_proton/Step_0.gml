if (!global.quiz_active)
{
	instance_destroy(self);
    exit;
}

if (selected)
{
    x = mouse_x;
    y = mouse_y;
}