
function sum_Of_product(n: number): number {
    let result = 0;
    for (let k = 0; k < n; k++) {
        let binomial_Coefficient = 1;
        for (let i = k; i > 0; i--) {
            binomial_Coefficient *= i;
        }
        result += binomial_Coefficient;
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the product of consecutive binomial co-efficients.
