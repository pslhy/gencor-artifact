
function even_Power_Sum(n: number): number {
    let sum: number = 0;
    for(let i = 2; i <= n*2; i+=2) {
        sum += Math.pow(i, 5);
    }
    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in an integer n and finds the sum of the first n even natural numbers that are raised to the fifth power.
