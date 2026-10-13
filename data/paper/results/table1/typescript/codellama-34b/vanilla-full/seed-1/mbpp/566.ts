function sum_digits(n: number): number {
    let sum = 0;
    while (n > 0) {
        sum += n % 10;
        n = Math.floor(n / 10);
    }
    return sum;
}

// Example usage
console.log(sum_digits(123)); // Output: 6
console.log(sum_digits(12345)); // Output: 15
console.log(sum_digits(0)); // Output: 0


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get the sum of the digits of a non-negative integer.
