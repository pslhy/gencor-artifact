function sum_div(number: number): number {
    let sum = 1;
    const sqrt = Math.sqrt(number);
    for (let i = 2; i <= sqrt; i++) {
        if (number % i === 0) {
            if (i == (number / i)) {
                sum += i;
            } else {
                sum += (i + number / i);
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
//     Write a function to return the sum of all divisors of a number.
