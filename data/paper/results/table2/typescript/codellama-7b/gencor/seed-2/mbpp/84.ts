
function sequence(n: number): number {
    let a = 0;
    let b = 1;
    if (n === 0) {
        return a;
    }
    if (n === 1) {
        return b;
    }
    for (let i = 2; i < n; i++) {
        [a, b] = [b, a + b];
    }
    return b;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth number in the newman conway sequence.
