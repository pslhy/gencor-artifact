function amicable_numbers_sum(limit: number): number {
    let sum = 0;
    for (let a = 1; a < limit; a++) {
        let b = sum_of_factors(a);
        if (sum_of_factors(b) == a && a != b) {
            sum += a;
        }
    }
    return sum;
}

function sum_of_factors(num: number): number {
    let sum = 1;
    let sqr = Math.sqrt(num);
    for (let i = 2; i <= sqr; i++) {
        if (num % i == 0) {
            sum += i;
            if (num / i != i) {
                sum += num / i
            }
        }
    }
    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sum all amicable numbers from 1 to a specified number.
