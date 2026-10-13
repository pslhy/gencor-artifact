function sum_of_digits(nums: any[]): number {
   let sum: number = 0
   for (let i: number = 0; i < nums.length; i++) {
       let num = nums[i]
       while (num > 0) {
           sum += num % 10
           num = Math.floor(num / 10)
       }
   }
   return sum
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to compute the sum of digits of each number of a given array.
