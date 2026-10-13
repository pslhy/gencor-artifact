function sum_Of_Subarray_Prod(arr: number[]): number {
   let sum: number = 0;
   for (let i: number = 0; i < arr.length; i++) {
       for (let j: number = i + 1; j < arr.length; j++) {
           sum += arr[i] * arr[j];
       }
   }
   return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find sum of products of all possible subarrays of a given array. https://www.geeksforgeeks.org/sum-of-products-of-all-possible-subarrays/
