
function even_binomial_Coeff_Sum(n: number): number {
    let C: number = 1;
    let sum: number = 0;
    for (let i = 0; i <= n; i += 2) {
        sum += C;
        C = C * 2 * (2 * i + 1) / (i + 2);
    }
    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a positive integer n and finds the sum of even index binomial coefficients.
