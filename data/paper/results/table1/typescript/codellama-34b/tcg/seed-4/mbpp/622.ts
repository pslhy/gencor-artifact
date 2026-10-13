function get_median(arr1: number[], arr2: number[], n: number): number {
   if (n == 1)
      return (arr1[0] + arr2[0]) / 2.0;
   if (n == 2)
      return (arr1[0] + arr2[1]) / 2.0;
  
   let a = arr1[n / 2];
   let b = arr2[n / 2];
  
   if (a < b)
      return get_median(b + arr1[0] + arr2[n - 1] + arr1[n - 1] + a +
      arr2[0] + arr1[1] + arr2[n / 2 - 1] + arr1[n / 2 - 1] +
      arr2[n - 1] + arr1[n - 2] + arr2[n - 2] + arr1[n - 1] + arr2[n - 1] +
      a + arr1[n - 1] + arr2[n - 1]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the median of two sorted arrays of same size.