function pancake_sort(nums: number[]): number[] {
  const sorted = Array(nums.length);
  let done = false;
  while (!done) {
    let max_index = 0;
    for (let i = 0; i < nums.length; i++) {
      if (nums[i] > nums[max_index]) {
        max_index = i;
      }
    }
    if (max_index === nums.length - 1) {
      done = true;
    } else {
      const temp = nums[max_index];
      nums[max_index] = nums[nums.length - 1];
      nums[nums.length - 1] = temp;
      sorted[max_index] = true;
    }
  }
  return sorted;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.
