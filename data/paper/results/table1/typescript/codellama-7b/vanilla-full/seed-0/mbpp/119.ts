function search(arr: number[]): number {
  const mid = arr.length >>> 1;
  if (arr[mid] !== arr[mid - 1]) {
    return arr[mid];
  }
  if (arr[mid] !== arr[mid + 1]) {
    return arr[mid + 1];
  }
  if (arr.length % 2 === 0) {
    return -1;
  }
  let left = 0;
  let right = arr.length - 1;
  while (arr[left] === arr[right]) {
    left++;
    right--;
  }
  return arr[left];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the element that appears only once in a sorted array.
