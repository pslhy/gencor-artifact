
function find_lucas(n: number): number {
    let lucas = 0;
    for (let i = 0; i < n; i++) {
        const a = lucas;
        const b = lucas + 1;
        lucas = a + b;
    }
    return lucas;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n'th lucas number.
