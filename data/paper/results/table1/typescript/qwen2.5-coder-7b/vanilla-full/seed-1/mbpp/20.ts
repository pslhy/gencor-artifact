function is_woodall(x: number): boolean { 
    if (x % 2 === 0) {
        return false; 
    } 
    if (x < 2) {
        return false; 
    } 
    let current = x; 
    while (current % 2 === 1) { 
        if ((current + 1) % (current / 2) === 0) { 
            return true; 
        } 
        current = (current + 1) / 2; 
    } 
    return false; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given number is woodball or not.
