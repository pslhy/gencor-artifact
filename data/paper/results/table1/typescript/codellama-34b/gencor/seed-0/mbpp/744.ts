
function check_none(test_tup: any): boolean {
   return test_tup.includes(null || undefined, NaN, '', [], {length: 0},
      {size: 0}, new Set(), 'None', 'none', 0, -0, false, '0', function() {
        console.dir(test_tup);
         return null;
    }
  

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given array has any none value or not.
