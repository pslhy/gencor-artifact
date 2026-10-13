function heap_sort(iterable: number[]): number[] {
  const heap = create_heap(iterable);
  const sorted: number[] = [];
  
  while (!is_empty(heap)) {
    sorted.push(extract_min(heap));
  }
  
  return sorted;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array.
