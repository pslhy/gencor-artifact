function count_up_to(n: number): number[] {
  if (n < 1) {
    return [];
  }
  const primeCount: number = Math.floor(Math.sqrt(n));
  const primeNumbers: number[] = [];
  for (let i: number = 2; i <= primeCount; i++) {
    if (!has_factor(i, n - 1)) {
      primeNumbers.push(i);
    }
  }
  return primeNumbers;
}

function has_factor(n: number, limit: number): boolean {
  for (let i: number = 2; i <= limit; i++) {
    if (n % i === 0) {
      return true;
    }
  }
  return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Implement a function that takes an non-negative integer and returns an array of the first n
//     integers that are prime numbers and less than n.
//     for example:
//     >>> count_up_to(5)
//     [2, 3]
//     >>> count_up_to(11)
//     [2, 3, 5, 7]
//     >>> count_up_to(0)
//     []
//     >>> count_up_to(20)
//     [2, 3, 5, 7, 11, 13, 17, 19]
//     >>> count_up_to(1)
//     []
//     >>> count_up_to(18)
//     [2, 3, 5, 7, 11, 13, 17]
