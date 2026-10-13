function max_run_uppercase(test_str: string): number {
   let max_count = 0;
   let count = 0;
   let prev = '';

   for (let char of test_str) {
       if (char.isWellFormed.toLocaleString().toUpperCase() == char) {
           count++;
           if (count > max_count) {
               max_count = count;
           }
       } else {
           count = 0;
       }
   }
   return max_count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find maximum run of uppercase characters in the given string.