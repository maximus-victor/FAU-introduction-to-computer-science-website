quizGraphIntro = {
    "info": {
        "name":    "", // Should be empty with emacs-reveal
        "main":    "Graph Examples",
        "level1":  "Excellent!",          // 80-100%
        "level2":  "Please re-try.",      // 60-79%
        "level3":  "Please re-try.",      // 40-59%
        "level4":  "Maybe ask for help?", // 20-39%
        "level5":  "Please ask for help." //  0-19%, no comma here
    },
    "questions": [
	{
            "q": "What is an example of a graph?",
            "a": [
                {"option": "A LinkedList.", "correct": true},
                {"option": "A Trie.", "correct": true},
                {"option": "A HashMap.", "correct": true},
                {"option": "A Reindeer.", "correct": false}
            ],
            "correct": "<p><span>Correct!</span></p>",
            "incorrect": "<p><span>No. (Hint: 3 statements are correct.)</span> Maybe check out <a href=\"https://en.wikipedia.org/wiki/Graph_(discrete_mathematics)\">Wikipedia</a>?</p>"
        },
        {
            "q": "What is the meaning of life?",
            "a": [
                {"option": "69.", "correct": false},
                {"option": "42.", "correct": true},
                {"option": "IntroCS.", "introcs": false},
                {"option": "Graphs.", "correct": true},
            ],
            "correct": "<p><span>Correct!</span></p>",
            "incorrect": "<p><span>No. (Hint: Most statements are correct.)</span> Please, write <a href=\"https://www.nand2tetris.org/project04\">Fill.asm</a> and retry.</p>",
            "introcs": "<p><span>As much as it amuses us that you think that IntroCS is the meaning of life, you should still get a life next to your career.</span></p>"
        }
    ]
};
