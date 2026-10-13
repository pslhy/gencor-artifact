function prime_fib(n: number): number {
  if(n <= 0){
      throw new Error("n must be a positive integer.");
  }
  const fib_arr = [0, 1];
  for(let i = 2; i <= n; i++){
      const fib_num = fib_arr[i-1] + fib_arr[i-2];
      if(isPrime(fib_num)){
          fib_arr.push(fib_num);
      }
      if(fib_arr.length === n){
          return fib_num;
      }
  }
  throw new Error("No prime Fibonacci number found for the given input.");
}

function isPrime(num: number): boolean{
  if(num < 2){
      return false;
  }
  for(let i = 2; i < num; i++){
      if(num % i === 0){
          return false;
      }
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
