function is_multiply_prime(a: number): boolean {
    let isPrime = (c: number) => c > 1 && [...Array(c).keys()].filter(i => i > 1 && c % i === 0).length === 0;
    
    // Check if a is a multiple of 3
    if (a % 3 !== 0) {
        return false;
    }
    
    // Find the prime factors of a
    let factors = [];
    while (a > 1) {
        for (let i = 2; i <= Math.sqrt(a); i++) {
            if (a % i === 0) {
                factors.push(i);
                a = a / i;
                break;
            }
        }
    }
    
    // Check if all the factors are prime
    return factors.map(isPrime).reduce((a, b) => a && b, true);
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
