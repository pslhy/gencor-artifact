function is_polite(n: number): number {
  if (n == 1) {
    return 1;
  }
  let digits = n.toString().split("");
  let count = 0;
  for (let digit of digits) {
    if (digit == "0" || digit == "2" || digit == "4" || digit == "5" || digit == "7" || digit == "9") {
      count++;
    }
  }
  if (count == digits.length) {
    return 1;
  } else {
    return 0;
  }
}

function nth_polite_number(n: number): number {
  for (let i = 1; i <= n; i++) {
    if (is_polite(i)) {
      return i;
    }
  }
  return -1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/
