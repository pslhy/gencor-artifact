function is_samepatterns(colors: string[], patterns: string[]): boolean {
    let result = true;
    let i = 0;
    while (i < colors.length && i < patterns.length) {
        if (colors[i] != patterns[i]) {
            result = false;
            break;
        }
        i++;
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether it follows the sequence given in the patterns array.
