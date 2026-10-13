function count_bidirectional(test_list: [number, number][]): number {
   let count: number = 0
   for (let i: number = 0; i < test_list.length; i++) {
       for (let j: number = i + 1; j < test_list.length; j++) {
           if (test_list[i][0] + test_list[i][1] === test_list[j][0] + test_list[j][1]) {
               count = count + 1
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
//     Write a function to count bidirectional array pairs.
