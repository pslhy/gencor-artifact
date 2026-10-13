function max_run_uppercase(test_str: string): number {
   let currentRun = 0;
   let maxRun = 0;
   for (let i = 0; i < test_str.length; i++) {
       if (test_str.charAt(i).toUpperCase() === test_str.charAt(i)) {
           currentRun++;
           if (currentRun > maxRun) {
               maxRun = currentRun;
           }
       } else {
           currentRun = 0;
       }
   }
   return maxRun;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find maximum run of uppercase characters in the given string.