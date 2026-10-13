function prime_fib(n: number): number {;
  function isPrime(num: number): boolean {
    if (num <= 1) return false;
    if (num <= 3) return true;
    if (num % 2 === 0 || num % 3 === 0) return false;
    for (let i = 5; i * i <= num; i += 6) {
      if (num % i === 0 || num % (i + 2) === 0) return false;
    }
    return true;
  }

  function fib(num: number): number {
    let a = 0;
    let b = 1;
    for (let i = 0; i < num; i++) {
      let temp = a;
      a = b;
      b = temp + b;
    }
    return a;
  }

  let count = 0;
  let i = 0;
  while (true) {
    let fibNum = fib(i);
    if (isPrime(fibNum)) {
      count++;
      if (count === n) {
        return fibNum;
      }
    }
    i++;
  }
  
  return -1;
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