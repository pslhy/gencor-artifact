function heap_sort(iterable: number[]): number[] {
    const heap = [...iterable]
    const length = heap.length;

    // Build heap
    for (let i = Math.floor(length / 2) - 1; i >= 0; i--) {
        heapify(heap, length, i);
    }

    for (let i = length - 1; i > 0; i--) {
        const tmp = heap[0];
        heap[0] = heap[i];
        heap[i] = tmp;

        heapify(heap, i, 0);
    }

    return heap;
}

function heapify(heap: number[], length: number, i: number) {
    let largest = i;

    if (i * 2 + 1 < length && heap[i * 2 + 1] > heap[largest]) {
        largest = i * 2 + 1;
    }

    if (i * 2 + 2 < length && heap[i * 2 + 2] > heap[largest]) {
        largest = i * 2 + 2;
    }

    if (largest !== i) {
        const tmp = heap[i];
        heap[i] = heap[largest];
        heap[largest] = tmp;

        heapify(heap, length, largest);
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array.
