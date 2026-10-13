
function count_Primes_nums(n: number): number {
  if (n <= 1) {
    return 0;
  }
  
  let count = 1;
  
  for (let i = n-1; i > 1; i--) {
    let is_prime = true;
    for (let j = 2; j <= Math.sqrt(i); j++) {
      if (i % j == 0) {
        is_prime = false;
        j = i;
        count++;
      }
    }
  }
  
  return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number.
