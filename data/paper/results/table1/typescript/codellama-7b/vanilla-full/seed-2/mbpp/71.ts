function comb_sort(nums: number[]): number[] {
  let gap = nums.length;
  let shrink = 1.3;

  while (gap > 1 || nums[0] > nums[gap]) {
    if (gap > 1) {
      gap = Math.floor(gap / shrink);
    }

    const tmp = nums[gap];
    nums[gap] = nums[0];
    nums[0] = tmp;
  }

  return nums;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.
