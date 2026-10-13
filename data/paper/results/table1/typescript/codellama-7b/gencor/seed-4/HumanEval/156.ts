
function int_to_mini_roman(number: number): string {
  if (number < 1 || number > 1000) {
    throw new Error("Number out of range");
  }

  const digits = number.toString().split("").map( Number );
  const romanNumeralDigits = ["M", "CM", "D", "CD","C","XC", "L", "XL", "X","IX","V", "IV", "I"];
  const romanNumeral = "";
  for (let i = 0; i < digits.length; i += 1) {
    const currentRomanNumeralDigits = romanNumeralDigits[i];
    const currentDigit = digits[i];
    for (let j = 0; j < currentDigit; j += 1) {
      romanNumeral.concat(currentRomanNumeralDigits);
    }
  }
  return romanNumeral.toLowerCase();
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
