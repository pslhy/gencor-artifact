function amicable_numbers_sum(limit: number): number {
    let sum = 0;
    for (let i = 1; i <= limit; i++) {
        if (i === amicable_number_sum(i)) {
            sum += i;
        }
    }
    return sum;
}

function amicable_number_sum(n: number): number {
    let sum = 0;
    for (let i = 2; i < n; i++) {
        if (n % i === 0) {
            sum += i;
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
