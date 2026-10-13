
function validate(n: number): boolean {
  if (n < 0) {
    return false;
  }
  let digits = n.toString().split('');
  for (let i = 0; i < digits.length; i++) {
    let digit = parseInt(digits[i]);
    let count = (n + '').split(digit.toString()).length - 1;
    if (count > digit) {
      return false;
    }
  }
  return true;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself.
