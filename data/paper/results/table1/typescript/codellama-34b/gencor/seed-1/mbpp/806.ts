
function max_run_uppercase(test_str: string): number {
   let max_count = 0;
   let count = 0;
   let prev = '';

   for (let char of test_str) {
       if (char.toUpperCase() == char) {
           if (prev == char.toUpperCase()) {
               count++;
           } else {
               count = 1;
           }
           prev = char.toUpperCase();
       } else {
           max_count = Math.max(max_count, count);
           count = 0;
       }
   }
   return Math.max(max_count, count);
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find maximum run of uppercase characters in the given string.
