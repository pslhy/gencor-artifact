function find_first_occurrence(A: number[], x: number): number {
  let left: number = 0;
  let right: number = A.length - 1;

  while (left <= right) {
    const mid: number = (left + right) >> 1;
    const mid_val: number = A[mid];
    if (mid_val === x) {
      return mid;
    }
    if (mid_val < x) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }
  return -1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the index of the first occurrence of a given number in a sorted array.
