function max_product(arr: number[]): number {
   if (arr.length < 1) {
       return 0;
   }
   let max = 1;
   for (let i = 0; i < arr.length; i++) {
       let product = 1;
       for (let j = i; j >= 0; j--) {
           product *= arr[j];
       }
       max = Math.max(max, product);
   }
   return max;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that array.
