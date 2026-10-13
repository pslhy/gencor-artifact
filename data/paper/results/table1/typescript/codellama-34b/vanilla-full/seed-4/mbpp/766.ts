function pair_wise(l1: number[]): [number, number][] {
   if (l1.length === 0) {
       return [];
   }
   let l2: [number, number][] = [[l1[0], l1[1]]];
   for (let i = 2; i < l1.length; i++) {
       l2.push([l1[i - 1], l1[i]]);
   }
   return l2;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to return an array of all pairs of consecutive items in a given array.
