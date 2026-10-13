function multiple_to_single(L: number[]): number {
  if(L.length == 0){
    throw new Error("No element to join")
  }
  let result: number = 0;
  for(let index = 0; index < L.length; index++){
    result = result * 10 + L[index];
  }
  return result;
}
console.log(multiple_to_single([1, 2, 3, 4, 5])); // Output: 12345
console.log(multiple_to_single([])); // Output: No element to join
/* In this solution, the function takes an array of integers as input and outputs a single integer by concatenating all the elements in the array. If the array is empty, an error is thrown. */


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to join an array of multiple integers into a single integer.
