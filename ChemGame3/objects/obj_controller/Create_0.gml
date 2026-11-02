global.quiz_active = false;
global.active_gate = noone;
global.quiz_rendered = false;

global.xp = 0;
global.level = 1;
global.correct_answers = 0;

global.feedback = "";
global.feedback_timer = 0;

global.screen_width = camera_get_view_width(view_camera[0]);

// audio_play_sound(msc_walking, 1, true);
window_set_size(1200, 800);

txt = " ";

global.qtype = "balance";
global.protq = 5;
global.balq = 1;

global.coefficients = [1, 1, 1, 1];

// Questions from this 8th grade chemistry worksheet
// https://www.chemistrylearner.com/protons-neutrons-and-electrons-practice-worksheets
global.questions = [
    {
		type: "protons",
        prompt: "How many protons are in a carbon atom?",
        answer: 6,
        element: "Carbon",
        symbol: "C",
        explanation: "Carbon has atomic number 6, so it has 6 protons."
    },
	
	 {
		type: "protons",
        prompt: "How many protons are in an oxygen atom?",
        answer: 8,
        element: "Oxygen",
        symbol: "O",
        explanation: "Oxygen has atomic number 8, so it has 8 protons."
    },

    {
		type: "protons",
        prompt: "How many protons are in a nitrogen atom?",
        answer: 7,
        element: "Nitrogen",
        symbol: "N",
        explanation: "Nitrogen has atomic number 7."
    },

    {
		type: "protons",
        prompt: "How many protons are in a sodium atom?",
        answer: 11,
        element: "Sodium",
        symbol: "Na",
        explanation: "Sodium has atomic number 11."
    },

    {
		type: "protons",
        prompt: "How many protons are in a helium atom?",
        answer: 2,
        element: "Helium",
        symbol: "He",
        explanation: "Helium has atomic number 2."
    },
	
	{
		type: "balance",
		prompt: "Balance the following chemical equation:",
		reactant1: "H2",
		reactant2: "O2",
		product1: "H2O",
		product2: 0,
		answer: [1, 1, 1, 1],
		explanation: "2 H2 + O2 produces 2 H2O."
		
	}
		
]