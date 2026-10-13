function newman_prime(n: number): number {
    const primes = new Array<number>();
    primes.push(2);

    function isPrime(num: number): boolean {
        const sqrt = Math.sqrt(num);
        for (let i = 0; primes[i] <= sqrt; i++)
            if (num % primes[i] === 0) return false;
        return num !== 1; 
    }

    let num = 3;
    while (primes.length < n) {
        if (isPrime(num)) {
            primes.push(num);
        }
        num += 2;
    }

    return primes[n - 1];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth newman–shanks–williams prime number.
