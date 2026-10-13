
function last_Digit_Factorial(n: number): number {
  if(n < 0) {
    return -1;
  }
  let result: number = 1;
  for(let i = n; i > 0; i--) {
    result *= i;
  }
  return result % 10;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the last digit in factorial of a given number.
