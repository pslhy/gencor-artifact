
function sum(a: number, b: number): number { // Function to find the sum of common divisors of two numbers
    let sum = 0;
    for (let i = 1; i <= Math.min(a, b); i++) { // Iterate through the numbers from 1 to the minimum of the two numbers
        if (a % i === 0 && b % i === 0) { // Check if the number is a common divisor
            sum += i; // Add the common divisor to the sum
        }
    }
    return sum; // Return the sum of common divisors
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of common divisors of two given numbers.
