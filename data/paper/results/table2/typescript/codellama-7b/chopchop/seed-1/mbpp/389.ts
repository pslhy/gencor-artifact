
function find_lucas(n: number): number {
    let lucas: number = 2;
    let previous: number = 1;
    for (let i: number = 2; i <= n; i++) {
        lucas = previous + lucas;
        previous = lucas - previous;
    }
    return lucas;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n'th lucas number.
