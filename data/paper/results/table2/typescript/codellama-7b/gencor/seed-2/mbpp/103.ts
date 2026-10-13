
function eulerian_num(n: number, m: number): number {
    let result = 0;
    for (let k = 1; k <= n; k++) {
        let binomial_coeff = 1;
        for (let i = 1; i <= n; i++) {
            binomial_coeff *= (k - 1) / i;
        }
        result += binomial_coeff * binomial_coeff;
    }
    return result;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the Eulerian number a(n, m).
