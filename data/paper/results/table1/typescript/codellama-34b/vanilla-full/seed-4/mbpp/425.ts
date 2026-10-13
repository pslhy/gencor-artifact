function count_element_in_list(list1: any[][], x: any): number {
   let count: number = 0
   for (let i: number = 0; i < list1.length; i++) {
       for (let j: number = 0; j < list1[i].length; j++) {
           if (list1[i][j] === x) {
               count++
           }
       }
   }
   return count
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count the number of subarrays containing a particular element.
