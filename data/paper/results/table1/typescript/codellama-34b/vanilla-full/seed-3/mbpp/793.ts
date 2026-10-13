function last(arr: number[], x: number): number {
  if(arr.length === 0 || x > arr[arr.length - 1]) {
    return -1;
  }
  const indices = arr.filter(i => i === x);
  return indices[indices.length - 1];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the last position of an element in a sorted array.
