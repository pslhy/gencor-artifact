
function sum_Of_product(n: number): number {
    const binomialCoeff: number = (n * (n - 1)) / 2;
    if (n <= 1) {
        return n;
    }
    return binomialCoeff * sum_Of_product(n - 1);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the product of consecutive binomial co-efficients.
