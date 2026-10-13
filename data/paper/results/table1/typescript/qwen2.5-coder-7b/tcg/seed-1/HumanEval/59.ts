function largest_prime_factor(n: number): number { 
    let largestFactor = 2;
    while (n % 2 === 0) {
        n /= 2;
    }
    for (let factor = 3; factor * factor <= n; factor += 2) {
        while (n % factor === 0) {
            largestFactor = factor;
            n /= factor;
        }
    }
    if (n > 2) {
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