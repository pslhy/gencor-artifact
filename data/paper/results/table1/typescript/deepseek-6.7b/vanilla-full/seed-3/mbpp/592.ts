function sum_Of_product(n: number): number {
    let bionomial_coeff = [];
    let sum = 0;
    for (let i = 0; i <= n; i++) {
        bionomial_coeff[i] = [];
        for (let j = 0; j <= i; j++) {
            if (j === 0 || j === i) {
                bionomial_coeff[i][j] = 1;
            } else {
                bionomial_coeff[i][j] = bionomial_coeff[i - 1][j - 1] + bionomial_coeff[i - 1][j];
            }
            if (j < i && i > 0) {
                sum += bionomial_coeff[i][j] * bionomial_coeff[i][j + 1];
            }
        }
    }
    return sum;
}

console.log(sum_Of_product(5));  // Output: 330


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the product of consecutive binomial co-efficients.
