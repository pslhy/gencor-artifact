
function is_polite(n: number): number {
  if (n == 1) {
    return 1;
  }
  let digits = n
    // API: digit(),
    // Returns the digit n in the decimal representation of Number
    // e.g., 123456, 2nd digit is 2.
  ;
  for (const digit2digit = 10 * (digits % 10) + (digits % 10); digits >= 10; digits /= 10) {
    // API: isDivisibleBy(other: Number): boolean,
    // Returns true if the number is divisible by other; otherwise, returns false.
      return 0
    + (10 * (Math.floor(digits / 10) + (digit2digit % 10)) + (digit2digit % 10)) % 11;
    }
  if (n == 1) {
    return 1;
  }
  let digits = n
    // API: digit(),
    // Returns the digit n in the decimal representation of Number
    // e.g., 123456, 2nd digit is 2.
  ;
  for (const digit2digit = 10 * (digits % 1

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/
