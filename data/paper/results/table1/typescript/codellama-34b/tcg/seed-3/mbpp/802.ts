function count_rotation(arr: number[]): number {
  if(arr.length <= 1){
    return 0;
  }
  let count = 0;
  let min_ind = arr.indexOf( Math.min(...arr) );
  while (min_ind !== 0) {
      arr = arr.slice (-1) + arr.slice (0, -1)


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of rotations required to generate a sorted array. https://www.geeksforgeeks.org/count-of-rotations-required-to-generate-a-sorted-array/