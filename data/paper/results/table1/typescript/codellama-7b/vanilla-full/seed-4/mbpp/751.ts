function check_min_heap(arr: number[]): boolean {
  if (arr.length <= 1) {
    return true;
  }

  const left = 2 * i + 1;
  const right = 2 * i + 2;

  if (left >= arr.length || right >= arr.length) {
    return false;
  }

  const parent = arr[i];
  const left_child = arr[left];
  const right_child = arr[right];

  return !(left_child < parent && right_child < parent);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given array represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-array-represents-a-binary-heap/
