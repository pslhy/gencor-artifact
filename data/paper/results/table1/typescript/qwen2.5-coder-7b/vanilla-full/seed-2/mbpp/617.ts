function min_Jumps(steps: [number, number], d: number): number { 
    let jumps = [0]; 
    for (let step of steps) { 
        let length = jumps.length; 
        for (let i = 0; i < length && jumps[i] + step <= d; ++i) { 
            jumps.push(jumps[i] + step); 
        } 
    } 
    let found = jumps.some(jump => jump === d); 
    return found ? jumps.length : -1; 
} 


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane.
