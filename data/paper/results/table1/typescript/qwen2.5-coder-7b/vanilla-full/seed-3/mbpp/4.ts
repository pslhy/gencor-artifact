function heap_queue_largest(nums: number[], n: number): number[] {
    // Sort the array in descending order and return the first n elements
    return nums.sort((a, b) => b - a).slice(0, n);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n largest integers from a given array of numbers, returned in descending order.
