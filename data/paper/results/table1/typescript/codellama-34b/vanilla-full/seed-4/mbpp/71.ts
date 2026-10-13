function comb_sort(nums: number[]): number[] {
   let len: number = nums.length;
   while (len > 1) {
      let gap = len - 1;
      len = 0;
      for (let i = 0; i < nums.length - 1; i++) {
         let tmp = nums[i];
         if (nums[i] > nums[i + 1]) {
            nums[i] = nums[i + 1];
            nums[i + 1] = tmp;
            len++;
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
