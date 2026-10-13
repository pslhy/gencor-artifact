function amicable_numbers_sum(limit: number): number { 
    function sum_of_divisors(n: number): number {
        let sum = 1; // 1 is a divisor of all numbers
        for (let i = 2; i <= Math.sqrt(n); i++) {
            if (n % i === 0) {
                sum += i;
                if (i !== n / i) {
                    sum += n / i;
                }
            }
        }
        return sum;
    }

    let sum = 0;
    for (let i = 1; i < limit; i++) {
        let partner = sum_of_divisors(i);
        if (i !== partner && sum_of_divisors(partner) === i) {
            sum += i + partner;
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
