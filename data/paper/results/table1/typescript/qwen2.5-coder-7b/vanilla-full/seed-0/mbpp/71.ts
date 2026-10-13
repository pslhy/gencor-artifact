function comb_sort(nums: number[]): number[] { 
  let size = nums.length;
  let factor = 1.3;
  let swapped = true;

  while (swapped || size > 1) {
    if (size > 1) size = Math.floor(size / factor);

    swapped = false;

    for (let i = 0; i + size < nums.length; i++) {
      if (nums[i] > nums[i + size]) {
        [nums[i], nums[i + size]] = [nums[i + size], nums[i]];
        swapped = true;
      }
    }
  }
  return nums;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.
