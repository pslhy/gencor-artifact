
function even_binomial_Coeff_Sum(n: number): number {
    let bionomial_coeff = [1, 1];
    let sum = 0;
    for (let i = 2; i <= 2*n; i++) {
        bionomial_coeff.push(bionomial_coeff[i-1] * (4 * (i - 1) + 2) / (i + 1));
    }
    for (let i = 0; i < n; i++) {
        if (i % 2 === 0) {
            sum += bionomial_coeff[i];
        }
    }
    return sum;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a positive integer n and finds the sum of even index binomial coefficients.
