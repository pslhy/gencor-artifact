
function pancake_sort(nums: number[]): number[] {
  for (let turn = 0; turn <= nums.length - 1; turn++) {
    for (let i = 0; i <= nums.length - 2 - turn; i++) {
      if (nums[i] > nums[i + 1]) {
        // swap the elements at positions i and i + 1
        let temp = nums[i];
        nums[i] = nums[i + 1];
        nums[i + 1] = temp;
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
