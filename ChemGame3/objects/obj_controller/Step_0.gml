
// limited time to answer
if (global.feedback_timer > 0)
{
    global.feedback_timer--;

    if (global.feedback_timer <= 0)
    {
        global.feedback = "";
    }
}

if(mouse_check_button_pressed(2)) {
	room_restart();
}