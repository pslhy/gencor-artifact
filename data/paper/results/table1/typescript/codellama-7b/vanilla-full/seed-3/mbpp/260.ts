function newman_prime(n: number): number {
  if(n < 2) {
    return n;
  }
  let i = 2;
  while(true) {
    if(isPrime(i)) {
      if(n === 1) {
        return i;
      }
      n--;
    }
    i++;
  }
}

function isPrime(n: number): boolean {
  for(let i = 2; i < n; i++) {
    if(n % i === 0) {
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
//     Write a function to find the nth newman–shanks–williams prime number.
