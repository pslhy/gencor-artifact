
function add_nested_tuples(test_tup1: number[][], test_tup2: number[][]): number[][] {
   if(test_tup1.length !== test_tup2.length) {
      throw new Error("Complex numbers must have the same dimensions.");
   }
   return test_tup1.map((test_tup1_element, i) => test_tup1_element + test_tup2[i][0]**2 
 
  

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to perform index wise addition of array elements in the given two nested arrays.
