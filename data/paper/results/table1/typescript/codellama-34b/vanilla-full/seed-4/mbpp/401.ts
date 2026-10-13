function add_nested_tuples(test_tup1: number[][], test_tup2: number[][]): number[][] {
   if test_tup1.length !== test_tup2.length {
      return [];
   }
   return test_tup1.map((tup_ele1, index) => {
      let tup_ele2 = test_tup2[index];
      if tup_ele1.length !== tup_ele2.length {
         return [];
      }
      return tup_ele1.map((element, i) => element + tup_ele2[i]);
   });
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to perform index wise addition of array elements in the given two nested arrays.
