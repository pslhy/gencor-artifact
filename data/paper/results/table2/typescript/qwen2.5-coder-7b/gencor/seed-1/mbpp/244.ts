
function next_Perfect_Square(N: number): number { 
    let root = Math.sqrt(N); 
    let next = Math.ceil(root); 
    return next * next; 
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the next perfect square greater than a given number.
