
function find_lucas(n: number): number {
    if (n <= 2) {
        return 2;
    }
    let lucas: number = 3;
    for (let i: number = 3; i <= n; i++) {
        lucas = lucas + find_lucas(i - 1);
    }
    return lucas;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n'th lucas number.
