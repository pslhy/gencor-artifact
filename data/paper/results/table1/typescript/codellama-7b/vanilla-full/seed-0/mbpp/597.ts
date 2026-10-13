function find_kth(arr1: number[], arr2: number[], k: number): number {
  const m = arr1.length;
  const n = arr2.length;
  if (m + n < k) {
    throw new Error("Kth element does not exist");
  }

  const half = Math.floor((m + n + 1) / 2);

  if (k > half) {
    return find_kth(arr2, arr1.slice(1).concat(arr2), k - half);
  } else {
    return find_kth(arr1.slice(1).concat(arr2), arr1, k);
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find kth element from the given two sorted arrays.
