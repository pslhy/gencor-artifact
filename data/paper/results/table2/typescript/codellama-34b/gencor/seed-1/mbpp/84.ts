
function sequence(n: number): number {
    let result = [1, 1];

    for (let i = 2; i <= n; i++) {
        result.push(result[result.length - 1] + result[result.length - 2]);
    }

    return result[n];
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth number in the newman conway sequence.
