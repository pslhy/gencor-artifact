function pack_consecutive_duplicates(list1: any[]): any[][] {
   const result: any[][] = [];
   let i = 0;
   while (i < list1.length) {
       const current = list1[i];
       let j = i + 1;
       while (j < list1.length && list1[j] === current) {
           j++;
       }
       result.push(list1.slice(i, j));
       i = j;
   }
   return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to pack consecutive duplicates of a given array elements into subarrays.
