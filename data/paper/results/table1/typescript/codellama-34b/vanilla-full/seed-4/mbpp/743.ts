function rotate_right(list: number[], m: number): number[] {
   if (list.length <= 1) {
       return list;
   }
   const n = list.length - 1;
   const t = n - m;
   const arr = list.slice(t + 1);
   for (let i = t; i >= 0; i--) {
       arr[n - i] = list[i];
   }
   for (let i = 0; i < n - t; i++) {
       arr[i] = list[i + t + 1];
   }
   return arr;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to rotate a given array by specified number of items to the right direction. https://www.geeksforgeeks.org/tsthon-program-right-rotate-array-n/
