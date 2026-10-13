function is_undulating(n: number): boolean {
   if (n == 1 || n == 2 || n == 3)
      return true;
   while (n != 1) {
      if (n % 2 == 0) {
         n /= 2;
      } else {
         n = 3 * n + 1;
      }
      if (n <= 2)
         break;
   }
   return n == 1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given number is undulating or not.
