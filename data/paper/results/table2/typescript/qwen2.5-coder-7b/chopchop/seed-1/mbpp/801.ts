
function test_three_equal(x: number, y: number, z: number): number { 
    if (x === y && y === z) {
        return 3;
    } else if (x === y || x === z || y === z) {
        return 2;
    } else {
        return 0;
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of equal numbers from three given integers.
