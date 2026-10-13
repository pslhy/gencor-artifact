function max_run_uppercase(test_str: string): number {
    let count = 0;
    let maxCount = 0;
    for (let i = 0; i < test_str.length; i++) {
        if (test_str[i] === test_str[i].toUpperCase() && test_str[i].match(/[A-Z]/)) {
            count++;
            if (count > maxCount) {
                maxCount = count;
            }
        } else {
            count = 0;
        }
    }
    return maxCount;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find maximum run of uppercase characters in the given string.
