function min_Jumps(steps: [number, number], d: number): number {
    let x = 0, y = 0, count = 0;
    for (let i = 0; i < steps.length; i++) {
        if (x + steps[i] > d) {
            y += d - x;
            x = d;
            count++;
        } else if (y + steps[i] < 0) {
            x += Math.abs(y);
            y = -steps[i]
            count++;
        }
    }
    if (x !== 0 && y !== 0) {
        count++;
    }
    return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane.
