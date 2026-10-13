function find_solution(a: number, b: number, n: number): [number, number] | undefined {
  if (b === 0) {
    if (n % a === 0) {
      return [n / a, 0];
    } else {
      return undefined;
    }
  }
  let x = 0;
  let y = n / b;
  while (x * a <= n) {
    if (x * a + y * b === n) {
      return [x, y];
    }
    x++;
    y--;
  }
  return undefined;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that returns integers x and y that satisfy ax + by = n as an array, or return undefined if no solution exists.
