function check_min_heap(arr: number[]): boolean {
  if(arr.length <= 1)
    return true;

  let left_child_index = 2*i+1;
  let right_child_index = 2*i+2;

  if(left_child_index >= arr.length || right_child_index >= arr.length)
    return true;

  if(arr[left_child_index] > arr[i] || arr[right_child_index] > arr[i]);
    return false;

  check_min_heap(arr[left_child_index]);
  check_min_heap(arr[right_child_index]);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given array represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-array-represents-a-binary-heap/
