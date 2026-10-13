function odd_length_sum(arr: number[]): number {
   let sum: number = 0;
   for (let i: number = 0; i < arr.length; i++) {
       for (let j: number = i + 1; j < arr.length; j++) {
           if ((j - i) % 2 != 0) {
               sum += arr[j]
           }
       }
   }
   return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of all odd length subarrays. https://www.geeksforgeeks.org/sum-of-all-odd-length-subarrays/
