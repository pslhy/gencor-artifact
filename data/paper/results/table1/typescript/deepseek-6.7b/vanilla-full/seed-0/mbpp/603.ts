function get_ludic(n: number): number[] {
    let primes = new Array(n + 1).fill(0); 
    let p = 2; 
    while (p * p <= n) { 
        if (primes[p] == 0) { 
            for (let i = p * p; i <= n; i += p) {
                if (i % p == 0) {
                    primes[i] = p;
                }
            }
        }
        p += 1; 
    }
    let result: number[] = []; 
    for (let i = 2; i < primes.length; i++) {
        if (primes[i] == 0) {
            result.push(i);
        }
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get all lucid numbers smaller than or equal to a given integer.
