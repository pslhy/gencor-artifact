function comb_sort(nums: number[]): number[] {
  let direction = -1;
  let step = nums.length - 1;
  let swapped = true;

  while (step !== 0 && swapped) {
    swapped = false;
    for (let i = 0; i < nums.length; i++) {
      if (nums[i] > nums[i + step]) {
        const temp = nums[i];
        nums[i] = nums[i + step];
        nums[i + step] = temp;
        swapped = true;
      }
    }
    step = Math.max(1, step - 1);
  }

  return nums;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.
