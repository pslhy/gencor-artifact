
function even_binomial_Coeff_Sum(n: number): number {
    let sum = 0;
    let dp: number = n + 1;
    let fact: number = 2 * n + 1;
    for (let i = 0; i <= n; i++) {
        sum += dp * fact;
        dp = dp * (n - i) * (n - i);
        fact = fact * 2 * (2 * i + 1);
    }
    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a positive integer n and finds the sum of even index binomial coefficients.
