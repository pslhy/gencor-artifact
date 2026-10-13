function test_duplicate(arraynums: number[]): boolean {
  let nums_map = new Map();

  for (let i = 0; i < arraynums.length; i++) {
    if (nums_map.has(arraynums[i])) {
      return true;
    } else {
      nums_map.set(arraynums[i], 1);
    }
  }

  return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find whether a given array of integers contains any duplicate element.
