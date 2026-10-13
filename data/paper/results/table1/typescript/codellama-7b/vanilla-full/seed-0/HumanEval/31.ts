function is_prime(n: number): boolean {
  if (n === 1) {
    return false;
  }
  for (let i = 2; i <= Math.sqrt(n); i++) {
    if (n % i === 0) {
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
//     Return true if a given number is prime, and false otherwise.
//     >>> is_prime(6)
//     false
//     >>> is_prime(101)
//     true
//     >>> is_prime(11)
//     true
//     >>> is_prime(13441)
//     true
//     >>> is_prime(61)
//     true
//     >>> is_prime(4)
//     false
//     >>> is_prime(1)
//     false
