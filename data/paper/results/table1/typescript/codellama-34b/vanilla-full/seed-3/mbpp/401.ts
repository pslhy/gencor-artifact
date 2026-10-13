function add_nested_tuples(test_tup1: number[][], test_tup2: number[][]): number[][] {
   if(test_tup1.length != test_tup2.length()) {
	    throw new Error("both tuples should have the same length");
   }

   let result_tup: number[][] = [[]];
   for(int i = 0; i < test_tup1.length; i++) {
      let inner_tup1: number = test_tup1[i];
      let inner_tup2: number = test_tup2[i];

      for(int j = 0; j < inner_tup1.length; j++) {
         result_tup[i][j] = inner_tup1[j] + inner_tup2[j];
      }
   }

   return result_tup;
}

let test_tup1: number[][] = [[1, 2, 3], [2, 3, 4], [3, 4, 5]];
let test_tup2: number[][] = [[2, 3, 4], [3, 4, 5], [4, 5, 6]];
let result: number[][] = add_nested_tuples(test_tup1, test_tup2);
console.log(result);



// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to perform index wise addition of array elements in the given two nested arrays.
