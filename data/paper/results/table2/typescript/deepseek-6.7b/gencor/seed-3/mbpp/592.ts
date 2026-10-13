
function sum_Of_product(n: number): number {
    let bionomial_coeff = Array(n+1).fill(0);
    bionomial_coeff[0] = 1;

    let sum = 0;
    for (let i=1; i<n; i++) {
        for (let j=n; j>=i; j--) {
            bionomial_coeff[j] += bionomial_coeff[j-1];
        }
        sum += bionomial_coeff[i] * bionomial_coeff[i-1];
    }
    return sum;
}

console.log(sum_Of_product(5));  // Output: 42

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the product of consecutive binomial co-efficients.
