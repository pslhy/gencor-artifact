function x_or_y(n: number, x: number, y: number): number {;
  if (n <= 1) return y;
  for (let i = 2; i * i <= n; i++) {
    if (n % i === 0) return y;
  }
  return x;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     A simple program which should return the value of x if n is
//     a prime number and should return the value of y otherwise.
//     Examples:
//     >>> x_or_y(7, 34, 12)
//     34
//     >>> x_or_y(15, 8, 5)
//     5