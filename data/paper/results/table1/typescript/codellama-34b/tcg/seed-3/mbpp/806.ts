function max_run_uppercase(test_str: string): number {
   let max_count = 0;

   while (test_str.length > 0) {
      const sub_str = test_str.substring(0, 1)
      if (!/^[A-Z]+$/.test(sub_str)) {
         break;
      }
      const count = test_str.length;
      if (count > max_count) {
         max_count = count;
      }
      test_str = test_str.substring(1)
   }
   return max_count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find maximum run of uppercase characters in the given string.