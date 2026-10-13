function min_Jumps(steps: [number, number], d: number): number {
    let dist = steps[0]*steps[0] + steps[1]*steps[1];
    d *= d;
    
    if(d > dist) return -1; // This means we cannot reach the destination within given steps

    for(let i = 0; i <= d; i+=steps[0]*steps[0]) {
        if((d-i) % steps[1] === 0) return (d-i)/steps[1] + (i/steps[0]);
    }

    return -1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane.
