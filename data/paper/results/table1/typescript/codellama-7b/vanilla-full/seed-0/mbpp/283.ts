function validate(n: number): boolean {
  const digits = Array.from(String(n), Number);
  const count = digits.reduce((acc, digit) => {
    return { ...acc, [digit]: (acc[digit] || 0) + 1 };
  }, {} as Record<number, number>);
  return Object.values(count).every(c => c <= +String(c));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself.
