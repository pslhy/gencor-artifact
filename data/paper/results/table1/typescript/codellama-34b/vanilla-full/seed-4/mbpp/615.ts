function average_tuple(nums: number[][]): number[] {
   const avg: number[] = [];
   for (let i = 0; i < nums.length; i++) {
       var sum = 0;
       for (let j = 0; j < nums[i].length; j++) {
           sum += nums[i][j];
       }
       avg[i] = sum / nums[i].length;
   }
   return avg;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function which takes an arrays of arrays and returns the average value for each subarray as an array.
