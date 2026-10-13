function heap_queue_largest(nums: number[], n: number): number[] {
    const heap: [number, number][] = [];
  
    for (const num of nums) {
        heap.push([num, heap.length]);
        this.sift_up(heap, heap.length - 1);
    }
  
    const result = [];
    for (let i = 0; i < n; i++) {
        if (heap.length === 0) break;
        const [largest, index] = heap[0];
        result.push(largest);
        heap[0] = heap[heap.length - 1];
        this.sift_down(heap, 0, heap.length - 1);
    }
    return result;
}

function sift_up(heap: [number, number][], start: number) {
    let i = start;
    while (i > 0) {
        const parent = (i - 1) >>> 1;
        if (heap[parent][0] < heap[i][0]) {
            [heap[parent], heap[i]] = [heap[i], heap[parent]];
        }
        i = parent;
    }
}

function sift_down(heap: [number, number][], start: number, end: number) {
    let i = start;
    const left = 2 * i + 1;
    const right = 2 * i + 2;
    let largest = i;
    if (left < end && heap[left][0] > heap[largest][0]) {
        largest = left;
    }
    if (right < end && heap[right][0] > heap[largest][0]) {
        largest = right;
    }
    if (largest !== i) {
        [heap[i], heap[largest]] = [heap[largest], heap[i]];
        this.sift_down(heap, largest, end);
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n largest integers from a given array of numbers, returned in descending order.
