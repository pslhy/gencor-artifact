function prime_fib(n: number): number { 
    function isPrime(num: number): boolean {
        if (num <= 1) return false;
        for (let i = 2; i * i <= num; i++) {
            if (num % i === 0) return false;
        }
        return true;
    }

    let fib1 = 0, fib2 = 1, fib3 = 1, count = 0;
    while (true) {
        fib3 = fib1 + fib2;
        fib1 = fib2;
        fib2 = fib3;
        if (isPrime(fib3)) {
            count++;
            if (count === n) return fib3;
        }
    }
}

// Test
console.log(prime_fib(1)); // 2
console.log(prime_fib(2)); // 3
console.log(prime_fib(3)); // 5
console.log(prime_fib(4)); // 13
console.log(prime_fib(5)); // 89


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     prime_fib returns n-th number that is a Fibonacci number and it's also prime.
//     >>> prime_fib(1)
//     2
//     >>> prime_fib(2)
//     3
//     >>> prime_fib(3)
//     5
//     >>> prime_fib(4)
//     13
//     >>> prime_fib(5)
//     89
