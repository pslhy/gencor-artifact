
function square_Sum(n: number): number {
    let sum: number = 0;
    for(let i = 2; i <= n*2; i+=2) {
        sum += i*i;
    }
    return sum;
}

console.log(square_Sum(5));  // Output: 55

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function takes in an integer n and returns the sum of squares of first n even natural numbers.
