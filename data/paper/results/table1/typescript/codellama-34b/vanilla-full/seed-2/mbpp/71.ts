function comb_sort(nums: number[]): number[] {
    let gap = nums.length;
    let swapped = true;
    while (gap > 1 || swapped) {
      gap = Math.floor(gap / 1.3);
      if (gap === 0) {
        gap = 1;
      }
      swapped = false;
      for (let i = 0; i < nums.length; i++) {
        for (let j = i; j > 0 && nums[j] < nums[j - 1]; j--) {
          [nums[j], nums[j - 1]] = [nums[j - 1], nums[j]];
          swapped = true;
        }
      }
    }
    return nums;
  }
  
  const arr = [64, 25, 12, 22, 11];
  console.log(comb_sort(arr));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.
