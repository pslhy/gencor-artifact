function max_sum_list(lists: number[][]): number[] {
  const sums = lists.map(sum);
  let max = sums[0];
  let index = 0;
  for (let i = 1; i < sums.length; i++) {
    if (sums[i] > max) {
      max = sums[i];
      index = i;
    }
  }
  return lists[index];
}

function sum(array: number[]): number {
  return array.reduce((a, b) => a + b, 0);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that returns the array in an array of arrays whose sum of elements is the highest.
