function max_run_uppercase(test_str: string): number {
    let max_run = 0;
    let cur_run = 0;
  
    for (const ch of test_str) {
        if (ch.toUpperCase() === ch) {
            cur_run++;
        } else {
            max_run = Math.max(cur_run, max_run);
            cur_run = 0;
        }
    }
    return Math.max(cur_run, max_run);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find maximum run of uppercase characters in the given string.
