function can_arrange(arr: number[]): number {
  if(arr.length <= 1)
    return -1;
  let largest_idx = 0;
  for(let i = 1; i < arr.length; i++) {
    if (arr[i] > arr[i - 1] && arr[i] > arr[largest_idx]) {
      largest_idx = i;
    }
  }
  return largest_idx;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Create a function which returns the largest index of an element which
//     is not greater than or equal to the element immediately preceding it. If
//     no such element exists then return -1. The given array will not contain
//     duplicate values.
//     Examples:
//     >>> can_arrange([1, 2, 4, 3, 5])
//     3
//     >>> can_arrange([1, 2, 3])
//     -1
