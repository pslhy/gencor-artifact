function max_occurrences(nums: number[]): number {
   let counts: Map<number, number> = new Map<number, number>();
   nums.forEach((num) => {
      if (counts.has(num)) {
         counts.set(num, counts.get(num)!)
      } else {
         counts.set(num, 1);
      }
   });

   let maxKey = nums[0];
   let maxCount = 0;
   counts.forEach((value, key) => {
      if (value > maxCount) {
         maxKey = key;
         maxCount = value;
      }
   });

   return maxKey;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the item with maximum frequency in a given array.