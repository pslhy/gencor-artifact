function amicable_numbers_sum(limit: number): number {
    function sum_of_divisors(n: number): number {
        let sum = 1; // 1 is a divisor of all integers
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
    for (let a = 2; a < limit; a++) {
        let b = sum_of_divisors(a);
        if (a !== b && sum_of_divisors(b) === a) {
            sum += a;
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
