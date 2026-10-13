function sum_Of_product(n: number): number { 
    let sum: number = 0; 
    for (let i = 0; i < n; i++) {
        sum += binomialCoefficient(n, i) * binomialCoefficient(n, i + 1); 
    } 
    return sum; 
} 

function binomialCoefficient(n: number, r: number): number { 
    let res: number = 1; 
    if (r > n - r) {
        r = n - r; 
    } 
    for (let i = 0; i < r; ++i) {
        res *= (n - i); 
        res /= (i + 1); 
    } 
    return res; 
} 

// Test the function
console.log(sum_Of_product(5)); // Output the result for n = 5


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the product of consecutive binomial co-efficients.
