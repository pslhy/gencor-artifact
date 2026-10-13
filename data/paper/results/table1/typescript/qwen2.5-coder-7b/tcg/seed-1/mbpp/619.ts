function move_num(test_str: string): string { 
  const num_chars = test_str.split('').filter(char => 
    !isNaN(Number(char)) && Number(char) !== 0
  );
  const alpha_chars = test_str.split('').filter(char => 
    isNaN(Number(char)) || Number(char) === 0
  );
  return alpha_chars.join('') + num_chars.join('');
}

// Test
const test_str = "Only 9 people on this earth happened 40 years ago";
const result = move_num(test_str);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to move all the numbers to the end of the given string.