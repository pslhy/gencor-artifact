
function int_to_mini_roman(number: number): string {
  const romanNumeralMap: { [key: number]: string } 
  																																																																															 	 																																																																																																																																							 	 																																																																				 	 																																																																											 																																																																								 																																																																									 	 																																																																																		 																																																																															 																																																																																 																																																																																			 	 																																																																																																						 																																																																																										 																																																																																								 	 																																																																																																																	 																																																																																																									`}

function buildRomanNumeral(
  number: number,
  romanNumeralMap: { [key: number]: string }
): string {
  const { 1, 5, 10, 50, 100, 500, 1000 } = romanNumeralMap;
  let numeral = "";
  while (number > 0) {
    if (number >= 1000) {
      numeral += 1000;
      number -= 1000;
    } else if (number >= 500) {
      numeral += 500;
      number -= 500;
    } else if (number >= 100) {
      numeral += 100;
      number -= 100;
    } else if (number >= 50) {
      numeral += 50;
      number -= 50;
    } else if (number >= 10) {
      numeral += 10;
      number -= 10;
    } else if (number >= 5) {
      numeral += 5;
      number -= 5;
    } else if (number >= 1) {
      numeral += 1;
      number -= 1;
    }
  }
  return numeral;
}

function intToMiniRoman(number: number): string {
  if (number < 1 || number > 1000) {
    throw new Error("Number must be between 1 and 1000 inclusive");
  }
  const romanNumeralMap = {
    1: "i",
    5: "v",
    10: "x",
    50: "l",
    100: "c",
    500: "d",
    1000: "m",
  };
  return buildRomanNumeral(number, romanNumeralMap);
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
