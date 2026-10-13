function max_run_uppercase(test_str: string): number {
  const uppercase_run: number[] = [];
  let max_run: number = 0;

  for (let i = 0; i < test_str.length; i++) {
    if (/[A-Z]/.test(test_str[i])) {
      uppercase_run.push(i);
    } else if (uppercase_run.length > 0) {
      let curr_run = uppercase_run[uppercase_run.length - 1];
      if (i - curr_run > max_run) {
        max_run = i - curr_run;
      }
      uppercase_run = [];
    }
  }

  if (uppercase_run.length > 0) {
    let curr_run = uppercase_run[uppercase_run.length - 1];
    if (test_str.length - curr_run > max_run) {
      max_run = test_str.length - curr_run;
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
