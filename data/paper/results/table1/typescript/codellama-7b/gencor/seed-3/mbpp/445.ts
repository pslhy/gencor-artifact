
function index_multiplication(test_tup1: number[][], test_tup2: number[][]): number[][] {
  if(test_tup1.length != test_tup2.length) {
    return []; // array lengths are not equal, return an empty array
  }
  return test_tup1.map((arr1, idx) => [test_tup2[idx]]).map((arr1, idx) => arr1.map(e1 => e1[0] * arr1[0].map(e2 => e2)
  . reduce((cumsum1: number, elem1: number) => cumsum1 + e1[0], 0)));
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to perform index wise multiplication of array elements in the given two arrays.
