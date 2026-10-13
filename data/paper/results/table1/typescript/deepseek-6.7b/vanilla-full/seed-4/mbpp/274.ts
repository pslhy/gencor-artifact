function even_binomial_Coeff_Sum(n: number): number {
    let C: number[][] = new Array(n + 1);
    for (let i = 0; i < C.length; i++) {
        C[i] = new Array(i + 1).fill(0);
    }

    for (let i = 0; i <= n; i++) {
        for (let j = 0; j <= i; j++) {
            if (j === 0 || j === i) {
                C[i][j] = 1;
            } else {
                C[i][j] = C[i - 1][j - 1] + C[i - 1][j];
            }
        }
    }

    let sum = 0;
    for (let i = 0; i <= n; i += 2) {
        sum += C[n][i];
    }

    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a positive integer n and finds the sum of even index binomial coefficients.
