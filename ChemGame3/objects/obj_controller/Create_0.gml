global.quiz_active = false;
global.active_gate = noone;

global.xp = 0;
global.level = 1;
global.correct_answers = 0;

global.feedback = "";
global.feedback_timer = 0;

txt = " ";

// I'll add more questions later
global.questions = [
    {
        prompt: "How many protons are in a carbon atom?",
        answer: 6,
        element: "Carbon",
        symbol: "C",
        explanation: "Carbon has atomic number 6, so it has 6 protons."
    }
]