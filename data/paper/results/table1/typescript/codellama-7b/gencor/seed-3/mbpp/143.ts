
function find_lists(Input: any[]): number {
  if( TypeError( 'Input' ) ) {
    throw new TypeError( 'Input must be of type Any[]' );
  }
  return Input.filter(v => Array.isArray(v)).length
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find number of arrays present in the given array.
