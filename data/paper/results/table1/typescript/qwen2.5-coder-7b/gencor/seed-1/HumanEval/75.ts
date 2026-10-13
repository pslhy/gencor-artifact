
function is_multiply_prime(a: number): boolean { // Function that checks if the number is a product of three prime numbers
    if (a < 2) return false; // If the number is less than 2, it cannot be a product of prime numbers

    let primeFactors: number[] = [];

    // Checking for the number of times 2 divides a
    while (a % 2 === 0) {
        primeFactors.push(2);
        a /= 2;
    }

    // Checking for the number of times other primes divide a
    for (let i = 3; i <= Math.sqrt(a); i += 2) {
        while (a % i === 0) {
            primeFactors.push(i);
            a /= i;
        }
    }

    // If a is still greater than 2, then it is a prime number
    if (a > 2) {
        primeFactors.push(a);
    }

    // Returning true if there are exactly three prime factors, false otherwise
    return primeFactors.length === 3;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that returns true if the given number is the multiplication of 3 prime numbers
//     and false otherwise.
//     Knowing that (a) is less then 100.
//     Example:
//     >>> is_multiply_prime(30)
//     true
//     30 = 2 * 3 * 5
