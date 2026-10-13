function comb_sort(nums: number[]): number[] {
  let d = nums.length;
  let g = d;
  let s = true;
  while (g > 1 || s) {
    if (g > 1) {
      g = d * (g as number / 1.3);
    }
    s = false;
    for (let i = 0; i + g < nums.length; i++) {
      if (nums[i] > nums[i + g]) {
        let temp = nums[i];
        nums[i] = nums[i + g];
        nums[i + g] = temp;
        s = true;
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