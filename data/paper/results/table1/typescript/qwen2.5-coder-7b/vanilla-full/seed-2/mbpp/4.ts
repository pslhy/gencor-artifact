function heap_queue_largest(nums: number[], n: number): number[] { 
    nums.sort((a, b) => b - a); 
    return nums.slice(0, n); 
}

// Example usage:
console.log(heap_queue_largest([-3, -4, 5], 3)); // [-4, -3, 5]
console.log(heap_queue_largest([4, -4, 4], 2)); // [4, 4]
console.log(heap_queue_largest([-3, 2, 1, 2, -1, -2, 1], 1)); // [2]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n largest integers from a given array of numbers, returned in descending order.
