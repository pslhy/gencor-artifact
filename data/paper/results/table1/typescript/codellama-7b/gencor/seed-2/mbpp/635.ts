
function heap_sort(iterable: number[]): number[] {
    // 1. Add to min-heap
    const heap = new Array<number>();
    for (const value of iterable) {
        heap.push(value);
    }
    // 2. Remove from min-heap and add to the array
    for (let length = iterable.length; length > 0; length--) {
        const last = heap.pop();
        iterable.splice(length - 1, 0, last as number);
    }
    return iterable;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array.
