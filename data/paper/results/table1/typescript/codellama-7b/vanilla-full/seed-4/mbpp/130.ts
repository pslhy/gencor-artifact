function max_occurrences(nums: number[]): number {
  let max_num = 0;
  let max_count = 0;
  for (const num of nums) {
    let count = 0;
    for (const other of nums) {
      if (num === other) {
        count += 1;
      }
    }
    if (count > max_count) {
      max_count = count;
      max_num = num;
    }
  }
  return max_num;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the item with maximum frequency in a given array.
