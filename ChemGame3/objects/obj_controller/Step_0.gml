
// limited time to answer
if (global.feedback_timer > 0)
{
    global.feedback_timer--;

    if (global.feedback_timer <= 0)
    {
        global.feedback = "";
    }
}

if(global.quiz_active) {
	
	if(!global.quiz_rendered) {
	
		instance_create_depth(self.x + 150, self.y + 300, -100, obj_answer_box);
	
		var pcount = global.active_gate.proton_count;
	
		for (var i = 0; i < pcount; i++) {
		
			instance_create_depth(
				x + global.screen_width/2 - 30 + (i - (pcount - 1) / 2) * (sprite_get_width(spr_proton) + 5),
				y + 160, -100, obj_proton
			);
		
		}
	}
	
	global.quiz_rendered = true;
	
	if(keyboard_check(vk_enter)) {
		var subans = obj_answer_box.item_count;
	
		if(subans = global.questions[global.active_gate.question_index].answer) {
			global.xp += 100;
	        global.correct_answers++;
		}
		
		global.quiz_active = false;
		instance_destroy(global.active_gate);
		global.quiz_rendered = false;
	}
}

if(mouse_check_button_pressed(2)) {
	room_restart();
}