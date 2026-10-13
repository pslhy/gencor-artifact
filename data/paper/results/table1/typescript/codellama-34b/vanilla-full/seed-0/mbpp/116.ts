function tuple_to_int(nums: [number, number, number]): number {
   const x = nums[0] * 100 + nums[1] * 10 + nums[2];
   return x
}

let tuple: [number, number, number] = [1, 2, 3]
console.log(tuple_to_int(tuple)) // 123


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert a given array of positive integers into a single integer.
