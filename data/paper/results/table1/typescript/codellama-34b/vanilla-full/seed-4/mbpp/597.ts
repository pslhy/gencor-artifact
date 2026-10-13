function find_kth(arr1: number[], arr2: number[], k: number): number {
   if (k < 1 || k > arr1.length + arr2.length) {
      return null;
   }
   var i1 = 0;
   var i2 = 0;
   while (i1 < arr1.length && i2 < arr2.length) {
      if (arr1[i1] < arr2[i2]) {
         i1++;
      } else if (arr1[i1] > arr2[i2]) {
         i2++;
      } else {
         i1++;
         i2++;
      }
      if (i1 + i2 == k) {
         return arr1[i1];
      }
   }
   return null;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find kth element from the given two sorted arrays.
