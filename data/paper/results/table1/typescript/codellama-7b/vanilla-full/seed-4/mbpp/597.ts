function find_kth(arr1: number[], arr2: number[], k: number): number {
  if (k - 1 >= 0 && k - 1 < arr1.length) {
    return arr1[k - 1];
  }
  if (k - 1 >= arr1.length && k - 1 - arr1.length >= 0) {
    return arr2[k - 1 - arr1.length];
  }
  return -1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find kth element from the given two sorted arrays.
