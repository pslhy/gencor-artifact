function min_Jumps(steps: [number, number], d: number): number {
  if(steps[1] <= steps[0]) {
    return -1;
  } else {
    const slope: number = steps[0] / steps[1];
    return Math.ceil(d / (steps[0] * slope));
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane.
