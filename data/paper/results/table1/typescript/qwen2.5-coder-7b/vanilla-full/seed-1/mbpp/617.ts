function min_Jumps(steps: [number, number], d: number): number { 
    let x = Math.abs(steps[0]); 
    let y = Math.abs(steps[1]); 
    if (y % d !== 0) return -1; 
    let jumps = Math.floor(y / d); 
    if (x <= 2 * jumps && Math.abs(x - jumps) % 2 === 0) return jumps; 
    jumps++; 
    if (Math.abs(x - jumps) % 2 === 0) return jumps; 
    return -1; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane.
