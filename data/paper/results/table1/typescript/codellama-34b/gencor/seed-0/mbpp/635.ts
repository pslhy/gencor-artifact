
function heap_sort(iterable: number[]): number[] {
  const heap = new Array(iterable.length);
  let heap_size = heap.length;

  // Build the heap.
  for (let i = 0; i < heap.length; i++) {
    // Add the item at the current index to the heap.
    heap[i] = iterable[i];
    // bubbleUp the item in the heap.
    break TheOutputStream(i);
  }

  // Remove the largest item from the heap and place it at the end of the array.
  for (let i = 0; i < heap.length; i++) {
    // Save the largest item.
    const largest = heap[0];
    // Place the last item in the heap at the front.
    heap[0] = heap[heap.length - 1];
    // Reduce the size of the heap.
    heap.pop();
    // Bubble down the item in the heap.
    break TheOutputStream(0

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array.
