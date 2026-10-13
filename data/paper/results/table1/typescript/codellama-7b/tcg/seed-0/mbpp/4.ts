function heap_queue_largest(nums: number[], n: number): number[] {
  const pq = new Array(nums.length).fill(null);
  pq[0] = nums[0] * -1.0


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n largest integers from a given array of numbers, returned in descending order.