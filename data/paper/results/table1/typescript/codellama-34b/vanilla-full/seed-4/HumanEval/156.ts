function int_to_mini_roman(number: number): string {
   if (number >= 1 && number <= 3999) {
      let result: string = '';
      const thousands = Math.floor(number / 1000);
      number = Number(number.toString().slice(1));
      if (thousands == 1) result += 'M';
      if (thousands == 2) result += 'MM';
      if (thousands == 3) result += 'MMM';
      const hundreds = Math.floor(number / 100);
      number = Number(number.toString().slice(1));
      if (hundreds == 1) result += 'C';
      if (hundreds == 2) result += 'CC';
      if (hundreds == 3) result += 'CCC';
      const tens = Math.floor(number / 10);
      number = Number(number.toString().slice(1));
      if (tens == 1) result += 'X';
      if (tens == 2) result += 'XX';
      if (tens == 3) result += 'XXX';
      const ones = Math.floor(number / 1);
      if (ones == 1) result += 'I';
      if (ones == 2) result += 'II';
      if (ones == 3) result += 'III';
      return result;
   } else {
      return number.toString();
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
