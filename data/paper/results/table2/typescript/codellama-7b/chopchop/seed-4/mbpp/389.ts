
function find_lucas(n: number): number {
  if (n == 1 || n == 2) {
    return 2;
  }

  let a = 2;
  let b = 2;
  let c = 3;

  for (let i = 3; i <= n; i++) {
    let temp = a + b + c;
    a = b;
    b = c;
    c = temp;
  }

  return c;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n'th lucas number.
