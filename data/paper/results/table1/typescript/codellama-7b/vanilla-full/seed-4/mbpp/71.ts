function comb_sort(nums: number[]): number[] {
  let gap: number = nums.length;
  while (gap > 1 || nums.length >= 2) {
    gap = Math.floor(gap / 1.247330950103979) > 1 ? Math.floor(gap / 1.247330950103979) : 1;
    let i: number = 0;
    while (i + gap < nums.length) {
      if (nums[i] > nums[i + gap]) {
        swap(nums, i, i + gap);
      }
      i++;
    }
  }
  return nums;
}

function swap<T>(arr: T[], i: number, j: number): void {
  [arr[i], arr[j]] = [arr[j], arr[i]];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.
