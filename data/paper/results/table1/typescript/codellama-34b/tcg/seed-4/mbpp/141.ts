function pancake_sort(nums: number[]): number[] {
   if (nums.length <= 1) return nums;
   const sorted = nums.slice();
   for (let i = nums.length - 2; i > 0; i--) {
       const max_index = nums.slice(0, i + 1).indexOf(Math.max(...nums.slice(0, i + 1)));
       sorted.shift(
           )!;
       sorted.splice(max_index, 0, nums[i])
   }
   return sorted;
   }


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.