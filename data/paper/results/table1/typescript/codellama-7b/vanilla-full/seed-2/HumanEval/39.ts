function prime_fib(n: number): number {
  let a = 0;
  let b = 1;
  let c = a + b;

  while (n-- > 0) {
    c = a + b;
    a = b;
    b = c;
    if (!isPrime(c)) {
      c = a + b;
      break;
    }
  }

  return c;
}

function isPrime(n: number): boolean {
  if (n < 2) return false;
  for (let i = 2; i <= Math.round(Math.sqrt(n)); i++) {
    if (n % i === 0) return false;
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
