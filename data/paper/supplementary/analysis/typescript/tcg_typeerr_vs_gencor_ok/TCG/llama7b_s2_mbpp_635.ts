function heap_sort(iterable: number[]): number[] {
    // 1. Add to min-heap
    const heap = new Map<number, number>();
    for (const value of iterable) {
        const priority = heap.size;
        heap.set(value, priority);
    }
    // 2. Sort
    const sorted = [];
    while (heap.size > 0) {
        // 2a. Find the minimum element
        let min = heap.get(heap.keys().reduce((a: number, b: number) =>
            a < b ? a : b))!;
        // 2b. Remove the minimum element
        heap.delete(min);
        // 2c. Add to sorted array
        sorted.push(min);
        // 2d. Update priority of remaining elements
        for (const value of heap.keys()) {
            if (heap.get(value)! < min) {
                min = value;
                break;
            }
        }
        heap.set(min, heap.get(min)! + 1);
    }
    return sorted;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array.