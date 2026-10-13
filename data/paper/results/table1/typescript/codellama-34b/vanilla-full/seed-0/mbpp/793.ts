function last(arr: number[], x: number): number {
  const n = arr.length;
  let lo = 0, hi = n - 1;

  while (lo <= hi) {
    const mid = (lo + hi) >> 1;
    const midVal = arr[mid];

    if (x == midVal) {
      if (mid + 1 < n && arr[mid + 1] == x) {
        lo = mid + 1;
      } else {
        return mid;
      }
    } else if (x < midVal) {
      hi = mid - 1;
    } else {
      lo = mid + 1;
    }
  }

  return -1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the last position of an element in a sorted array.
