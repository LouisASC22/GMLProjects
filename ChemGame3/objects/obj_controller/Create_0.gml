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

// used for different types of problems
global.qtype = "balance"; // the current type of problem
global.protq = 5; // the number of proton questions
global.balq = 4; // the number of balancing questions

global.coefficients = [1, 1, 1, 0]; // the balancing coefficients
global.balprod = 1; // how many products of balancing


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
		answer: [2, 1, 2, 0],
		explanation: "2 H2 + O2 produces 2 H2O."
	},
	
	{
		type: "balance",
		prompt: "Balance the following chemical equation:",
		reactant1: "Sb",
		reactant2: "Cl2",
		product1: "SbCl3",
		product2: 0,
		answer: [2, 3, 2, 0],
		explanation: "2 Sb + 3 Cl2 produces 2 SbCl3."
	},
	
	{
		type: "balance",
		prompt: "Balance the following chemical equation:",
		reactant1: "HCl",
		reactant2: "NaOH",
		product1: "NaCl",
		product2: "H2O",
		answer: [1, 1, 1, 1],
		explanation: "1 HCl + 1 NaOH produces 1 NaCl + 1 H2O"
	},
	
	{
		type: "balance",
		prompt: "Balance the following chemical equation:",
		reactant1: "Fe",
		reactant2: "HCl",
		product1: "FeCl2",
		product2: "H2",
		answer: [2, 2, 2, 1],
		explanation: "2 Fe + 2 HCl produces 2 FeCl2 + 1 H2."
	}
		
]