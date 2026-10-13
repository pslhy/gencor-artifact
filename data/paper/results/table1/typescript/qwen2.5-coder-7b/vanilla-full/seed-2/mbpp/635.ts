function heap_sort(iterable: number[]): number[] { // Complexity: O(n log n)
  let length = iterable.length;

  for (let i = length; i >= 0; i--) {
    build_max_heap(iterable, length);
  }
  for (let i = length - 1; i > 0; i--) {
    [iterable[0], iterable[i]] = [iterable[i], iterable[0]];
    length--;
    build_max_heap(iterable, length);
  }
  return iterable;
}

function build_max_heap(heap: number[], heapSize: number) {
  let largest;
  let left = 2 * heapSize + 1;
  let right = 2 * heapSize + 2;
  
  if (left < heapSize && heap[left] > heap[heapSize]) {
    largest = left;
  } else {
    largest = heapSize;
  }
  if (right < heapSize && heap[right] > heap[largest]) {
    largest = right;
  }
  if (largest !== heapSize) {
    [heap[largest], heap[heapSize]] = [heap[heapSize], heap[largest]];
    build_max_heap(heap, largest);
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array.
