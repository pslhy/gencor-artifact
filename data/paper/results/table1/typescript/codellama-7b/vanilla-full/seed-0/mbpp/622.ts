function get_median(arr1: number[], arr2: number[], n: number): number {
  const mid = n / 2;
  if (n % 2 === 0) {
    return (arr1[n - mid] + arr1[mid - 1] + arr2[mid - 1] + arr2[n - mid]) / 4;
  } else {
    return (arr1[mid] + arr1[mid - 1] + arr2[mid] + arr2[mid - 1]) / 4;
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the median of two sorted arrays of same size.
