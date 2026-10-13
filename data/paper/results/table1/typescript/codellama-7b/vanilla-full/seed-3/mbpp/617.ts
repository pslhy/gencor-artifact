function min_Jumps(steps: [number, number], d: number): number {
  if(steps[1] != 0) {
    throw new Error("Invalid argument: steps should be of form (d, 0)");
  }

  let jumps = 0;
  while(steps[0] > 0) {
    jumps++;
    steps[0]--;
    if(steps[0] < 0) {
      steps[0] += 2*d;
    }
  }

  return jumps;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane.
