function is_samepatterns(colors: string[], patterns: string[]): boolean {
    if(colors.length !== patterns.length) return false; //For same colored balls
    
    for(let i = 1; i < colors.length; i++) {
        if(colors[i] === colors[i-1] && patterns[i] !== patterns[i-1]) return false; //For consecutive same colored balls
    }
  
    return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether it follows the sequence given in the patterns array.
