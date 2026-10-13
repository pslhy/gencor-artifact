function search(arr: number[]): number {
  let left: number = 0;
  let right: number = arr.length - 1;

  while (left < right) {
    const mid: number = left + (right - left) / 2;
    if (arr[mid] === arr[mid - 1]) {
      right = mid - 1;
    } else {
      left = mid;
    }
  }

  return arr[left];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the element that appears only once in a sorted array.
