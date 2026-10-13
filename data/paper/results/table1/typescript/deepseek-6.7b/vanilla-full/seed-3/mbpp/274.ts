function even_binomial_Coeff_Sum(n: number): number {
    let bionomial_coeff = [];
    let sum = 0;
    for (let i = 0; i <= n; i++) {
        bionomial_coeff[i] = [];
        for (let j = 0; j <= i; j++) {
            if (j == 0 || j == i) {
                bionomial_coeff[i][j] = 1;
            } else {
                bionomial_coeff[i][j] = bionomial_coeff[i-1][j-1] + bionomial_coeff[i-1][j];
            }
            if (i % 2 === 0 && j % 2 === 0) {
                sum += bionomial_coeff[i][j];
            }
        }
    }
    return sum;
}

console.log(even_binomial_Coeff_Sum(5));  // 42


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a positive integer n and finds the sum of even index binomial coefficients.
