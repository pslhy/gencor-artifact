
function square_Sum(n: number): number { 
    let sum = 0; 
    for (let i = 1; i <= n; i++) {
        sum += Math.pow(2 * i, 2); 
    } 
    return sum; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function takes in an integer n and returns the sum of squares of first n even natural numbers.
