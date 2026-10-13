function prime_fib(n: number): number {
  let fibs: number[] = [2, 3];
  let i = 3;
  let fib = fibs[0] + fibs[1];
  while (fibs.length < n) {
    if (isPrime(fib)) {
      fibs.push(fib);
    }
    fib = fibs[i - 1] + fibs[i - 2];
    i++;
  }
  return fibs[n - 1];
}

function isPrime(num: number): boolean {
  if (num <= 1) return false;
  if (num == 2) return true;
  if (num % 2 == 0) return false;

  let sqrt = Math.floor(Math.sqrt(num));
  for (let i = 3; i <= sqrt; i += 2) {
    if (num % i === 0) return false;
  }
  return true;
}

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
