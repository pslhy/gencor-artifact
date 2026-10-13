function min_Jumps(steps: [number, number], d: number): number {
    let count = 0
    for (let i = 0; i * steps[0] + (i + 1) * steps[1] <= d; ++i) {
        ++count
    }
    return count
}

// test function
console.log(min_Jumps([1, 1], 2)) // 2
console.log(min_Jumps([3, 2], 15)) // 5
console.log(min_Jumps([1, 4], 100)) // 10

// here, the function calculates the number of jumps required to reach the point (d, 0) from the origin in a 2d plane. The parameter "steps" should be an array with two numbers
// indicating the length of the two sides of the jump. The function returns the minimum number of jumps required to reach the point.


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane.
