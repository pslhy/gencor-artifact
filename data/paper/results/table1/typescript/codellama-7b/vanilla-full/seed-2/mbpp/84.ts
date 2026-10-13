function sequence(n: number): number {
    let a = 0, b = 1, c = 1;
    for (let i = 0; i < n; i++) {
        c = a + b;
        a = b;
        b = c;
    }
    return c;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth number in the newman conway sequence.
