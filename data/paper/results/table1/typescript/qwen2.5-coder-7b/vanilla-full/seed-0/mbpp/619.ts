function move_num(test_str: string): string { 
  return test_str.split('').sort((a, b) => {
    if (isNaN(Number(a)) && isNaN(Number(b))) {
      return 0;
    } else if (isNaN(Number(a))) {
      return 1;
    } else if (isNaN(Number(b))) {
      return -1;
    } else {
      return 0;
    }
  }).join('');
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to move all the numbers to the end of the given string.
