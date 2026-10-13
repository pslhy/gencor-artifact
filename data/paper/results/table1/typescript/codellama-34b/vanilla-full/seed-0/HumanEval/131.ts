function digits(n: number): number {
  const digits = String(n).split('');
  let product = 1;
  for (const digit of digits) {
    if (digit % 2 === 1) {
      product *= parseInt(digit);
    }
  }
  return product;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a positive integer n, return the product of the odd digits.
//     Return 0 if all digits are even.
//     For example:
//     >>> digits(1)
//     1
//     >>> digits(4)
//     0
//     >>> digits(235)
//     15
