
function even_binomial_Coeff_Sum(n: number): number {
    let res: number = 0; 
    let fact: number = 1;
    let binomialCoeff: number = 1;

    if (n < 0) {
        return -1; 
    }

    for (let i = 0; i <= n; ++i) {
        res += binomialCoeff; 
        if (i % 2 == 0) {
            fact = fact * (n - i + 1) / i;
            binomialCoeff = fact;
        }
    }

    return res;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a positive integer n and finds the sum of even index binomial coefficients.
