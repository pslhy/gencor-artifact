
function is_Diff(n: number): boolean {
  if (n == 11) {
    return true;
  }
  let sum = 0;
  let digit: number;
  while (n > 0) {
    digit = n % 10;
    sum += digit;
    n = (n - digit) / 10;
  }
  if (sum % 11 == 0) {
    return true;
  } else {
    return false;
  }
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find whether a number is divisible by 11.
