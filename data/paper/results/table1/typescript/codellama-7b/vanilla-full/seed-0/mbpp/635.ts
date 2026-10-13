function heap_sort(iterable: number[]): number[] {
  const sorted = Array.from(iterable);
  construct_heap(sorted);
  for (let i = sorted.length - 1; i > 0; i--) {
    swap(sorted, 0, i);
    heapify(sorted, 0, i - 1);
  }
  return sorted;
}

function construct_heap(arr: number[]): void {
  for (let i = Math.floor(arr.length / 2) - 1; i >= 0; i--) {
    heapify(arr, i, arr.length - 1);
  }
}

function heapify(arr: number[], parent: number, last: number): void {
  let largest = parent;
  let left = 2 * parent + 1;
  let right = 2 * parent + 2;

  if (left <= last && arr[left] > arr[largest]) {
    largest = left;
  }
  if (right <= last && arr[right] > arr[largest]) {
    largest = right;
  }

  if (largest != parent) {
    swap(arr, largest, parent);
    heapify(arr, largest, last);
  }
}

function swap(arr: number[], i: number, j: number): void {
  const temp = arr[i];
  arr[i] = arr[j];
  arr[j] = temp;
}

const result = heap_sort([1, 4, 3, 2, 7, 9, 6, 8, 5]);
console.log(result); // [1, 2, 3, 4, 5, 6, 7, 8, 9]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array.
