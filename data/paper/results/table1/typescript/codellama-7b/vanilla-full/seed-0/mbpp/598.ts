function armstrong_number(number: number): boolean {
  const digits = `${number}`.split('');
  const sum = digits.reduce((acc, digit) => acc + parseInt(digit) ** 3, 0);
  return sum === number;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given number is armstrong or not.
