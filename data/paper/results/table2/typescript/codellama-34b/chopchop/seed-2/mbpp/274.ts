
function even_binomial_Coeff_Sum(n: number): number {
    let sum = 0;
    for (let k = 0; k < n; k++) {
        let binomial_Coeff = 1;
        for (let i = k; i > k - n; i--) {
            binomial_Coeff = binomial_Coeff * (i + 1) / (k - i + 1);
        }
        sum += k % 2 === 0 ? binomial_Coeff : 0;
    }
    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a positive integer n and finds the sum of even index binomial coefficients.
