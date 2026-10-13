function count_samepair(list1: number[], list2: number[], list3: number[]): number {
   if (list1.length != list2.length || list2.length != list3.length) {
      throw new Error("Cannot count identical items. Arrays must be of equal length.");
   }

   let count = 0;
   for (let i = 0; i < list1.length; i++) {
      if (list1[i] === list2[i] && list2[i] === list3[i]) {
         count++;
      }
   }
   return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count number items that are identical in the same position of three given arrays.
