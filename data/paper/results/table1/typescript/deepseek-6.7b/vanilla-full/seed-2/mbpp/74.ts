function is_samepatterns(colors: string[], patterns: string[]): boolean {
    let patternMap = new Map<string, string>();
    let colorMap = new Map<string, string>();
    for(let i = 0; i < colors.length; i++) {
        if(patternMap.has(colors[i]) && patternMap.get(colors[i]) != patterns[i]) {
            return false;
        }
        if(colorMap.has(patterns[i]) && colorMap.get(patterns[i]) != colors[i]) {
            return false;
        }
        patternMap.set(colors[i], patterns[i]);
        colorMap.set(patterns[i], colors[i]);
    }
    return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether it follows the sequence given in the patterns array.
