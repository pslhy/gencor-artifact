function max_run_uppercase(test_str: string): number {
    let run_len = 0;
    for (let i = 0; i < test_str.length; i++) {
        if (test_str[i].toLocaleUpperCase() == test_str[i]) {
            run_len++;
        } else {
            run_len = 0;
        }
        if (run_len > longest_run) {
            longest_run = run_len;
        }
    }
    return longest_run;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find maximum run of uppercase characters in the given string.
