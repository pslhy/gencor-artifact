function find_solution(a: number, b: number, n: number): [number, number] | undefined {
  if (a === 0 || b === 0) {
    return undefined;
  }

  const x = n / a;
  const y = n / b;

  if (x - y >= 1 && y - x >= 1) {
    return [x, y];
  }

  return undefined;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that returns integers x and y that satisfy ax + by = n as an array, or return undefined if no solution exists.
