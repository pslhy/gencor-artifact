function max_run_uppercase(test_str: string): number {
    let pattern = /[A-Z]+/g;
    let matches = test_str.match(pattern);
    if(matches === null || matches.length === 0) return 0;

    let max_length = Math.max.apply(null, matches.map(match => match.length));
    return max_length;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find maximum run of uppercase characters in the given string.
