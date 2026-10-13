function max_run_uppercase(test_str: string): number {
    let current_run = 0;
    let max_run = 0;
    for (const char of test_str) {
        if (char === char.toUpperCase() && char !== char.toLowerCase()) {
            current_run += 1;
            if (current_run > max_run) {
                max_run = current_run;
            }
        } else {
            current_run = 0;
        }
    }
    return max_run;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find maximum run of uppercase characters in the given string.
