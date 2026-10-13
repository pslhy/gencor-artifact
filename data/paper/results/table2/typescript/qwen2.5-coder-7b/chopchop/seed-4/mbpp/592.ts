
function sum_Of_product(n: number): number { 
    let result = 0; 
    for (let k = 0; k <= Math.floor(n / 2); ++k) { 
        result += (Math.pow(2, n - 2 * k) * Math.pow(2, n - 2 * k - 1)); 
    } 
    return result; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the product of consecutive binomial co-efficients.
