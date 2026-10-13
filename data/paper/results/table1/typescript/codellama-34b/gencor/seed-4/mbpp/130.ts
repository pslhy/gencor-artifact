
function max_occurrences(nums: number[]): number {
   let counts: Record<number, number> | null;
   counts = nums.reduce((a: Record<number, number>, c: number) => {
       if (!a[c]) {
           a[c] = 1;
       } else {
           a[c]++;
       }
       return a;
   }, {});

   return Object.entries(counts)
       .reduce((a: [number, number], c: [number, number]) => {
           if (c[1] > a[1]) {
               return c[0]
           ++
       as
          

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the item with maximum frequency in a given array.
