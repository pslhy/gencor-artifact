function sum_Of_product(n: number): number {
    let bionomial_coeff = [];
    let sum = 0;
    for (let i = 0; i <= n; i++) {
        bionomial_coeff[i] = [];
        for (let j = 0; j <= i; j++) {
            if (j === 0 || j === i) {
                bionomial_coeff[i].push(1);
            } else {
                bionomial_coeff[i].push(bionomial_coeff[i - 1 ]
                    .slice(j - 1, j + 1)
                    .
                    concat([0, 0])
                    .
                    slice(0, j)
                    .
                    slice(0, i - j + 1)
                    .
                    concat([0, 0])
                    .
                    slice(0, j)
                    .
                    slice(0, i - j + 1)
                    .
                    slice(1)
                    .
                    slice(0, i - j + 1)
                    .
                    slice(0, i - j + 2)
                    .
                    slice(1)
                    .
                    slice(0, i - j + 2)
                    .
                    slice(1)
                    .
                    slice(0, i - j)
                    .
                    slice(0, i - j + 1)
                    .
                    slice(1)
                    .
                    slice(0, i - j)
                    .
                    slice(0, i - j + 1)
                    .
                    slice(1)
                    .
                    slice(0, i - j + 1)
                    .
                    slice(0, i - j + 2)
                    .
                    slice(0, i + 2)
                    .
                    slice(1)
                    .
                    slice(1)
                    .
                    slice(0, i - j + 1)
                    .
                    slice(0, i - j + 2)
                    .
                    slice(0, i + 2)
                    .
                    slice(0, i - j + 1)
                    .
                    slice(1)
                    .
                    slice(0, i - j + 1)
                    .
                    slice(1)
                    .
                    slice(0, i - j + 1)
                    .
                    slice(0, i - j + 2)
                    .
                    slice(0, i + 1));
            }
        }
    }
    for (let i = 0; i < bionomial_coeff.length - 1; i++) {
        sum = 0;
        for (let j = 0; j < bionomial_coeff[i].length; j++) {
            if (bionomial_coeff[i + 1 ] && bionomial_coeff[i + 1 ]
                .length > j && bionomial_coeff[i]
                .length >


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the product of consecutive binomial co-efficients.