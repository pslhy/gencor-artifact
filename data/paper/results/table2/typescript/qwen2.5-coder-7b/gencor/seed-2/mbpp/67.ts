
function bell_number(n: number): number { // Complexity: O(2^n)
  let result: number[] = [1];
  for (let i = 1; i <= n; i++) {
    result[i] = 0;
    for (let j = 0; j < i; j++) {
      result[i] += result[j] * result[i - j - 1];
    }
  }
  return result[n];
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of ways to partition a set of Bell numbers.
