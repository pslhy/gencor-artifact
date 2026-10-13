function amicable_numbers_sum(limit: number): number {
    const is_amicable = new Array(limit + 1).fill(false);
    let sum = 0;

    for (let i = 1; i <= limit; i++) {
        if (is_amicable[i]) continue;

        let sum_of_divisors = 0;
        for (let j = 1; j < i; j++) {
            if (i % j === 0) {
                sum_of_divisors += j;
            }
        }

        if (sum_of_divisors === i) {
            sum += sum_of_divisors;
            is_amicable[sum_of_divisors] = true;
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
