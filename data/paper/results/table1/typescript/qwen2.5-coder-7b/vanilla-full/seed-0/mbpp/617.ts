function min_Jumps(steps: [number, number], d: number): number { 
    let x = steps[0]; 
    let y = steps[1]; 
  
    let jumpsX = Math.abs(d - x); // Jumps across x-axis 
    let jumpsY = Math.abs(y);     // Jumps across y-axis 
  
    return Math.max(jumpsX, jumpsY); 
} 


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane.
