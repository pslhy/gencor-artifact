function newman_prime(n: number): number {
    let primes = [2, 3];
    let primeCount = 2;
    let candidate = 5;

    function isPrime(num:number): boolean {
        let sqrt = Math.sqrt(num);
        for (let i = 0; primes[i] <= sqrt; i++) {
            if (num % primes[i] === 0) {
                return false;
            }
        }
        return true;
    }

    function nextPrime(num: number): number {
        while (true) {
            if (isPrime(num)) {
                return num;
            }
            num += 2;
        }
    }

    while (primeCount < n) {
        candidate = nextPrime(candidate);
        primes.push(candidate);
        primeCount++;
    }

    return primes[n-1];
}

console.log(newman_prime(5)); // 11
console.log(newman_prime(15)); // 647
console.log(newman_prime(20)); // 4119


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth newman–shanks–williams prime number.
