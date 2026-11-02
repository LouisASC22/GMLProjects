open = false;

if(global.qtype = "protons") {
	question_index = irandom( global.protq - 1 );
} else {
	question_index = global.protq;
}

challenge_started = false;

answer_box = noone;

cooldown = 0;

proton_count = 0;

image_xscale = 2;
image_yscale = 2;