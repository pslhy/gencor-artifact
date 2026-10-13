function newman_prime(n: number): number {
  if (n === 1) {
    return 2;
  }
  let prime = 3;
  let i = 1;
  while (i < n) {
    for (let j = 2; j <= Math.sqrt(prime); j++) {
      if (prime % j === 0) {
        prime++;
        i--;
        break;
      }
    }
    i++;
    if (i === n) {
      return prime;
    }
  }
  return -1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth newman–shanks–williams prime number.
