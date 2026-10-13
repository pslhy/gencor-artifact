function is_samepatterns(colors: string[], patterns: string[]): boolean {
    const patternString = patterns.join("");
    const colorString = colors.join("");
    for (const pattern of patternString) {
        if (colorString.indexOf(pattern) === -1) {
            return false;
        }
    }
    return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether it follows the sequence given in the patterns array.
