function tuple_to_int(nums: [number, number, number]): number {
   let result: number = 0
   for (let i: number = 0; i < 3; i++) {
       result: number = result * 10 + nums[i]
   }
   return result
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert a given array of positive integers into a single integer.
