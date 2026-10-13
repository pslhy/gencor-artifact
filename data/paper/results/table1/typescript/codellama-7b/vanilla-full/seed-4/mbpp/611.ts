function max_of_nth(test_list: number[][], N: number): number {
  let max: number = 0;
  for (let i = 0; i < test_list.length; i++) {
    max = Math.max(max, test_list[i][N]);
  }
  return max;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function which given a matrix represented as an array of arrays returns the max of the n'th column.
