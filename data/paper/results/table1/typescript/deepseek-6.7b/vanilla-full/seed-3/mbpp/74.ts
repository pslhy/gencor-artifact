function is_samepatterns(colors: string[], patterns: string[]): boolean {
    let colorPattern = "";
    let patternPattern = "";
    
    for(let i = 0; i < colors.length; i++) {
        if(i < patterns.length) {
            colorPattern += colors[i];
            patternPattern += patterns[i];
        }
    }

    while (colorPattern.length < patterns.length) {
        colorPattern += colors[0];
    }

    if(colorPattern === patternPattern.repeat(colorPattern.length / patterns.length)) 
        return true; 
    else 
        return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether it follows the sequence given in the patterns array.
