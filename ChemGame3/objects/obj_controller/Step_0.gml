
// limited time to answer
if (global.feedback_timer > 0)
{
    global.feedback_timer--;

    if (global.feedback_timer <= 0)
    {
        global.feedback = "";
    }
}

if(global.quiz_active && keyboard_check(vk_enter)) {
	var subans = obj_answer_box.item_count;
	
	if(subans = global.questions[obj_gate.question_index].answer) {
		global.xp += 100;
        global.correct_answers++;
	}
	
	global.quiz_active = false;
	instance_destroy(global.active_gate);
}

if(mouse_check_button_pressed(2)) {
	room_restart();
}