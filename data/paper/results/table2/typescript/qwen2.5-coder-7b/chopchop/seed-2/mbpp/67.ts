
function bell_number(n: number): number { // Complexity: O(2^n)
  let result: number = 0;
  function partition(set: number, k: number, n: number): number {
    if (k === 0) {
      return 1;
    }
    if (set === 0 || k > set) {
      return 0;
    }
    return partition(set - 1, k, n) + partition(set - 1, k - 1, n);
  }
  for (let i = 0; i <= n; i++) {
    result += partition(n, i, n);
  }
  return result;
}



// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of ways to partition a set of Bell numbers.
