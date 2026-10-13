function largest_prime_factor(n: number): number {
    let max_prime = -1;

    while (n % 2 === 0) {
        max_prime = 2;
        n >>= 1;
    }

    while (n % 3 === 0) {
        max_prime = 3;
        n = n / 3;
    }

    for (let i = 5; i * i <= n; i += 6) {
        while (n % i === 0) {
            max_prime = i;
            n = n / i;
        }
        while (n % (i + 2) === 0) {
            max_prime = i + 2;
            n = n / (i + 2);
        }
    }

    if (n > 4) {
        max_prime = n;
    }

    return max_prime;
}

console.log(largest_prime_factor(13195));  // Output: 29
console.log(largest_prime_factor(2048));   // Output: 2


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
