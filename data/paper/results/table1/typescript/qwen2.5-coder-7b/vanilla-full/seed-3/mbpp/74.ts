function is_samepatterns(colors: string[], patterns: string[]): boolean {  
    if (colors.length !== patterns.length) return false;
    const patternMap = new Map<string, string>();
    const colorMap = new Set<string>();
    for (let i = 0; i < colors.length; i++) {
        if (!patternMap.has(patterns[i])) {
            if (colorMap.has(colors[i])) return false;
            patternMap.set(patterns[i], colors[i]);
            colorMap.add(colors[i]);
        } else if (patternMap.get(patterns[i]) !== colors[i]) return false;
    }
    return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether it follows the sequence given in the patterns array.
