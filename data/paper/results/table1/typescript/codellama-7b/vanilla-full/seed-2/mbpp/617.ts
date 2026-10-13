function min_Jumps(steps: [number, number], d: number): number {
    let x = 0;
    let y = 0;
    let jumps = 0;
    let prevX = 0;
    let prevY = 0;

    while (x !== d || y !== 0) {
        let [dx, dy] = steps;

        x = x + dx;
        y = y + dy;
        jumps++;

        if (x === prevX && y === prevY) {
            break;
        }

        prevX = x;
        prevY = y;
    }

    return jumps;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane.
