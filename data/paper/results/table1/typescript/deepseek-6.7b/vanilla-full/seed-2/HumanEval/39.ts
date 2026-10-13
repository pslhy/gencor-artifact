function prime_fib(n: number): number {
    let fib = [2, 3];
    let fibNum3 = 3;
    let fibNum2 = 2;
    let fibNum = 0;
    let isPrime: boolean;
  
    function isPrimeNumber(num: number): boolean {
        for(let i = 2, sqrt = Math.sqrt(num); i <= sqrt; i++)
            if(num % i === 0) return false; 
        return num > 1;
    }
  
    while(fib.length < n) {
        isPrime = isPrimeNumber(fibNum3);
  
        if(isPrime) {
            fib.push(fibNum3);
        }
  
        fibNum = fibNum2 + fibNum3;
        fibNum2 = fibNum3;
        fibNum3 = fibNum;
    }
  
    return fib[n - 1];
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
