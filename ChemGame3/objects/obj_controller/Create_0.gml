global.quiz_active = false;
global.active_gate = noone;
global.quiz_rendered = false;

global.xp = 0;
global.level = 1;
global.correct_answers = 0;

global.feedback = "";
global.feedback_timer = 0;

global.screen_width = camera_get_view_width(view_camera[0]);

txt = " ";

// Questions from this 8th grade chemistry worksheet
// https://www.chemistrylearner.com/protons-neutrons-and-electrons-practice-worksheets
global.questions = [
    {
        prompt: "How many protons are in a carbon atom?",
        answer: 6,
        element: "Carbon",
        symbol: "C",
        explanation: "Carbon has atomic number 6, so it has 6 protons."
    },
	
	 {
        prompt: "How many protons are in an oxygen atom?",
        answer: 8,
        element: "Oxygen",
        symbol: "O",
        explanation: "Oxygen has atomic number 8, so it has 8 protons."
    },

    {
        prompt: "How many protons are in a nitrogen atom?",
        answer: 7,
        element: "Nitrogen",
        symbol: "N",
        explanation: "Nitrogen has atomic number 7."
    },

    {
        prompt: "How many protons are in a sodium atom?",
        answer: 11,
        element: "Sodium",
        symbol: "Na",
        explanation: "Sodium has atomic number 11."
    },

    {
        prompt: "How many protons are in a helium atom?",
        answer: 2,
        element: "Helium",
        symbol: "He",
        explanation: "Helium has atomic number 2."
    }
]