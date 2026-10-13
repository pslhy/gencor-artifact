
function heap_queue_largest(nums: number[], n: number): number[] {
    let heap = new Array(n + 1).fill(0);
    for (let i = 0; i < n; i++) {
        heap[i + 1] = nums[i];
        let child = i + 1;
        while (child > 1 && heap[Math.floor(child / 2)] < heap[child]) {
            let temp = heap[Math.floor(child / 2)];
            heap[Math.floor(child / 2)] = heap[child];
            heap[child] = temp;
            child = Math.floor(child / 2);
        }
    }
    for (let i = n; i < nums.length; i++) {
        if (nums[i] > heap[1]) {
            heap[1] = nums[i];
            let parent = 1;
            while (true) {
                let child = heap[parent * 2] > heap[parent * 2 + 1] ? parent * 2 : parent * 2 + 1;
                if (child < heap.length && heap[child] > heap[parent]) {
                    let temp = heap[parent];
                    heap[parent] = heap[child];
                    heap[child] = temp;
                    parent = child;
                } else break;
            }
        }
    }
    return heap.slice(1).sort((a, b) => b - a);
}

console.log(heap_queue_largest([9, 57, 23, 123, 48, 17], 3));

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n largest integers from a given array of numbers, returned in descending order.
