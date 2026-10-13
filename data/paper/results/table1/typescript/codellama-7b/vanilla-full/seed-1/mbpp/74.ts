function is_samepatterns(colors: string[], patterns: string[]): boolean {
    let isSamePatterns = true;

    for (let i = 0; i < patterns.length && isSamePatterns; i++) {
        const pattern = patterns[i];
        if (pattern.startsWith('B')) {
            // If B is found, check if the previous color is same as the current one
            if (i == 0 || colors[i] == colors[i - 1]) {
                continue;
            } else {
                isSamePatterns = false;
            }
        } else if (pattern.startsWith('A')) {
            // If A is found, check if the previous color is different from the current one
            if (i == 0 || colors[i] != colors[i - 1]) {
                continue;
            } else {
                isSamePatterns = false;
            }
        } else {
            // If neither B nor A is found, then it is not a valid pattern
            isSamePatterns = false;
        }
    }

    return isSamePatterns;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether it follows the sequence given in the patterns array.
