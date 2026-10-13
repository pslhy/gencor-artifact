
function sum_in_range(l: number, r: number): number {
  if (l === r) {
    return 0;
  } else if (l < r) {
    if (l % 2 !== 0) {
      return l + sum_in_range(l + 2, r);
    } else {
      return sum_in_range(l + 1, r);
    }
  } else if (l > r) {
    if (r % 2 !== 0) {
      return r + sum_in_range(l, r - 2);
    } else {
      return sum_in_range(l, r - 1);
    }
  }
  return 0;
}

console.log(sum_in_range(3, 15)); // Output: 120

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of all odd natural numbers within the range l and r.
