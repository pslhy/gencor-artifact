function heap_sort(iterable: number[]): number[] {
  const array: number[] = [];

  for (const element of iterable) {
    array.push(element);
  }

  for (let i = Math.floor(array.length / 2) - 1; i >= 0; i--) {
    heapify(array, i, array.length);
  }

  for (let i = array.length - 1; i >= 0; i--) {
    const temp = array[0];
    array[0] = array[i];
    array[i] = temp;
    heapify(array, 0, i - 1);
  }

  return array;
}

function heapify(array: number[], i: number, end: number): void {
  let left = 2 * i + 1;
  let right = 2 * i + 2;
  let largest = i;

  if (left < end && array[left] > array[largest]) {
    largest = left;
  }

  if (right < end && array[right] > array[largest]) {
    largest = right;
  }

  if (largest !== i) {
    const temp = array[i];
    array[i] = array[largest];
    array[largest] = temp;
    heapify(array, largest, end);
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array.
