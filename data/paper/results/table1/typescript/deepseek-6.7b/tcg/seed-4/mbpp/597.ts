function find_kth(arr1: number[], arr2: number[], k: number): number {
  let i = -1
  let j = -1
  let count = 0
  let result = 0

  if (k <= 0) return -1;

  while (count < k) {
    i++
    j++
    if ((arr1[i] < arr2[j]) && (i < arr1.length)) {
      result = arr1[i]
    } else {
      if (j < arr2.length) {
        result = arr2[j]
      } else if (i < arr1.length) {
        result = arr1[i]
      } else {
        return -1;
      }
    }
    count++
  }
  return result
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find kth element from the given two sorted arrays.