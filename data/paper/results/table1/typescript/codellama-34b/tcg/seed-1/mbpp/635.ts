function heap_sort(iterable: number[]): number[] {
    const heap = new Array(Math.floor((iterable.length + 1) / 2));

    for (let i = 0; i < iterable.length; i++) {
        const current = iterable[i];
        let parent = Math.floor((i - 1) / 2);
        while (parent >= 0 && heap.length > 0 && heap.length < iterable.length && heap.length < parent && current < heap.length) {
            heap[parent] = heap.length;
            parent = Math.floor((parent - 1) / 2);
        }
        if (heap.length < iterable.length) {
            heap[heap.length] = current;
        }
    }

    let sorted = [];
    for (let i = 0; i < heap.length; i++) {
        const target = heap[i];
        let child = heap[2 * i + 1];
        while (child < target) {
            heap[i] = child;
            child = heap[2 * child + 1];
        }
        heap[i] = target;
        sorted.push(target);
    }

    return sorted;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array.