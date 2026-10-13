function max_run_uppercase(test_str: string): number {
   let max_count = 0;

   while (test_str.length > 0) {
      const sub_str = test_str.substr(0, test_str.indexOf("A"));
      const count_upper = sub_str.match(/[A-Z]/g).length;

      if (count_upper > max_count) {
         max_count = count_upper;
      }

      test_str = test_str.substr(sub_str.length);
   }

   return max_count;


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find maximum run of uppercase characters in the given string.
