function get_median(arr1: number[], arr2: number[], n: number): number {
   if (n == 1)
      return (arr1[0] + arr2[0]) / 2.0;
   if (n == 2)
      return (max(arr1[0], arr2[0]) + min(arr1[1], arr2[1])) / 2.0;
   int i =  n / 2;
   int j = n - i;
   if (arr1[i-1] <= arr2[j] && arr2[j-1] <= arr1[i])
      return (arr1[i-1] + arr2[j]) / 2.0;
   else if (arr1[i-1] <= arr2[j-1] && arr2[j] <= arr1[i])
      return (arr2[j-1] + arr1[i]) / 2.0;
   else if (arr2[j-1] <= arr1[i-1] && arr1[i] <= arr2[j])
      return (arr1[i-1] + arr2[j]) / 2.0;
   else
      return (arr2[j-1] + arr1[i]) / 2.0;
}

function max(a: number, b: number): number {
   return a > b ? a : b;
}

function min(a: number, b: number): number {
   return a < b ? a : b;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the median of two sorted arrays of same size.
