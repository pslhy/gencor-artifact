function heap_queue_largest(nums: number[], n: number): number[] {
    // Create a max heap to store the top n largest numbers
    const heap = [];

    // Add the first n numbers to the heap
    for (let i = 0; i < n; i++) {
        heap.push(nums[i]);
    }

    // Build the max heap
    heapify(heap, 0);

    // If there are more numbers in the array than n, add the remaining numbers to the heap
    if (nums.length > n) {
        for (let i = n; i < nums.length; i++) {
            heap.push(nums[i]);
            heapify(heap, heap.length - 1);

            // If the heap size exceeds n, remove the largest number from the heap
            if (heap.length > n) {
                heap.pop();
                heapify(heap, 0);
            }
        }
    }

    return heap.slice(0); // Return the top n largest numbers from the heap
}

// Heapify function for building the max heap
function heapify(heap: number[], i: number) {
    const left = 2 * i + 1;
    const right = 2 * i + 2;
    let largest = i;

    if (left < heap.length && heap[left] > heap[i]) {
        largest = left;
    }

    if (right < heap.length && heap[right] > heap[largest]) {
        largest = right;
    }

    if (largest !== i) {
        [heap[i], heap[largest]] = [heap[largest], heap[i]];
        heapify(heap, largest);
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n largest integers from a given array of numbers, returned in descending order.
