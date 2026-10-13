function count_Primes_nums(n: number): number {
  if(n < 2) {
      return 0;
  }
  var isPrime = true;
  var countPrimes = 0;
  for(let i = 2; i < n; i += 1) {
      isPrime = true;
      for(let j = 2; j * j <= i; j += 1) {
          if(i % j === 0) {
              isPrime = false;
              break;
          }
      }
      if(isPrime) {
          countPrimes += 1;
      }
  }
  return countPrimes;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number.
