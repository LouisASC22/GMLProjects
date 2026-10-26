dir = "top";
move_speed = 4;
jump_move_mult = 0.3;
hsp = 0;
vsp = 0;
image_speed = 0;


grav = 0.25; 
// The reason gravity is still applying is that the variable "gravity" is built-in to the
// engine, and automatically added to the variable vspeed per step I believe. So gravity
// and vspeed needed to be renamed
z = 0;
jump_height = 5;
jump_speed = 0;
jumping = false;

// Globals used to scale sprite when jumping
max_scale = 0.3;
jump_peak = power(jump_height, 2) / (2*grav);