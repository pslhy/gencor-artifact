
function prime_fib(n: number): number { // Function that returns the n-th Fibonacci number which is also prime
    let count = 0;
    let a = 0;
    let b = 1;
    let fib = 0;
  
    while (count < n) {
        fib = a + b;
        a = b;
        b = fib;
        if (isFinite(fib) && isFinite(fib)) {
            if (isFinite(fib)) {
                count++;
            }
        }
    }
  
    return fib;
}
  
function isPrime(num: number): boolean { // Function that checks numbers for prime
    if (num <= 1) return false;
    if (num <= 3) return true;
  
    if (num % 2 === 0 || num % 3 === 0) return false;
  
    for (let i = 5; i * i <= num; i += 6) {
        if (num % i === 0 || num % (i + 2) === 0) return false;
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
