function Diff(li1: number[], li2: number[]): number[] {
  let d1: number[] = li1.filter((v) => !li2.includes(v));
  let d2: number[] = li2.filter((v) => !li1.includes(v));
  return [...d1, ...d2];
}

const arr1 = [1, 2, 3, 4, 5];
const arr2 = [4, 5, 6, 7, 8];
const arr3 = Diff(arr1, arr2);
console.log(arr3); // Output: `[1,2,3,6,7,8]

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to get the difference between two arrays.
