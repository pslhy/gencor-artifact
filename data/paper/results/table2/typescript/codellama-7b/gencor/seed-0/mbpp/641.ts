
function is_nonagonal(n: number): number {
  const digits = n.toString().split('');
  const sum = digits.reduce((a: number, b: string) => {
    return a + Number(b);
  });
  return '17'.toString().indexOf(sum.toString()) > -1 ? n : is_nonagonal(n + 1);
}

function nth_nonagonal(n: number): number {
  if (n === 0) {
    return 1;
  }
  return is_nonagonal(1);
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth nonagonal number.
