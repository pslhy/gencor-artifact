function heap_sort(iterable: number[]): number[] {
  const n = iterable.length;

  // Construct the heap
  for (let i = Math.floor(n / 2) - 1; i >= 0; i--) {
    heapify(iterable, n, i);
  }

  // Sort the heap
  for (let i = n - 1; i >= 0; i--) {
    const temp = iterable[0];
    iterable[0] = iterable[i];
    iterable[i] = temp;

    heapify(iterable, i, 0);
  }

  return iterable;
}

function heapify(iterable: number[], n: number, i: number): void {
  const left = 2 * i + 1;
  const right = 2 * i + 2;
  let largest = i;

  if (left < n && iterable[left] > iterable[largest]) {
    largest = left;
  }

  if (right < n && iterable[right] > iterable[largest]) {
    largest = right;
  }

  if (largest !== i) {
    const temp = iterable[i];
    iterable[i] = iterable[largest];
    iterable[largest] = temp;

    heapify(iterable, n, largest);
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array.
