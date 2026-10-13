function newman_prime(n: number): number {
    let primes = [2, 3];
    let primeCheck = (x: number): boolean => {
        for(let i = 0; i < primes.length; i++) {
            if(x % primes[i] === 0) return false;
            if(primes[i] * primes[i] > x) return true;
        }
        return true;
    };
    let i = 5, count = 2;
    while (count < n) {
        if (primeCheck(i)) {
            primes.push(i);
            count++;
        }
        i += 2;
    }
    return primes[n - 1];
}

console.log(newman_prime(4)); // an example usage


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth newman–shanks–williams prime number.
