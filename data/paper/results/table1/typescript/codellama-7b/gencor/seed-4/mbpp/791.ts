
function remove_nested(test_tup: any): [number, number, number, number] {
  if (typeof test_tup !== 'object') {
    return [null as any, null as any, null as any, null as any];
  }
  return [test_tup[0], test_tup[1], test_tup[2], test_tup[3]];
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove arrays from the given array.
