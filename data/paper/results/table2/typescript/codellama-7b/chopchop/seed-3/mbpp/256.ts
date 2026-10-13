
function count_Primes_nums(n: number): number {
  if(n < 2) {
      return 0;
  }
  let isPrime = true;
  for(let i = 2; i < Math.sqrt(n); i++) {
      if((n % i) === 0) {
          isPrime = false;
          return n;
      }
  }
  return isPrime ? n : 0;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number.
