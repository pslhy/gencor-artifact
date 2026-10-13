function starts_one_ends(n: number): number {
  const start = Array.from({length: n}, (_, i) => i + 1).map(x => Array.from({length: 9}, (_, i) => 10 ** i + '1').join('')).reduce((acc, curr) => acc + curr)
  const end = Array.from({ length: n }, (_, i) => i + 1).map(x => Array.from({ length: 9 }, (_, i) => 1 + ('1'.repeat(n))).reduce((acc, curr) => acc + curr)
  return start + end;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a positive integer n, return the count of the numbers of n-digit
//     positive integers that start or end with 1.
