function min_Jumps(steps: [number, number], d: number): number { 
    // Calculate the relative horizontal distance needed
    let distance = Math.abs(steps[0] - d); 

    // If the point is already reached or cannot be reached, return 0 or -1 respectively
    if (distance === 0) {
        return 0;
    } else if (distance %steps[1] !== 0) {
        return -1;
    }

    // Calculate and return the number of jumps required
    return distance / steps[1];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane.
