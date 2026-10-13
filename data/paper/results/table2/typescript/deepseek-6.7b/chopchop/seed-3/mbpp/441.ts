
function surfacearea_cube(l: number): number {
    return 6 * Math.pow(l, 2);
}

// Test case 
let length = 5;
let area = surfacearea_cube(length);

// Expected output: 150


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the surface area of a cube of a given size.
