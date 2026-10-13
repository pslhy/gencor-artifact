
function are_equivalent(num1: number, num2: number): boolean { // Function that checks if the divisors' sums are equal 
    let sum1: number = 0; // Variable to hold sum of divisors of num1
    let sum2: number = 0; // Variable to hold sum of divisors of num2

    for (let i: number = 1; i <= num1; i++) { // Calculate sum of divisors of num1
        if (num1 % i === 0) {
            sum1 += i;
        }
    }

    for (let i: number = 1; i <= num2; i++) { // Calculate sum of divisors of num2
        if (num2 % i === 0) {
            sum2 += i;
        }
    }

    return sum1 === sum2; // Return if the sums are equal
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to determine if the sum of the divisors of two integers are the same.
