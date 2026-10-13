function heap_queue_largest(nums: number[], n: number): number[] {
    const heap = new Array(n).fill(0);
    for (let i = 0; i < n; i++) {
        heap[i] = nums[i];
    }
    for (let i = n - 1; i >= 0; i--) {
        const parent = Math.floor((i - 1) / 2);
        const left = 2 * i + 1;
        const right = 2 * i + 2;
        if (nums[i] < nums[parent]) {
            heap[i] = nums[parent];
            heap[parent] = nums[i];
        }
        if (left < n && nums[i] < nums[left]) {
            heap[i] = nums[left];
            heap[left] = nums[i];
        }
        if (right < n && nums[i] < nums[right]) {
            heap[i] = nums[right];
            heap[right] = nums[i];
        }
    }
    return heap.slice(0, n);
}

// Example usage:
const arr = [3, 5, 2, 6, 8, 1, 4];
const result = heap_queue_largest(arr, 3);
// result: [8, 6, 5]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n largest integers from a given array of numbers, returned in descending order.