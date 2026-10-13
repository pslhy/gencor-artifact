function is_undulating(n: number): boolean {
  if (n < 1) {
    return false;
  }

  let digits = n.toString().split("").map((digit) => Number(digit));
  let is_descending = true;
  for (let i = 0; i < digits.length - 1; i++) {
    if (digits[i] > digits[i + 1]) {
      is_descending = false;
      break;
    }
  }

  if (is_descending) {
    return false;
  }

  is_descending = true;
  for (let i = 0; i < digits.length - 1; i++) {
    if (digits[i] < digits[i + 1]) {
      is_descending = false;
      break;
    }
  }

  return is_descending;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given number is undulating or not.
