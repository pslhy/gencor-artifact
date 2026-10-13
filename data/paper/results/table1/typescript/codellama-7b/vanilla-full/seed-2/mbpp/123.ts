function amicable_numbers_sum(limit: number): number {
    let amicable_numbers: number[] = [];
    for (let i = 1; i <= limit; i++) {
        let sum_of_factors: number = 0;
        for (let j = 1; j <= i; j++) {
            if (i % j == 0) {
                sum_of_factors += j;
            }
        }
        if (sum_of_factors == i) {
            amicable_numbers.push(i);
        }
    }
    return amicable_numbers.reduce((previous, current) => previous + current);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sum all amicable numbers from 1 to a specified number.
