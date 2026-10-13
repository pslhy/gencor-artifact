function starts_one_ends(n: number): number {
  if (n < 1) {
    return 0;
  }

  let count = 0;
  for (let i = 10; i <= 999_999_999; i *= 10) {
    let num = i + n - 1;
    if (String(num).startsWith("1") || String(num).endsWith("1")) {
      count++;
    }
  }
  return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a positive integer n, return the count of the numbers of n-digit
//     positive integers that start or end with 1.
