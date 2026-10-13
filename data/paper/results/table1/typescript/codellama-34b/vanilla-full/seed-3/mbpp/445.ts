function index_multiplication(test_tup1: number[][], test_tup2: number[][]): number[][] {
   if(test_tup1.length != test_tup2.length()) {
       return []; // array lengths are not equal, return an empty array
   }
   let result = [];
   for(let i = 0; i <test_tup1.length; i++) {
       result.push(test_tup1[i] * test_tup2[i]);
   }
   return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to perform index wise multiplication of array elements in the given two arrays.
