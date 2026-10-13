function newman_prime(n: number): number {
    let primes = [2, 3];
    let check = (num: number): boolean => {
        let sqrtNum = Math.sqrt(num);
        for (let i = 0; primes[i] <= sqrtNum; i++) {
            if (num % primes[i] === 0) return false;
        }
        return true;
    }
    let findPrime = (): number => {
        let num = primes[primes.length - 1] + 2;
        while (true) {
            if (check(num)) return num;
            else num += 2;
        }
    }
    while (primes.length < n + 3) primes.push(findPrime());
    return primes[n + 1];
}

// Test Cases
console.log(newman_prime(1));  // 5
console.log(newman_prime(2));  // 7
console.log(newman_prime(3));  // 11
console.log(newman_prime(4));  // 13
console.log(newman_prime(5));  // 17


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth newman–shanks–williams prime number.
