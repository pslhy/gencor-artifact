function max_run_uppercase(test_str: string): number {
  let max_run = 0;
  let curr_run = 0;
  for (let i = 0; i < test_str.length; i++) {
    if (test_str[i] >= 'A' && test_str[i] <= 'Z') {
      curr_run++;
      if (curr_run > max_run) {
        max_run = curr_run;
      }
    } else {
      curr_run = 0;
    }
  }
  return max_run;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find maximum run of uppercase characters in the given string.
