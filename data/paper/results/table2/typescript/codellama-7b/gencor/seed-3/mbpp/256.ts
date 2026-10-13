
function count_Primes_nums(n: number): number {
  if(n < 2) {
      return 0;
  }
  let isPrime = new Array(n+1).fill(true);
  for(let p = 2; p*p <= n; p++) {
      if(isPrime[p]) {
          for(let i = p*p; i <= n; i += p) {
              isPrime[i] = false;
          }
      }
  }
  return isPrime.filter((n) => n).length;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number.
