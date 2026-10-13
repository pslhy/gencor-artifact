function max_sub_array_sum_repeated(a: number[], n: number, k: number): number {
   if (n == 1 && k == 1) {
       return a[0];
   }
   let sum = 0;
   let res = 0;
   for (let i = 0; i < k*n; i++) {
       sum += a[i%n];
       if (sum > res) {
           res = sum;
       } else if (sum < 0) {
           sum = 0;
       }
   }
   return res;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the largest sum of a contiguous array in the modified array which is formed by repeating the given array k times.
