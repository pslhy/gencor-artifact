function comb_sort(nums: number[]): number[] { // Complexity: O(n log n)
  let gap: number = nums.length;
  let shrinkFactor = 1.3; // Commonly used value for the shrink factor
  let sorted = false;

  while (!sorted) {
    gap = Math.floor(gap / shrinkFactor);
    if (gap <= 1) {
      gap = 1;
      sorted = true; // If gap is 1, we do a final pass
    }

    let i = 0;
    while (i + gap < nums.length) {
      if (nums[i] > nums[i + gap]) {
        // Swap elements
        let temp = nums[i];
        nums[i] = nums[i + gap];
        nums[i + gap] = temp;
        sorted = false; // If we swap, we know the array is not sorted
      }
      i++;
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
