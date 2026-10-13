function max_run_uppercase(test_str: string): number {
   let currentRun = 0
   let maxRun = 0
   for (let i = 0; i < test_str.length; i++) {
       if (test_str[i].charCodeAt(0) >= 65 && test_str[i].charCodeAt(0) <= 90) {
           currentRun++
       } else {
           maxRun = Math.max(maxRun, currentRun)
           currentRun = 0
       }
   }
   return Math.max(maxRun, currentRun)
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find maximum run of uppercase characters in the given string.
