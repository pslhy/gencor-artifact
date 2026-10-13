
function starts_one_ends(n: number): number {
  const start = Array.from({length: n}, (x: string) => 1).join('');
  const end = Array.from({length: n-1}, (x: string) => 9).join('');
  return parseInt(start, 2) + parseInt(end, 2);
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a positive integer n, return the count of the numbers of n-digit
//     positive integers that start or end with 1.
