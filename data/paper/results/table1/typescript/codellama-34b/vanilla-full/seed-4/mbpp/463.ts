function max_subarray_product(arr: number[]): number {
   if (arr.length === 0) {
       return 0;
   }
   let max_product = arr[0];
   let min_product = arr[0];
   let max_so_far = arr[0];
   let min_so_far = arr[0];
   for (let i = 1; i < arr.length; i++) {
       let num = arr[i];
       max_product = Math.max(num, max_so_far * num, min_so_far * num);
       min_product = Math.min(num, max_so_far * num, min_so_far * num);
       max_so_far = Math.max(max_so_far, max_product);
       min_so_far = Math.min(min_so_far, min_product);
   }
   return max_so_far;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum product subarray of the given array.
