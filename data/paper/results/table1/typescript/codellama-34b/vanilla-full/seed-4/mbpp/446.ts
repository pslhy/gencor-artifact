function count_Occurrence(tup: any, lst: any[]): number {
   let counts: Record<any, number> = {};
   for (let i = 0; i < lst.length; i++) {
       if (lst[i] in counts) {
           counts[lst[i]]++;
       } else {
           counts[lst[i]] = 1;
       }
   }
   return counts;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the occurence of all elements of array in an array.
