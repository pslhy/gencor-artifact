function is_multiply_prime(a: number): boolean {
    if (a < 2) return false;

    function isPrime(num: number): boolean {
        if (num <= 1) return false;
        for (let i = 2; i <= Math.sqrt(num); i++) {
            if (num % i === 0) return false;
        }
        return true;
    }

    let primeCount = 0;
    for (let i = 2; i <= a; i++) {
        if (a % i === 0 && isPrime(i)) {
            a /= i;
            primeCount++;
            if (a % i === 0) return false; // If divisible by the same prime more than once, it's not a multiplication of 3 distinct primes
        }
    }
    return primeCount === 3;
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
