
function heap_queue_largest(nums: number[], n: number): number[] {
    const heap = new Array(n+1).fill(0); // heap of size n+1 to store the largest n elements
    const result = new Array(n);

    // build heap
    for (let i = 0; i < n; i++) {
        heap[i] = nums[i];
        const parent = (i - 1) >> 1;
        if (parent >= 0 && heap[parent] < heap[i]) {
            [heap[parent], heap[i]] = [heap[i], heap[parent]];
        }
    }

    // insert remaining elements
    for (let i = n; i < nums.length; i++) {
        if (heap[0] < nums[i]) {
            heap[0] = nums[i];
            heap_queue_largest(heap, n);
        }
    }

    // extract largest elements
    for (let i = 0; i < n; i++) {
        result[i] = heap[0];
        heap[0] = heap[n-i-1];
        heap_queue_largest(heap, n-i-1);
    }

    return result;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n largest integers from a given array of numbers, returned in descending order.
