function max_of_nth(test_list: number[][], N: number): number {
   if (N >= test_list.length) {
       return -1;
   }
  let max = Number.NEGATIVE_INFINITY;
  for (let row = 0; row < test_list.length; row++) {
      let current_num = test_list[row][N];
      max = Math.max(current_num, max);
  }
  return max;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function which given a matrix represented as an array of arrays returns the max of the n'th column.