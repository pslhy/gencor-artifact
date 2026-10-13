function largest_prime_factor(n: number): number {    
    let largestFactor = 1;
    while (n % 2 === 0) {
        largestFactor = 2;
        n /= 2;
    }
    let factor = 3;
    while (factor * factor <= n) {
        while (n % factor === 0) {
            largestFactor = factor;
            n /= factor;
        }
        factor += 2;
    }
    if (n > 1) {
        largestFactor = n;
    }
    return largestFactor;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Return the largest prime factor of n. Assume n > 1 and is not a prime.
//     >>> largest_prime_factor(13195)
//     29
//     >>> largest_prime_factor(2048)
//     2