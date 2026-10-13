function even_binomial_Coeff_Sum(n: number): number {
    let sum = 0;
    for (let k = 0; k < n; k++) {
        let binomialCoeff = 1;
        for (let i = 1; i <= k; i++) {
            binomialCoeff = binomialCoeff * (i) / (k - i + 1);
        }
        if (k % 2 == 0) {
            sum += binomialCoeff;
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
