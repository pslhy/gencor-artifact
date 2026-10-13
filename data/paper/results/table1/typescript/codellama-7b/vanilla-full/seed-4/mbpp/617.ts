function min_Jumps(steps: [number, number], d: number): number {
  if (steps[1] === 0) {
    return Infinity;
  }
  if (steps[0] === d) {
    return 0;
  }
  let jumps = Infinity;
  for (let i = 1; i <= d; i++) {
    if (steps[0] - i >= 0) {
      jumps = Math.min(jumps, 1 + min_Jumps([steps[0] - i, steps[1]], d));
    }
  }
  return jumps;
}

console.log(min_Jumps([3, 2], 4));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane.
