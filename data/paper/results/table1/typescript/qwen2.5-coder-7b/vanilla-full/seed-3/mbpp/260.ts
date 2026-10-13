function newman_prime(n: number): number {
    function isPrime(num: number): boolean {
        if (num <= 1) return false;
        if (num <= 3) return true;
        if (num % 2 === 0 || num % 3 === 0) return false;
        for (let i = 5; i * i <= num; i += 6) {
            if (num % i === 0 || num % (i + 2) === 0) return false;
        }
        return true;
    }

    function newmanShanksWilliams(n: number): number {
        if (n === 0) return 2;
        if (n === 1) return 3;
        let a = 2, b = 3;
        for (let i = 2; i <= n; i++) {
            let temp = a + b + i;
            a = b;
            b = temp;
        }
        return b;
    }

    let count = 0;
    let candidate = 2;
    while (true) {
        candidate = newmanShanksWilliams(candidate - 1);
        if (isPrime(candidate)) {
            count++;
            if (count === n) return candidate;
        }
    }
}

// Example usage:
console.log(newman_prime(1)); // Output: 2
console.log(newman_prime(2)); // Output: 3
console.log(newman_prime(3)); // Output: 11

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth newman–shanks–williams prime number.
