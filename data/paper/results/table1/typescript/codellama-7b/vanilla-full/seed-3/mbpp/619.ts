function move_num(test_str: string): string {
  let num_match = /\d+/
  while (num_match.test(test_str)) {
    test_str = test_str.replace(num_match, '');
    num_match = /\d+/;
  }
  return test_str;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to move all the numbers to the end of the given string.
