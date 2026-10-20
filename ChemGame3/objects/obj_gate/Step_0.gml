// finds the nearest player to the gate
// https://www.reddit.com/r/gamemaker/comments/12kcr2u/instance_nearest_in_an_array_of_objects/
var player = instance_nearest(x, y, obj_player);

if (player != noone && cooldown <= 0 && !global.quiz_active && !self.open) {

	var dist = point_distance(x, y, player.x, player.y);
	
	if (dist < 100) {
        global.quiz_active = true;
        global.active_gate = id;

        challenge_started = true;

        var q = global.questions[question_index];
		
		proton_count = q.answer + 4;

        if (proton_count < 10)
            proton_count = 10;

        if (proton_count > 18)
            proton_count = 18;
	}
}