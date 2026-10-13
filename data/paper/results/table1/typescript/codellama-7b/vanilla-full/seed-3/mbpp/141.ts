function pancake_sort(nums: number[]): number[] {
  while(true) {
    let max_pos = nums.reduce((cur_max_pos, num, i) => Math.min(cur_max_pos, i), Infinity);
    if (max_pos == Infinity) {
      return nums;
    }
    nums.splice(max_pos, 1);
    if (max_pos == 0) {
      nums.unshift(nums[nums.length]);
      nums.pop();
    } else {
      nums[max_pos - 1] = nums[nums.length];
      nums.pop();
    }
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.
