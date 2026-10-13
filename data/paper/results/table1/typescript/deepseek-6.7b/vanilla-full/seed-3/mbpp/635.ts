function heap_sort(iterable: number[]): number[] {
    let array = [...iterable];
    let count = array.length;
  
    // Heapify the array
    for (let i = Math.floor(count / 2) - 1; i >= 0; i--) {
      heapify(array, i, count);
    }
  
    // Swap and heapify the roots while the array is not empty
    for (let i = count - 1; i >= 0; i--) {
      let temp = array[0];
      array[0] = array[i];
      array[i] = temp;
      heapify(array, 0, i);
    }
  
    return array;
  }
  
  function heapify(array: number[], index: number, count: number) {
    let largest = index;
    let left = 2 * index + 1;
    let right = 2 * index + 2;
  
    // If left child is larger than root
    if (left < count && array[left] > array[largest]) {
      largest = left;
    }
  
    // If right child is larger than the largest so far
    if (right < count && array[right] > array[largest]) {
      largest = right;
    }
  
    // If the largest is not the current index, swap and heapify
    if (largest != index) {
      let temp = array[index];
      array[index] = array[largest];
      array[largest] = temp;
      heapify(array, largest, count);
    }
  }


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array.
