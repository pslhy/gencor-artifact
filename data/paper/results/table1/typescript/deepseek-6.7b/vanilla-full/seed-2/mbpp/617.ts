function min_Jumps(steps: [number, number], d: number): number {
    let sum = steps[0] + steps[1];
    let diff = d - sum;
    if (diff < 0) {
        return -1;
    } else if (diff === 0) {
        return 0;
    } else {
        return diff % steps[0] === 0 ? diff / steps[0] : Math.floor(diff / steps[0]) + 1;
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane.
