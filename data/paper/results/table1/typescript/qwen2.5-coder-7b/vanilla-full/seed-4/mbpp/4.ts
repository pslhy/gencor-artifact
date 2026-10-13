function heap_queue_largest(nums: number[], n: number): number[] { 
    // Implementation of the heap queue algorithm to find the n largest numbers
    if (n > nums.length) {
        throw new Error("n is greater than the number of elements in the array");
    }
    const result = nums.slice(0).sort((a, b) => b - a);
    return result.slice(0, n);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n largest integers from a given array of numbers, returned in descending order.
