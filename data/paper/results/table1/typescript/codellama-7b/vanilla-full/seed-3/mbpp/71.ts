function comb_sort(nums: number[]): number[] {
  let d = nums.length;
  let g = d;
  let s = true;
  while (g > 1 || s) {
    if (g > 1) {
      g = d * (g as float32);
    }
    let i = 0;
    while (i < nums.length - g) {
      if (nums[i] > nums[i + g]) {
        [nums[i], nums[i + g]] = [nums[i + g], nums[i]];
        s = true;
      }
      i += 1;
    }
    d /= (1 + (2 as float32));
  }
  return nums;
}

const unsortedNums = [2, 5, 7, 1, 3, 6, 4];
console.log(combSort(unsortedNums)); // [1, 2, 3, 4, 5, 6, 7]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.
