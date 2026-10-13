function check_distinct(test_tup: number[]): boolean {
  for (let i = 0; i < test_tup.length - 1; i++) {
      for (let j = i + 1; j < test_tup.length; j++) {
          if (test_tup[i] == test_tup[j]) return false;
      }
  }
  return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if given array contains no duplicates.
