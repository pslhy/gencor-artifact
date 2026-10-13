function starts_one_ends(n: number): number {
  const digits = '123456789';
  let count = 0;

  for (let i = 1; i <= 9; i++) {
    if (digits[i] === '1') {
      count++;
    }
    if (digits[n - i] === '1') {
      count++;
    }
  }

  return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a positive integer n, return the count of the numbers of n-digit
//     positive integers that start or end with 1.
