function last_Digit_Factorial(n: number): number {
  const digits = Array.from(n.toString());
  let lastDigit = digits.pop()!;
  if (n === 1 || n === 0) {
    return 1;
  }
  return parseInt(lastDigit);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the last digit in factorial of a given number.