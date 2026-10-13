function find_lists(Input: any[]): number {
  if (!(typeof Input === 'object' && Array.isArray(Input))) {
    throw new TypeError('Input is not an array');
  }
  return Input.filter(function(obj) {
    return typeof obj === 'object' && Array.isArray(obj);
  }).length;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find number of arrays present in the given array.
