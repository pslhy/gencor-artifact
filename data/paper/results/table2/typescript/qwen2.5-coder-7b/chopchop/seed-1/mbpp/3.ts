
function is_not_prime(n: number): boolean { // Function to check if a number is not prime
    if (n <= 1) return true; // Numbers less than or equal to 1 are not prime
    for (let i = 2; i * i <= n; i++) { // Loop through potential factors
        if (n % i === 0) return true; // If divisible by any number, it's not prime
    }
    return false; // If no factors found, it's prime
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to identify non-prime numbers.
