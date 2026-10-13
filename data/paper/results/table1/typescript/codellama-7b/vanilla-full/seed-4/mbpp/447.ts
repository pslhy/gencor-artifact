function cube_nums(nums: number[]): number[] {
  return nums.map((num) => num ** 3);
}

console.log(cube_nums([1, 2, 3, 4]));  // [1, 8, 27, 64]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find cubes of individual elements in an array.
