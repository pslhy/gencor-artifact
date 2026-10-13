function prime_fib(n: number): number {
   if (n === 1) {
       return 2;
   }
   let fib = 1;
   let fibPrev = 1;
   let index = 3;
   let primeFlag = true;
   while (true) {
       fib = fib + fibPrev;
       if (fib >= 3) {
           for (let i = 2; i < Math.sqrt(fib); i++) {
               if (fib % i === 0) {
                   primeFlag = false;
                   break;
               }
           }
           if (primeFlag) {
               if (index === n) {
                   return fib;
               }
               index++;
           }
       }
       fibPrev = fib;
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
