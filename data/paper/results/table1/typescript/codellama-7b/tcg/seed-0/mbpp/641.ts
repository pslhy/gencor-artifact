function is_nonagonal(n: number): number {
  const digits = n.toString().split('');
  const sum = digits.reduce((a: number, b: string) => {
    return a + +b;
  }, 0);
  return sum;
}

function nth_nonagonal(n: number): number {
  let i = 1;
  do {
    i++;
  } while (is_nonagonal(i) !== n);
  return i;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth nonagonal number.