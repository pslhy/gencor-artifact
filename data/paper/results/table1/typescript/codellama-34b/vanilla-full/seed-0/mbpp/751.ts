function check_min_heap(arr: number[]): boolean {
  const last_index = arr.length - 1;
  const last_parent = Math.floor(last_index / 2);
  let parent_index = 0;
  let parent_val = arr[parent_index];
  let child_val = arr[last_index];

  if (last_parent <= 0) {
    // If no parents or only one parent, then it's a min-heap
    return true;
  }

  while (parent_index <= last_parent) {
    if (parent_val >= child_val) {
      // Current parent value should be less than the value of the last index
      return false;
    }
    // Get the next parent index and value
    parent_index = last_index - parent_index;
    parent_val = arr[parent_index];
  }

  return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given array represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-array-represents-a-binary-heap/
