function min_Jumps(steps: [number, number], d: number): number {
    let x = 0;
    let y = 0;
    let jumps = 0;

    while (x !== d || y !== 0) {
        if (Math.abs(x - d) < Math.abs(steps[0])) {
            x += steps[0];
        } else {
            x -= steps[0];
        }
        y += steps[1];
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
