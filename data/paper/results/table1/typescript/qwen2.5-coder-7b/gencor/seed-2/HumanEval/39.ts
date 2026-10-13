
function prime_fib(n: number): number { 
    function isPrime(num: number): boolean {
        for(let i = 2; i <= Math.sqrt(num); i++)
            if(num % i === 0) return false;
        return num > 1;
    } 

    let fib1 = 0;
    let fib2 = 1;
    let fibNext = fib1 + fib2;
    let count = 0;

    while (true) {
        if (isPrime(fibNext)) {
            count++;
            if (count === n) return fibNext;
        }
        fib1 = fib2;
        fib2 = fibNext;
        fibNext = fib1 + fib2;
    }
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
