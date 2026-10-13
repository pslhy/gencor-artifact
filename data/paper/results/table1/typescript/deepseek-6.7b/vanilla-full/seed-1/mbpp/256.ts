function count_Primes_nums(n: number): number {
    let primes = new Array(n).fill(true);
    primes[0] = primes[1] = false;
    let p = 2;
    while (p * p <= n) {
        if (primes[p]) {
            for (let i = p * p; i <= n; i += p) {
                primes[i] = false;
            }
        }
        p += 1;
    }
    return primes.filter(Boolean).length;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number.
