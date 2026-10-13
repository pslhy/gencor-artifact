function newman_prime(n: number): number {
    let primes = [3, 5];
    let i = primes[primes.length - 1] + 2;
    const isPrime = (num: number): boolean => {
        for (let j = 0; j < primes.length && primes[j] <= Math.sqrt(num); j++) {
            if (num % primes[j] === 0) {
                return false;
            }
        }
        return true;
    }
    while (primes.length < n) {
        if (isPrime(i)) {
            primes.push(i);
        }
        i += 2;
    }
    return primes[n - 1];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth newman–shanks–williams prime number.
