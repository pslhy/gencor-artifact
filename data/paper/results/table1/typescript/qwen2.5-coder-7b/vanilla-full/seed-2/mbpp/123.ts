function amicable_numbers_sum(limit: number): number {    
    let sum = 0;
    for (let num = 1; num < limit; num++) {
        let sumOfDivisors = 0;
        for (let divisor = 1; divisor <= num / 2; divisor++) {
            if (num % divisor === 0) {
                sumOfDivisors += divisor;
            }
        }
        let counterpart = sumOfDivisors;
        let sumOfCounterpartDivisors = 0;
        for (let divisor = 1; divisor <= counterpart / 2; divisor++) {
            if (counterpart % divisor === 0) {
                sumOfCounterpartDivisors += divisor;
            }
        }
        if (sumOfCounterpartDivisors === num && num !== counterpart) {
            sum += num;
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
