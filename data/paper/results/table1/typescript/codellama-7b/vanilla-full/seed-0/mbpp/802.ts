function count_rotation(arr: number[]): number {
  const n = arr.length;
  let count = 0;

  for (let i = 0; i < n; i++) {
    if (arr[i] !== i) {
      while (arr[i] !== i) {
        arr[(i + 1) % n] = arr[i];
        arr[i++] = (i + 1) % n;
        count++;
      }
    }
  }

  return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of rotations required to generate a sorted array. https://www.geeksforgeeks.org/count-of-rotations-required-to-generate-a-sorted-array/
