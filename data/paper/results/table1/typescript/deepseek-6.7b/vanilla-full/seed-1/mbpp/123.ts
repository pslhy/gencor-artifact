function amicable_numbers_sum(limit: number): number {
    let sum = 0;
    for (let i = 1; i <= limit; i++) {
        if (is_amicable_number(i)) {
            sum += i;
        }
    }
    return sum;
}

function is_amicable_number(num: number): boolean {
    let sum1 = 0;
    let sum2 = 0;
    for (let i = 1; i <= Math.floor(num / 2); i++) {
        if (num % i == 0) {
            sum1 += i;
        }
    }
    if (sum1 != num) {
        for (let i = 1; i <= Math.floor(sum1 / 2); i++) {
            if (sum1 % i == 0) {
                sum2 += i;
            }
        }
    }
    return (sum2 === num && sum1 !== num);
}

console.log(amicable_numbers_sum(10000));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sum all amicable numbers from 1 to a specified number.
