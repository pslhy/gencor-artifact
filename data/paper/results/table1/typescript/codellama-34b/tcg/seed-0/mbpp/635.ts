function heap_sort(iterable: number[]): number[] {
  const heap = new Array(iterable.length);
  let size = 0;

  for (const element of iterable) {
    heap[size++] = element;
  }

  for (let index = Math.floor(size / 2) - 1; index >= 0; index--) {
    heap_sort(heap);
  }

  const result = new Array(size);
  for (let index = 0; index < size; index++) {
    result[index] = heap_sort(heap);
  }

  return result.reverse().concat(heap_sort(heap).reverse().slice(1, size + 1).reverse().concat(heap_sort(heap).reverse().slice(size, heap.length + 1).reverse()).concat(heap_sort(heap).reverse().slice(1, size + 1).reverse()).concat(heap_sort(heap).reverse().slice(size, heap.length + 1).reverse()).concat(heap_sort(heap).reverse().slice(1, size + 1).reverse()).concat(heap_sort(heap).reverse().slice(size, heap.length + 1).reverse()).concat(heap_sort(heap).reverse().slice(1, size + 1).reverse()).concat(heap_sort(heap).reverse().slice(size, heap.length + 1).reverse()).concat(heap_sort(heap).reverse().slice(1, size + 1).reverse()).concat(heap_sort(heap).reverse().slice(size, heap.length + 1).reverse()).concat(heap_sort(heap).reverse().slice(1, size + 1).reverse()).concat(heap_sort(heap).reverse().slice(size, heap.length + 1).reverse()).concat(heap_sort(heap).reverse().slice(1, size + 1).reverse()).concat(heap_sort(heap).reverse().slice(size, heap.length + 1).reverse()).concat(heap_sort(heap).reverse().slice(1, size + 1).reverse()).concat(heap_sort(heap).reverse().slice(size, heap.length + 1).reverse())

  .reverse().concat(heap_sort(heap)).concat(heap_sort(heap).reverse().slice(1, size + 1).reverse()).concat(heap_sort(heap).reverse().slice(size, heap.length + 1).reverse()).concat(heap_sort(heap).reverse().slice(1, size + 1).reverse()).concat(heap_sort(heap).reverse().slice(size, heap.length + 1).reverse()).concat(heap_sort(heap).reverse().slice(1, size + 1).reverse()).concat(heap_sort(heap).reverse().slice(size, heap.length + 1).reverse()).concat(heap_sort(heap).reverse().slice(1, size + 1).reverse()).concat(heap_sort(heap).reverse().slice(size, heap.length + 1).reverse()).concat(heap_sort(heap).reverse().slice(1, size + 1).reverse()).concat(heap_sort(heap).reverse().slice(size, heap.length + 1).reverse()).concat(heap_sort(heap).reverse().slice(1, size + 1).reverse()).concat(heap_sort(heap).reverse().slice(size, heap.length + 1).reverse()).concat(heap_sort(heap).reverse().slice(1, size + 1).reverse()).concat(heap_sort(heap).reverse().slice(size, heap.length + 1).reverse()).concat(heap_sort(heap).reverse().slice(1, size + 1).reverse()).concat(heap_sort(heap).reverse().slice(size, heap.length + 1).reverse()).concat(heap_sort(heap).reverse().slice(1, size + 1).reverse()).concat(heap_sort(heap).reverse().slice(size, heap.length + 1).reverse()).concat(heap_sort(heap).reverse().slice(1, size + 1).reverse()).concat(heap_sort(heap).reverse().slice(size, heap.length + 1).reverse()).concat(heap_sort(heap).reverse().slice(1, size + 1).reverse()).concat(heap_sort(heap).reverse().slice(size, heap.length + 1).reverse()).concat(heap_sort(heap).reverse().slice(1, size + 1).reverse()).concat(heap_sort(heap).reverse().slice(size, heap.length + 1).reverse()).concat(heap_sort(heap).reverse().slice(1, size + 1).reverse()).concat(heap_sort(heap).reverse().slice(size, heap.length + 1).reverse()).concat(heap_sort(heap).reverse().slice(size, heap.length + 1).reverse()).concat(heap_sort(heap).reverse().slice(size, heap.length + 1).reverse()).concat(heap_sort(heap).reverse().slice(size, heap.length + 1).reverse()).concat(heap_sort(heap).reverse().slice(size, heap.length + 1).reverse()).concat(heap_sort(heap).reverse().slice(size, heap.length + 1).reverse()).concat(heap_sort(heap).reverse().slice(size, heap.length + 1).reverse()).concat(heap_sort(heap).reverse().slice(size, heap.length + 1).reverse()).concat(heap_sort(heap).reverse().slice(size, heap.length + 1).reverse()).concat(heap_sort(heap).reverse().slice(size, heap.length + 1).reverse()).concat(heap_sort(h


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array.