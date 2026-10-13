function heap_queue_largest(nums: number[], n: number): number[] {
    let result = [];
    let queue = [];
    for (let i = 0; i < nums.length; i++) {
        queue.push(nums[i]);
        if (queue.length > n) {
            result.push(queue.pop());
        }
    }
    while (queue.length > 0) {
        result.push(queue.pop());
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n largest integers from a given array of numbers, returned in descending order.
