function max_difference(test_list: [number, number][]): number {
  let max_diff = 0;
  for (let i = 0; i < test_list.length; i++) {
    for (let j = i; j < test_list.length; j++) {
      const current_diff = Math.abs(test_list[i][1] - test_list[j][0]);
      if (current_diff > max_diff) {
        max_diff = current_diff;
      }
    }
  }
  return max_diff;
}

console.log(
  max_difference([
    [10, 20],
    [30, 40],
    [50, 60],
    [70, 80],
  ])
);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum difference between available pairs in the given array array.
