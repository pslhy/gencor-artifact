function int_to_mini_roman(number: number): string {
  if(number < 1 || number > 1000) {
    throw new Error('Invalid input');
  }

  const romanNumerals = ['I', 'V', 'X', 'L', 'C', 'D', 'M'];
  const result = [];

  while(number > 0) {
    const quotient = number / 10;
    const remainder = number % 10;
    number = quotient;
    result.push(romanNumerals[remainder].toLowerCase());
  }

  return result.join('');
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a positive integer, obtain its roman numeral equivalent as a string,
//     and return it in lowercase.
//     Restrictions: 1 <= num <= 1000
//     Examples:
//     >>> int_to_mini_roman(19)
//     "xix"
//     >>> int_to_mini_roman(152)
//     "clii"
//     >>> int_to_mini_roman(426)
//     "cdxxvi"