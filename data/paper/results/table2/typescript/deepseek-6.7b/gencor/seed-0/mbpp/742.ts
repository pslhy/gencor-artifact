
function area_tetrahedron(side: number): number {
    if(side <= 0) {
        throw new Error('Side length must be greater than zero');
    }
    return Math.pow(side, 3) * Math.sqrt(3) / 12;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to caluclate the area of a tetrahedron.
