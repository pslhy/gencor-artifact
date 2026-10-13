function get_median(arr1: number[], arr2: number[], n: number): number {
  if(n % 2 === 0) {
    return (arr1[n/2-1] + arr2[n/2]) / 2;
  }
  else {
    return arr1[n/2];
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the median of two sorted arrays of same size.
