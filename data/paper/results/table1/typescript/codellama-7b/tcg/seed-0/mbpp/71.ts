function comb_sort(nums: number[]): number[] {
  const gap = nums.length;
  let swapped = true;
  do {
    gap / 1.5;
    swapped = false;
    for (let i = 0; i < nums.length - gap; i++) {
      if (nums[i] > nums[i + gap]) {
        const temp = nums[i + gap];
        nums[i + gap] = nums[i];
        nums[i] = temp;
        swapped = true;
      }
    }
  } while (gap > 1 || swapped);
  return nums;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.