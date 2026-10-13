function max_of_nth(test_list: number[][], N: number): number {
  const row_lengths: number[] = test_list.map(row => row.length);

  if (N >= row_lengths.length ||
      row_lengths.length === 0 ||
      row_lengths.every(len => len !== row_lengths[0])) {
    throw new Error('Invalid column index');
  }

  let result: number = test_list[0][N];

  for(let i = 1; i < test_list.length; i++) {
    if (test_list[i][N] >= result) {
      result = test_list[i][N];
    }
  }

  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function which given a matrix represented as an array of arrays returns the max of the n'th column.
