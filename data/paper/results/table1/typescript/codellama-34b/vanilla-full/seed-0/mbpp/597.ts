function find_kth(arr1: number[], arr2: number[], k: number): number {
  const p1 = 0; const p2 = 0;
  while (p1 < arr1.length && p2 < arr2.length) {
    if (k === 1) {
      return Math.min(arr1[p1], arr2[p2]);
    }
    if (arr1[p1] < arr2[p2]) {
      p1++;
    } else {
      p2++;
    }
  }
  return -1;
}

const arr1 = [1, 3, 5, 7, 9];
const arr2 = [2, 4, 6, 8, 10];
console.log(find_kth(arr1, arr2, 4)); // Output: 7


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find kth element from the given two sorted arrays.
