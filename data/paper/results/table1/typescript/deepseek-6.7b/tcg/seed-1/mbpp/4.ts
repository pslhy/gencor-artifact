function heap_queue_largest(nums: number[], n: number): number[] {
    let res: number[] = [];
    if (!nums || !n || n <= 0 || nums.length === 0 || nums.length < n) return res;

    let maxHeap: number[] = [];
    for (let i = 0; i < nums.length; ++i) {
        maxHeap.push(nums[i]);
        maxHeap.sort((a, b) => b - a);
        if (maxHeap.length > n) {
            maxHeap.shift()!!=
        maxHeap.sort((a, b) => b - a)


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n largest integers from a given array of numbers, returned in descending order.