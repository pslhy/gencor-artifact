
function min_Jumps(steps: [number, number], d: number): number {
    if(steps[0] > d) return -1;  // if we can't reach the point

    let jumps = steps[0] - d >= 0 ? 1 : 0; // if we can reach, then add a jump
    d += jumps * steps[1];
    if(d <= 0) return jumps; // return if we can reach the point

    // reduce the steps
    let s = [steps[0]-1, steps[1]-1];
    
    // recursion for the remaining steps
    let remaining = min_Jumps(s.map(x => x > 0 ? x : 0) as [number, number], d);
    
    // return the total number of jumps
    return remaining < 0 ? -1 : jumps + remaining;
}

let steps: [number, number] = [6, 2]; // steps of form (d, 0)
let point: number = 13; // point to reach

console.log(min_Jumps(steps, point));

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane.
