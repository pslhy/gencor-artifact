function largest_prime_factor(n: number): number {
    let largest: number = 2; 

    while (n % 2 === 0) {
        n = Math.floor(n / 2);
    }

    for (let i = 3; i * i <= n; i += 2) { 
        while (n % i === 0) {
            n = Math.floor(n / i);
            largest = i;
        }
    }

    if (n > 2) {
        largest = n;
    }

    return largest;
}
console.log(largest_prime_factor(13195)); // Should print 29
console.log(largest_prime_factor(2048));  // Should print 2


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
