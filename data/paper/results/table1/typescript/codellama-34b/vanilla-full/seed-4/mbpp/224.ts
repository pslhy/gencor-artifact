function count_Set_Bits(n: number): number {
   let count: number = 0
   for (let i: number = 0; i < 32; i++) {
      if (n & (1 << i)) {
         count++
      }
   }
   return count
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of set bits (binary digits with value 1) in a given number.
