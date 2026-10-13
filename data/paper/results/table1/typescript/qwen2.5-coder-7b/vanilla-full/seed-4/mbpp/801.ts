function test_three_equal(x: number, y: number, z: number): number { 
    let result = 0; 
    if (x === y) { 
        result++; 
    } 
    if (y === z) { 
        result++; 
    } 
    if (z === x) { 
        result++; 
    } 
    return result; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of equal numbers from three given integers.
