function max_run_uppercase(test_str: string): number {
    let count = 0;
    let max_count = 0;
  
    for (let character of test_str) {
        if (character === character.toUpperCase() && character !== character.toLowerCase()) {
            count++;
        } else {
            if (count > max_count) {
                max_count = count;
            }
            count = 0;
        }
    }

    // For the case where the run of uppercase characters extends 
    // till the end of the string
    if (count > max_count) {
        max_count = count;
    }

    return max_count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find maximum run of uppercase characters in the given string.
