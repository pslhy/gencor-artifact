function min_Jumps(steps: [number, number], d: number): number {
    let jumps: number = 0;

    while (steps[0] != d || steps[1] != 0) {
        if (steps[1] > 0) {
            steps[1]--;
        } else {
            steps[0]++;
            steps[1]++;
        }
        jumps++;
    }

    return jumps;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane.
