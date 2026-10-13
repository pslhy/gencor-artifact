function heap_sort(iterable: number[]): number[] {
    let arr = Array.isArray(iterable) ? iterable : [...iterable];
    let heapSize = arr.length;
  
    /* Build heap */
    for (let i = Math.floor(heapSize / 2) - 1; i >= 0; i--) {
      heapify(arr, i, heapSize);
    }
  
    /* Heap sort */
    for (let i = arr.length - 1; i > 0; i--) {
      [arr[0], arr[i]] = [arr[i], arr[0]]; // swap
      heapSize--;
      heapify(arr, 0, heapSize);
    }
  
    return arr;
  }
  
  function heapify(arr: number[], i: number, heapSize: number) {
    let largest = i;
    let left = 2 * i + 1;
    let right = 2 * i + 2;
  
    /* Find the largest among root, left child and right child */
    if (left < heapSize && arr[left] > arr[largest]) {
      largest = left;
    }
  
    if (right < heapSize && arr[right] > arr[largest]) {
      largest = right;
    }
  
    /* Swap and continue heapifying if the root is not the largest */
    if (largest != i) {
      [arr[i], arr[largest]] = [arr[largest], arr[i]];
      heapify(arr, largest, heapSize);
    }
  }


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array.
