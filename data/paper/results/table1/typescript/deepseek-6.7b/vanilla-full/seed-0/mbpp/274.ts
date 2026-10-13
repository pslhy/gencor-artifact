function even_binomial_Coeff_Sum(n: number): number {
    if (n <= 0) return 0;
    let result = 0;
    let binomialCoeff = 1;
    for (let i = 0; i <= n; i += 2) {
        if (i === 0 || i === n) {
            binomialCoeff = 1;
        } else {
            binomialCoeff = binomialCoeff * (n - (i - 1)) / i;
        }
        result += binomialCoeff;
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a positive integer n and finds the sum of even index binomial coefficients.
