function int_to_mini_roman(number: number): string {
  let result = '';
  while (number > 0) {
    const digit = number % 10;
    const romanDigit = getRomanDigit(digit);
    result = romanDigit + result;
    number = Math.floor(number / 10);
  }
  return result;
}

function getRomanDigit(digit: number): string {
  switch (digit) {
    case 1:
      return 'i';
    case 4:
      return 'iv';
    case 5:
      return 'v';
    case 9:
      return 'ix';
    default:
      return '';
  }
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
