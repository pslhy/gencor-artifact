function sum_Of_product(n: number): number { 
    let sum = 0; 
    for (let k = 0; k < n; k++) { 
        sum += binomialCoeff(n, k) * binomialCoeff(n, k + 1); 
    } 
    return sum; 
} 
  
function binomialCoeff(n: number, k: number): number { 
    let res = 1; 
    if (k > n - k) 
        k = n - k; 
    for (let i = 0; i < k; i++) { 
        res *= (n - i); 
        res /= (i + 1); 
    } 
    return res; 
}

// Example usage
console.log(sum_Of_product(5)); // Output will depend on the implementation


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the product of consecutive binomial co-efficients.
