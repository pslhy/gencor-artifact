function largest_prime_factor(n: number): number {
    let maxFactor = 1;
    let factor = 2;
    while (factor * factor <= n) {
        if (n % factor == 0) {
            maxFactor = factor;
            n = n / factor;
        } else {
            factor++;
        }
    }
    return maxFactor;
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
