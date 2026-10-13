function maximize_elements(test_tup1: number[][], test_tup2: number[][]): number[][] { 
  return test_tup1.map((sub, index) => sub.map((item, subIndex) => Math.max(item, test_tup2[index][subIndex]))); 
} 

// Test
let test_tup1: number[][] = [[1, 2, 3], [4, 5, 6]];
let test_tup2: number[][] = [[3, 2, 1], [6, 5, 4]];
console.log(maximize_elements(test_tup1, test_tup2)); // Output: [[3, 2, 3], [6, 5, 6]]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to maximize the given two arrays.
