
function find_kth(arr1: number[], arr2: number[], k: number): number {
  let i = (k <= 1 ? 0 : Math.floor(k / 2));
  let j = (k <= 1 ? 0 : k - i - 1);

  while (i >= 0 && j >= 0 && arr1[i] > arr2[j]) {
    i--;
    j--;
  }

  if (i < 0) {
    return arr2[k];
  } else if (j < 0) {
    return arr1[k];
  } else {
    return arr1[i] > arr2[j] ? arr1[k] : arr2[k];
  }
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find kth element from the given two sorted arrays.
