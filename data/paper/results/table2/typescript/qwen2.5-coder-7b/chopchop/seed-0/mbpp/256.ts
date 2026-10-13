
function count_Primes_nums(n: number): number { 
  let isPrime = (n/2) % 1 !== 0 && n > 1;
  let counter = 0;
  for(let i = n-1; i > 1; i--){
    isPrime = (i/2) % 1 !== 0 && i > 1;
    if(isPrime){
      counter += 1;
    }
  }
  return counter;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number.
