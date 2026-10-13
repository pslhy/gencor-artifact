
function validate(n: number): boolean {
  const freq = new Map();
  while (n > 0) {
    const digit = n % 10;
    if (freq.get(digit) === undefined) {
      freq.set(digit, 1);
    } else {
      freq.set(digit, freq.get(digit) + 1);
    }
    n = Math.floor(n / 10);
  }
  for (const [digit, count] of freq) {
    if (count > digit) return false;
  }
  return true;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself.
