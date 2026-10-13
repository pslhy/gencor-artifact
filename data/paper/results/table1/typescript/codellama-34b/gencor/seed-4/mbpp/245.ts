
function max_sum(arr: number[]): number {
   if (arr.length <= 1) {
       return arr[0];
   }

   let maxSum = 0;
   let maxEndingHere = 0;
   let start = 0;
   let end = 0;
   let isIncreasing = true;

   for (let i = 0; i < arr.length; i++) {
       if (isIncreasing) {
           if (arr[i] > arr[i - 1]) {
               maxEndingHere += arr[i];
           } else {
               isIncreasing = false;
               start = i - 1;
           }
       } else {
           if (arr[i] < arr[i - 1]) {
               maxEndingHere += arr[i];
           } else {
               isIncreasing = true;
               end = i - 1;
           }
       }

       if (maxSum < maxEndingHere) {
           maxSum = maxEndingHere;
       }
   }

   return maxSum;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes an array and finds the maximum sum of a bitonic subsequence for the given array, where a sequence is bitonic if it is first increasing and then decreasing.
