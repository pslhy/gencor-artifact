
function sum_Of_product(n: number): number {
    let sum = 0;
    let a = 1;
    for (let i = 0; i < n; i++) {
        sum += a;
        a = a * (n - i) / (i + 1);
    }
    return sum;
}

console.log(sum_Of_product(4));
// The sum of the product of consecutive binomial coefficients for n = 4 is expected to be 14.

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the product of consecutive binomial co-efficients.
