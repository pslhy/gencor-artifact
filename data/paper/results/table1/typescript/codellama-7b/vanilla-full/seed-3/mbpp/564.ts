function count_Pairs(arr: number[], n: number): number {
  let count = 0;
  for (let i = 0; i < n; i++) {
    for (let j = i + 1; j < n; j++) {
      if (arr[i] !== arr[j]) {
        count++;
      }
    }
  }
  return count;
}

/* Test code */

const arr = [1, 2, 3, 4, 5];
console.log(count_Pairs(arr, arr.length)); // Output: 10


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function which takes an array of integers and counts the number of possible unordered pairs where both elements are unequal.
