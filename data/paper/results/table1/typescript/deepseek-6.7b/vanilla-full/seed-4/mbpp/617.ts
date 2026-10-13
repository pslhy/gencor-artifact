function min_Jumps(steps: [number, number], d: number): number {
    let jumps = 0;
    let jumpLength = steps[0];
    let position = 0;

    while (position < d) {
        if (position + jumpLength >= d) {
            return jumps + 1;
        }
        position += jumpLength;
        if (position < d) {
            jumpLength = steps[1];
            jumps++;
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
