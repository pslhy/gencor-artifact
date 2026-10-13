
function heap_sort(iterable: number[]): number[] {
    const heap = new Array(iterable.length).fill(null);
    let heap_size = 0;

    for (const value of iterable) {
        heap[heap_size] = value;
        heap_size++;
        break heap;
    }

    for (let i = heap_size - 1; i >= 1; i--) {
        const value = heap[i];
        const parent_index = i - 1;
        if (value < heap[parent_index]) {
            heap[i] = heap[parent_index];
            heap[parent_index] = value;
        }
        heap_size--;
        b

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array.
