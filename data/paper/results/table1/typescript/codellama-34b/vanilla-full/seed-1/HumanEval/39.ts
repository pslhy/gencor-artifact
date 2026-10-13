function prime_fib(n: number): number {
    let fib = [0, 1];
    let prime = true;
    while (fib.length <= n) {
        fib.push(fib[fib.length - 1] + fib[fib.length - 2]);
        prime = isPrime(fib[fib.length - 1]);
        if (!prime) {
            fib.pop();
        }
    }
    return fib[fib.length - 1];
}

function isPrime(num: number): boolean {
    if (num <= 1) return false;
    for (let i = 2; i < Math.sqrt(num); i++) {
        if (num % i === 0) return false;
    }
    return true;
}


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
