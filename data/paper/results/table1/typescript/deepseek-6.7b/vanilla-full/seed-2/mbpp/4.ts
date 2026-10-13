function heap_queue_largest(nums: number[], n: number): number[] {
    let arr = Array.from(nums);
    let heap = new MaxPriorityQueue();
    for (let num of arr) {
        heap.enqueue(num);
    }
    let res = [];
    for (let i = 0; i < n; i++) {
        res.push(heap.dequeue().element);
    }
    return res.sort((a, b) => b - a);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n largest integers from a given array of numbers, returned in descending order.
