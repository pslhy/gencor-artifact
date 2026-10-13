function amicable_numbers_sum(limit: number): number {
    let sum = 0;
    for (let i = 1; i < limit; i++) {
        let divisors = [1];
        let j = 2;
        while (j <= Math.sqrt(i)) {
            if (i % j == 0) {
                divisors.push(j);
                if (j * j != i) divisors.push(i / j);
            }
            j++;
        }
        let sum_of_divisors = divisors.reduce((a, b) => a + b, 0);
        if (sum_of_divisors > i && sum_of_divisors - i == i) {
            sum += sum_of_divisors;
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
