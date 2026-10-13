function min_Jumps(steps: [number, number], d: number): number {
    const x = steps[0];
    const y = steps[1];
    const totalSteps = Math.pow(x + y, 2) + 2 * Math.pow(y, 2);
    const d_squared = Math.pow(d, 2);
    const numerator = d_squared - (2 * totalSteps);
    const denominator = 4 * y;
    if (denominator === 0) {
        return -1;
    }
    const quotient = numerator / denominator;
    const discriminant = Math.pow(quotient, 2) - 2 * x;
    if (discriminant < 0) {
        return -1;
    }
    const numberOfJumps = Math.trunc(Math.sqrt(discriminant)) % 360;
    return numberOfJumps;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane.
