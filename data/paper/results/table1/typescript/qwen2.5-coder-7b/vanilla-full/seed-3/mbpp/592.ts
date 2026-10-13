function sum_Of_product(n: number): number { 
    let sum = 0; 
    for (let r = 0; r <= n; r++) {
        sum += binomialCoefficient(n, r) * binomialCoefficient(n, r + 1); 
    } 
    return sum; 
} 

function binomialCoefficient(n: number, r: number): number { 
    return factorial(n) / (factorial(r) * factorial(n - r)); 
} 

function factorial(n: number): number { 
    let result = 1; 
    for (let i = 2; i <= n; i++) {
        result *= i; 
    } 
    return result; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the product of consecutive binomial co-efficients.
