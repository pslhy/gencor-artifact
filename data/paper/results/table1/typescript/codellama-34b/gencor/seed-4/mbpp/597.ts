
function find_kth(arr1: number[], arr2: number[], k: number): number {
   if (k < 1 || k > arr1.length + arr2.length) {
      return null
   > 
   arr1.concat(arr2).sort()
  

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find kth element from the given two sorted arrays.
