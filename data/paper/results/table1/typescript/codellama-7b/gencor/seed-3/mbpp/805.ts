
function max_sum_list(lists: number[][]): number[] {
  let max_sum = 0;
  let max_list = lists[0];
  for (let i = 0; i < lists.length; i++) {
    const list = lists[i];
    let sum = 0;
    for (let j = 0; j < list.length; j++) {
      sum += list[j];
    }
    if (sum > max_sum) {
      max_sum = sum;
      max_list = list;
    }
  }
  return max_list;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that returns the array in an array of arrays whose sum of elements is the highest.
