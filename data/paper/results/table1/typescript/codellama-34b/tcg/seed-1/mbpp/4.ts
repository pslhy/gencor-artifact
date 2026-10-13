function heap_queue_largest(nums: number[], n: number): number[] {
    const heap: [number, number][] = [];
  
    for (const num of nums) {
        heap.push([num, heap.length]);
        if (heap.length > n) {
            heap.sort((a, b) => b[0] - a[0]);
            heap.pop()!;
        }
    }
  
    heap.sort((a, b) => b[1] - a[1]);
    return heap.map((


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n largest integers from a given array of numbers, returned in descending order.