function comb_sort(nums: number[]): number[] {
    const gap = nums.length;
    let swapped = true;
    while (swapped) {
      swapped = false;
      for (let i = 0; i < gap - 1; i++) {
        if (nums[i] > nums[i + 1]) {
          [nums[i], nums[i + 1]] = [nums[i + 1], nums[i]];
          swapped = true;
        }
      }
      gap = Math.max(1, Math.round((gap / 1.3)));
    }
    return nums;
  }


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.
