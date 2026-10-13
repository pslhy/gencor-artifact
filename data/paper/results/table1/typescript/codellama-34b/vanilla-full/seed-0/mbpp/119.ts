function search(arr: number[]): number {
  if (arr.length === 1) {
    return arr[0];
  }
  
  let mid = arr.length / 2;
  let left = arr.slice(0, mid - 1);
  let right = arr.slice(mid + 1);
  
  if (left.length === 0 && right.length === 0) {
    return arr[mid];
  }
  
  if (left.length === 0) {
    return search(right);
  }
  
  if (right.length === 0) {
    return search(left);
  }
  
  return search(arr);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the element that appears only once in a sorted array.
