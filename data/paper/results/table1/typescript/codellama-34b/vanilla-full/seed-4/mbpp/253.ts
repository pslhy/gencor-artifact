function count_integer(list1: (number | string | number)[]): number {
   let integer: number = 0
   for (let i: number = 0; i < list.length; i++) {
      if (typeof list[i] === "number") {
       integer += list[i];
      }
   }
   return integer
} 


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that returns the number of integer elements in a given array.
