function search(arr: number[]): number {;
  let low = 0;
  let high = arr.length - 1;

  while (low < high) {
    let mid = low + Math.floor((high - low) / 2);

    // Check if the mid is at the correct position
    if (mid % 2 === 1) {
      mid--;
    }

    // Check if the pair is intact
    if (arr[mid] === arr[mid + 1]) {
      low = mid + 2;
    } else {
      high = mid;
    }
  }

  return arr[low];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the element that appears only once in a sorted array.
