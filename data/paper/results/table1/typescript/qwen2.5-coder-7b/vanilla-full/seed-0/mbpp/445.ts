function index_multiplication(test_tup1: number[][], test_tup2: number[][]): number[][] { 
  return test_tup1.map((subArr1, index) => subArr1.map((element, subIndex) => element * test_tup2[index][subIndex]));
}

// Test the function
const test_tup1 = [[1, 2, 3], [4, 5, 6], [7, 8, 9]];
const test_tup2 = [[9, 8, 7], [6, 5, 4], [3, 2, 1]];
console.log(index_multiplication(test_tup1, test_tup2));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to perform index wise multiplication of array elements in the given two arrays.
