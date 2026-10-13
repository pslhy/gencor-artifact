
function even_binomial_Coeff_Sum(n: number): number {
    let bionomial_coeff = Math.pow(2, n + 1);
    let digit_sum = (bionomial_coeff % 10) + Math.floor(bionomial_coeff / 10);

    return digit_sum;
}

let input: number = 5;

let sum = even_binomial_Coeff_Sum(input);



// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a positive integer n and finds the sum of even index binomial coefficients.
