function heap_sort(iterable: number[]): number[] { 
  let size = iterable.length;

  // Create a max heap
  for (let step = Math.floor(size / 2) - 1; step >= 0; step--) {
    heapify(iterable, size, step);
  }

  // Extract elements from the heap
  for (let step = size - 1; step > 0; step--) {
    [iterable[0], iterable[step]] = [iterable[step], iterable[0]];
    heapify(iterable, step, 0);
  }

  return iterable;
}

function heapify(iterable: number[], size: number, index: number) {
  let largest = index; // Initialize largest as root
  let left = 2 * index + 1; // left = 2*index + 1
  let right = 2 * index + 2; // right = 2*index + 2

  // If left child is larger than root
  if (left < size && iterable[left] > iterable[largest]) {
    largest = left;
  }

  // If right child is larger than root
  if (right < size && iterable[right] > iterable[largest]) {
    largest = right;
  }

  // If largest is not root
  if (largest !== index) {
    [iterable[largest], iterable[index]] = [iterable[index], iterable[largest]]; // swap

    // Recursively heapify the affected sub-tree
    heapify(iterable, size, largest);
  }
}

let array = [12, 11, 13, 5, 6, 7];
console.log(heap_sort([...array])); // [5, 6, 7, 11, 12, 13]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array.
