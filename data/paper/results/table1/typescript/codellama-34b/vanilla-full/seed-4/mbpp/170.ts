function sum_range_list(list1: number[], m: number, n: number): number {
   if (list1.length === 0) {
       return 0;
   }
  let start = m, end = n;
  if (m < 0 || n > list1.length - 1 || m > n) {
      start = 0, 
      end = list1.length - 1;
   }
   let sum = 0;
   for (let i = start; i <= end; i++) {
       sum += list1[i];
   }
   return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the sum of numbers in an array within a range specified by two indices.
