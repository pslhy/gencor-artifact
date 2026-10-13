function validate(n: number): boolean {
  const freq = {};
  while (n > 0) {
    const digit = n % 10;
    freq[digit] = (freq[digit] || 0) + 1;
    if (freq[digit] > digit) return false;
    n = Math.floor(n / 10);
  }
  return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself.
