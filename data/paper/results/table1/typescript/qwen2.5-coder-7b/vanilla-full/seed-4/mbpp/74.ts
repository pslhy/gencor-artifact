function is_samepatterns(colors: string[], patterns: string[]): boolean { 
    const colorMap = new Map<string, number>(); 
    const patternMap = new Map<string, number>(); 

    for (let i = 0; i < colors.length; i++) { 
        if (!colorMap.has(colors[i])) { 
            colorMap.set(colors[i], i); 
        } 
        if (!patternMap.has(patterns[i])) { 
            patternMap.set(patterns[i], i); 
        } 
        
        if (colorMap.get(colors[i]) !== patternMap.get(patterns[i])) { 
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
