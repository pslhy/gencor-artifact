function prime_fib(n: number): number {
  if (n < 1) {
    throw new Error("n must be a positive integer");
  }

  let a = 0;
  let b = 1;
  let current = 1;

  for (let i = 1; i < n; i++) {
    current = a + b;
    a = b;
    b = current;
  }

  return current;
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
