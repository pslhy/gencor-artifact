function comb_sort(nums: number[]): number[] {
  const gap = nums.length;
  let swapped = true;
  do {
    gap /= 1.25;
    if (gap < 1) return nums;

    swapped = false;
    for (let i = 0; i + gap < nums.length; i++) {
      if (nums[i] > nums[i + gap]) {
        const temp = nums[i];
        nums[i] = nums[i + gap];
        nums[i + gap] = temp;
        swapped = true;
      }
    }
  } while (swapped);
  return nums;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.
