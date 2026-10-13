function min_Jumps(steps: [number, number], d: number): number {
    // steps[1] is always 0, ignore it
    if (steps[0] >= d) {
        if((d & steps[0]) == d)
            return 1;
        else
            return 2;
    }
    return 0;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane.
