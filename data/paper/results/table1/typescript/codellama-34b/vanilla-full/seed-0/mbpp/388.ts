function highest_Power_of_2(n: number): number {
   if (n === 1) {
      return 1;
   }
   let result = 1;
   while (result <= n) {
      result *= 2;
   }
   return result / 2;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the highest power of 2 that is less than or equal to n.
