function min_Jumps(steps: [number, number], d: number): number {
   if (d == 0)
      return 0
    let res = Number.MAX_VALUE
    while (d < steps.length) {
       if (d == 0)
           return Number.MAX_VALUE
       res = Math.min(res, min_Jumps(steps, d) + steps.length + 1) 
       steps = [d-steps[0], d-steps[1]] 
    }
return res
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane.
