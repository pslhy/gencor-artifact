function search(arr: number[]): number {
  if(arr.length === 0)
    throw new Error('No element to search in an empty array');

  let pivot = arr[0];
  let left = 0;
  let right = arr.length - 1;

  while(left < right) {
    const mid = (left + right) >> 1;
    if(arr[mid] === pivot) {
      left = mid + 1;
    } else {
      pivot = arr[mid];
      right = mid;
    }
  }

  return arr[left] === arr[right] ? null : arr[left];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the element that appears only once in a sorted array.
