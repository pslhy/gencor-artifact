function min_Jumps(steps: [number, number], d: number): number {
  const x = steps[0];
  const y = steps[1];
  if (x === d && y === 0) {
    return 0;
  }
  // If the point is not of form (d, 0), then the minimum number of jumps required is infinite
  if (x !== d || y !== 0) {
    return Infinity;
  }
  // Find the minimum of the absolute values of x and y
  return Math.min(Math.abs(x), Math.abs(y));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane.
