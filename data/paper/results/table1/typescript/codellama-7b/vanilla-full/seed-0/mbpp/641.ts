function is_nonagonal(n: number): number {
  const digits = n.toString().split('');
  const sum = digits.reduce((a, b) => a + parseInt(b), 0);

  return sum === 2 * n - 1;
}

function nth_nonagonal(n: number): number {
  let i = 1;

  while (true) {
    if (is_nonagonal(i)) {
      if (i === n) {
        return i;
      }

      i++;
    }
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth nonagonal number.
