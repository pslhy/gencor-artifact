function heap_queue_largest(nums: number[], n: number): number[] {
    const heap = [...nums]
    const result: number[] = []

    // Build a max heap
    for (let i = Math.floor(heap.length / 2) - 1; i >= 0; i--) {
        heapify(heap, i)
    }

    // Extract the largest n items
    for (let i = 0; i < n; i++) {
        result.push(heap.shift()!)
    }

    // Return the result in descending order
    return result.reverse()
}

function heapify(heap: number[], i: number): void {
    let max = i
    const left = 2 * i + 1
    const right = 2 * i + 2

    if (left < heap.length && heap[left] > heap[max]) {
        max = left
    }

    if (right < heap.length && heap[right] > heap[max]) {
        max = right
    }

    if (max !== i) {
        const tmp = heap[max]
        heap[max] = heap[i]
        heap[i] = tmp
        heapify(heap, max)
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n largest integers from a given array of numbers, returned in descending order.
